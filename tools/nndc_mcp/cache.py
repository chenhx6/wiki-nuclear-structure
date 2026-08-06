"""Small, project-local HTTP response cache for the NNDC connector."""

from __future__ import annotations

import hashlib
import json
import os
import tempfile
from dataclasses import dataclass
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


def utc_now() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")


@dataclass(frozen=True)
class CacheRecord:
    key: str
    url: str
    status: int
    content_type: str | None
    body: str
    fetched_at_utc: str


class CacheStore:
    """JSON response cache constrained to one directory under this package."""

    def __init__(self, root: Path | None = None) -> None:
        package_root = Path(__file__).resolve().parent
        self.root = (root or package_root / ".cache").resolve()
        workspace_root = package_root.parent.parent
        if self.root != package_root and workspace_root not in self.root.parents:
            raise ValueError("NNDC cache must remain inside the Wiki project")
        self.root.mkdir(parents=True, exist_ok=True)

    @staticmethod
    def key_for(url: str, method: str = "GET", data: dict[str, Any] | None = None) -> str:
        payload = json.dumps({"method": method.upper(), "url": url, "data": data or {}}, sort_keys=True)
        return hashlib.sha256(payload.encode("utf-8")).hexdigest()

    def _path(self, key: str) -> Path:
        if len(key) != 64 or any(ch not in "0123456789abcdef" for ch in key):
            raise ValueError("invalid cache key")
        return self.root / f"{key}.json"

    def read(self, key: str) -> CacheRecord | None:
        path = self._path(key)
        try:
            raw = json.loads(path.read_text(encoding="utf-8"))
            return CacheRecord(
                key=key,
                url=str(raw["url"]),
                status=int(raw["status"]),
                content_type=raw.get("content_type"),
                body=str(raw["body"]),
                fetched_at_utc=str(raw["fetched_at_utc"]),
            )
        except (FileNotFoundError, OSError, ValueError, KeyError, TypeError, json.JSONDecodeError):
            return None

    def write(self, key: str, *, url: str, status: int, content_type: str | None, body: str) -> CacheRecord:
        record = CacheRecord(key, url, status, content_type, body, utc_now())
        path = self._path(key)
        payload = json.dumps(record.__dict__, ensure_ascii=False, indent=2)
        fd, temp_name = tempfile.mkstemp(prefix=f".{key}.", suffix=".tmp", dir=self.root)
        try:
            with os.fdopen(fd, "w", encoding="utf-8", newline="\n") as handle:
                handle.write(payload)
                handle.flush()
                os.fsync(handle.fileno())
            os.replace(temp_name, path)
        finally:
            try:
                os.unlink(temp_name)
            except FileNotFoundError:
                pass
        return record
