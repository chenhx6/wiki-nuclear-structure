"""Read-only HTTP client with NNDC allowlisting, retries, and stale-cache fallback."""

from __future__ import annotations

import time
from dataclasses import dataclass, field
from datetime import datetime, timezone
from typing import Any, Callable
from urllib.parse import urlparse

import httpx

try:
    from .cache import CacheRecord, CacheStore
except ImportError:  # pragma: no cover - direct script fallback
    from cache import CacheRecord, CacheStore


NNDC_ORIGIN = "https://www.nndc.bnl.gov"
NNDC_HOSTS = frozenset({"www.nndc.bnl.gov"})
USER_AGENT = "wiki-nndc-mcp/0.1 (local read-only research connector)"
CONNECT_TIMEOUT_SEC = 15.0
READ_TIMEOUT_SEC = 60.0
MAX_RETRIES = 3
BACKOFF_SEC = (1.0, 2.0, 4.0)


class NndcError(RuntimeError):
    """Base error for safe, read-only NNDC access."""


class NndcSecurityError(NndcError):
    """Raised when a URL is outside the official NNDC allowlist."""


@dataclass
class FetchResult:
    text: str
    url: str
    status: int
    content_type: str | None
    fetched_at_utc: str
    from_cache: bool
    stale: bool
    cache_key: str
    attempts: int = 0
    warnings: list[str] = field(default_factory=list)


def _now() -> datetime:
    return datetime.now(timezone.utc)


def _parse_timestamp(value: str) -> datetime:
    return datetime.fromisoformat(value.replace("Z", "+00:00"))


class NndcHttpClient:
    """Constrained HTTP client. It never accepts or follows non-NNDC URLs."""

    def __init__(
        self,
        cache: CacheStore | None = None,
        *,
        max_retries: int = MAX_RETRIES,
        sleep: Callable[[float], None] = time.sleep,
        transport: httpx.BaseTransport | None = None,
    ) -> None:
        self.cache = cache or CacheStore()
        self.max_retries = max(0, min(int(max_retries), MAX_RETRIES))
        self.sleep = sleep
        timeout = httpx.Timeout(READ_TIMEOUT_SEC, connect=CONNECT_TIMEOUT_SEC)
        self._client = httpx.Client(
            timeout=timeout,
            follow_redirects=False,
            trust_env=True,
            headers={"User-Agent": USER_AGENT, "Accept": "text/html, text/plain;q=0.9, */*;q=0.1"},
            transport=transport,
        )

    def close(self) -> None:
        self._client.close()

    def __enter__(self) -> "NndcHttpClient":
        return self

    def __exit__(self, *_: object) -> None:
        self.close()

    @staticmethod
    def validate_url(url: str) -> str:
        parsed = urlparse(url)
        if parsed.scheme != "https" or parsed.hostname not in NNDC_HOSTS:
            raise NndcSecurityError(f"blocked non-NNDC URL: {url}")
        if parsed.username or parsed.password or parsed.port not in (None, 443):
            raise NndcSecurityError("NNDC URL may not include credentials or a non-HTTPS port")
        return url

    @classmethod
    def build_url(cls, path: str, params: dict[str, Any] | None = None) -> str:
        if not path.startswith("/"):
            raise NndcSecurityError("NNDC paths must be absolute paths")
        url = str(httpx.URL(NNDC_ORIGIN + path, params=params or {}))
        return cls.validate_url(url)

    def request(
        self,
        method: str,
        url: str,
        *,
        data: dict[str, Any] | None = None,
        cache_ttl_sec: int,
        cache_key: str | None = None,
    ) -> FetchResult:
        self.validate_url(url)
        method = method.upper()
        key = cache_key or self.cache.key_for(url, method, data)
        cached = self.cache.read(key)
        warnings: list[str] = []
        if cached is not None and self._is_fresh(cached, cache_ttl_sec):
            return self._from_cache(cached, key, stale=False, warnings=warnings)

        last_error: str | None = None
        attempts = 0
        for retry_index in range(self.max_retries + 1):
            attempts += 1
            try:
                response = self._client.request(method, url, data=data)
                if response.status_code == 200:
                    content_type = response.headers.get("content-type")
                    try:
                        record = self.cache.write(
                            key,
                            url=url,
                            status=response.status_code,
                            content_type=content_type,
                            body=response.content.decode("utf-8", errors="replace"),
                        )
                        return FetchResult(
                            text=record.body,
                            url=url,
                            status=record.status,
                            content_type=record.content_type,
                            fetched_at_utc=record.fetched_at_utc,
                            from_cache=False,
                            stale=False,
                            cache_key=key,
                            attempts=attempts,
                            warnings=warnings,
                        )
                    except OSError as exc:
                        warnings.append(f"cache write failed: {exc}")
                        return FetchResult(
                            text=response.content.decode("utf-8", errors="replace"),
                            url=url,
                            status=response.status_code,
                            content_type=content_type,
                            fetched_at_utc=_now().isoformat().replace("+00:00", "Z"),
                            from_cache=False,
                            stale=False,
                            cache_key=key,
                            attempts=attempts,
                            warnings=warnings,
                        )
                last_error = f"HTTP {response.status_code} from NNDC"
                if 300 <= response.status_code < 400:
                    last_error += "; redirects are disabled by the strict NNDC allowlist"
                if response.status_code not in (408, 425, 429) and response.status_code < 500:
                    break
            except httpx.HTTPError as exc:
                last_error = f"{type(exc).__name__}: {exc}"
            if retry_index < self.max_retries:
                self.sleep(BACKOFF_SEC[min(retry_index, len(BACKOFF_SEC) - 1)])

        if cached is not None:
            warnings.append(f"network unavailable; returned stale cache: {last_error or 'unknown error'}")
            return self._from_cache(cached, key, stale=True, warnings=warnings, attempts=attempts)
        raise NndcError(f"NNDC request failed after {attempts} attempt(s): {last_error or 'unknown error'}")

    @staticmethod
    def _is_fresh(record: CacheRecord, ttl_sec: int) -> bool:
        try:
            return (_now() - _parse_timestamp(record.fetched_at_utc)).total_seconds() <= ttl_sec
        except ValueError:
            return False

    @staticmethod
    def _from_cache(
        record: CacheRecord,
        key: str,
        *,
        stale: bool,
        warnings: list[str],
        attempts: int = 0,
    ) -> FetchResult:
        return FetchResult(
            text=record.body,
            url=record.url,
            status=record.status,
            content_type=record.content_type,
            fetched_at_utc=record.fetched_at_utc,
            from_cache=True,
            stale=stale,
            cache_key=key,
            attempts=attempts,
            warnings=warnings,
        )
