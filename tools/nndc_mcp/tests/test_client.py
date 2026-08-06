from __future__ import annotations

from pathlib import Path

import httpx
import pytest

from cache import CacheStore
from client import NndcError, NndcHttpClient, NndcSecurityError


def test_cache_path_outside_project_is_rejected() -> None:
    outside_root = Path(Path.cwd().anchor) / "nndc-mcp-test-cache"
    with pytest.raises(ValueError, match="inside the Wiki project"):
        CacheStore(outside_root)


def test_non_whitelist_url_is_blocked(tmp_path) -> None:
    client = NndcHttpClient(CacheStore(tmp_path / "cache"), sleep=lambda _: None)
    with pytest.raises(NndcSecurityError):
        client.request("GET", "https://example.com/", cache_ttl_sec=60)
    client.close()


def test_redirects_are_disabled_before_allowlist_can_be_bypassed(tmp_path) -> None:
    def redirect(request: httpx.Request) -> httpx.Response:
        return httpx.Response(
            302,
            headers={"location": "https://example.com/"},
            request=request,
        )

    cache = CacheStore(tmp_path / "cache")
    with NndcHttpClient(cache, transport=httpx.MockTransport(redirect), sleep=lambda _: None) as client:
        url = client.build_url("/nudat3/")
        with pytest.raises(NndcError, match="redirects are disabled"):
            client.request("GET", url, cache_ttl_sec=60)


def test_second_request_uses_cache(tmp_path) -> None:
    calls = []

    def handler(request: httpx.Request) -> httpx.Response:
        calls.append(request.url)
        return httpx.Response(200, text="official", headers={"content-type": "text/plain"}, request=request)

    transport = httpx.MockTransport(handler)
    cache = CacheStore(tmp_path / "cache")
    with NndcHttpClient(cache, transport=transport, sleep=lambda _: None) as client:
        url = client.build_url("/nudat3/")
        first = client.request("GET", url, cache_ttl_sec=3600)
        second = client.request("GET", url, cache_ttl_sec=3600)
    assert first.from_cache is False
    assert second.from_cache is True
    assert calls == [httpx.URL(url)]


def test_stale_cache_is_returned_after_network_failure(tmp_path) -> None:
    def ok(request: httpx.Request) -> httpx.Response:
        return httpx.Response(200, text="cached", request=request)

    cache = CacheStore(tmp_path / "cache")
    with NndcHttpClient(cache, transport=httpx.MockTransport(ok), sleep=lambda _: None) as client:
        url = client.build_url("/nudat3/")
        client.request("GET", url, cache_ttl_sec=3600)

    def fail(request: httpx.Request) -> httpx.Response:
        raise httpx.ConnectError("simulated offline", request=request)

    with NndcHttpClient(cache, transport=httpx.MockTransport(fail), sleep=lambda _: None, max_retries=3) as client:
        stale = client.request("GET", url, cache_ttl_sec=0)
    assert stale.from_cache is True
    assert stale.stale is True
    assert "stale cache" in " ".join(stale.warnings)
    assert stale.text == "cached"
