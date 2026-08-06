"""STDIO MCP server exposing read-only official NNDC/NuDat/ENSDF queries."""

from __future__ import annotations

import sys
import logging
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

PACKAGE_ROOT = Path(__file__).resolve().parent
if str(PACKAGE_ROOT) not in sys.path:
    sys.path.insert(0, str(PACKAGE_ROOT))

logging.getLogger("httpx").setLevel(logging.WARNING)
logging.getLogger("httpcore").setLevel(logging.WARNING)

from mcp.server.fastmcp import FastMCP  # noqa: E402
from mcp.types import ToolAnnotations  # noqa: E402

try:
    from .cache import CacheStore  # type: ignore  # noqa: E402
    from .client import NndcError, NndcHttpClient  # type: ignore  # noqa: E402
    from .parsers import (  # type: ignore  # noqa: E402
        Nucleus,
        normalize_nuclide,
        parse_ensdf_record,
        parse_ensdf_search,
        parse_nudat,
    )
except ImportError:  # direct ``python server.py`` execution
    from cache import CacheStore  # type: ignore  # noqa: E402
    from client import NndcError, NndcHttpClient  # type: ignore  # noqa: E402
    from parsers import Nucleus, normalize_nuclide, parse_ensdf_record, parse_ensdf_search, parse_nudat  # type: ignore  # noqa: E402


NUDAT_TTL_SEC = 24 * 60 * 60
ENSDF_TTL_SEC = 30 * 24 * 60 * 60
ACCESS_TTL_SEC = 60 * 60
READ_ONLY_ANNOTATIONS = ToolAnnotations(
    readOnlyHint=True,
    destructiveHint=False,
    idempotentHint=True,
    openWorldHint=True,
)


def _utc_now() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")


class NndcService:
    def __init__(self) -> None:
        self.http = NndcHttpClient(CacheStore())

    def close(self) -> None:
        self.http.close()

    @staticmethod
    def _nucleus(value: str) -> Nucleus:
        return normalize_nuclide(value)

    @staticmethod
    def _nucleus_json(nucleus: Nucleus) -> dict[str, Any]:
        return {
            "input": nucleus.original,
            "canonical": nucleus.canonical,
            "A": nucleus.a,
            "Z": nucleus.z,
            "symbol": nucleus.symbol,
        }

    @staticmethod
    def _error(message: str, *, nucleus: Nucleus | None = None, source: str | None = None) -> dict[str, Any]:
        return {
            "nucleus": NndcService._nucleus_json(nucleus) if nucleus else None,
            "source": source,
            "retrieved_at_utc": _utc_now(),
            "parse_status": "error",
            "from_cache": False,
            "cache": None,
            "data": None,
            "errors": [message],
            "warnings": [],
        }

    @staticmethod
    def _metadata(fetch: Any, parsed: dict[str, Any], nucleus: Nucleus, source_url: str) -> dict[str, Any]:
        return {
            "nucleus": NndcService._nucleus_json(nucleus),
            "source": {
                "provider": "NNDC",
                "database": "NuDat 3",
                "official_url": source_url,
                "retrieved_at_utc": fetch.fetched_at_utc,
            },
            "retrieved_at_utc": fetch.fetched_at_utc,
            "parse_status": parsed.get("parse_status", "partial"),
            "from_cache": fetch.from_cache,
            "cache": {
                "key": fetch.cache_key,
                "fetched_at_utc": fetch.fetched_at_utc,
                "stale": fetch.stale,
                "attempts": fetch.attempts,
            },
            "errors": [],
            "warnings": list(fetch.warnings) + list(parsed.get("warnings", [])),
        }

    def nudat(self, nucleus_value: str) -> tuple[Nucleus, dict[str, Any], str]:
        nucleus = self._nucleus(nucleus_value)
        url = self.http.build_url(
            "/nudat3/getdataset.jsp",
            {"nucleus": nucleus.canonical, "unc": "nds"},
        )
        fetch = self.http.request("GET", url, cache_ttl_sec=NUDAT_TTL_SEC)
        parsed = parse_nudat(fetch.text, nucleus)
        return nucleus, {**self._metadata(fetch, parsed, nucleus, url), "data": parsed}, url

    def access(self) -> dict[str, Any]:
        endpoints = [
            ("NNDC home", "/"),
            ("NuDat 3", "/nudat3/"),
            ("ENSDF", "/ensdf/"),
        ]
        results: list[dict[str, Any]] = []
        warnings: list[str] = []
        for label, path in endpoints:
            url = self.http.build_url(path)
            try:
                fetch = self.http.request("GET", url, cache_ttl_sec=ACCESS_TTL_SEC)
                results.append(
                    {
                        "name": label,
                        "url": url,
                        "accessible": fetch.status == 200,
                        "http_status": fetch.status,
                        "content_type": fetch.content_type,
                        "from_cache": fetch.from_cache,
                        "stale": fetch.stale,
                        "fetched_at_utc": fetch.fetched_at_utc,
                        "warnings": fetch.warnings,
                    }
                )
            except NndcError as exc:
                results.append({"name": label, "url": url, "accessible": False, "error": str(exc)})
                warnings.append(str(exc))
        return {
            "source": {"provider": "NNDC", "official_origin": "https://www.nndc.bnl.gov"},
            "retrieved_at_utc": _utc_now(),
            "accessible": bool(results) and all(item.get("accessible", False) for item in results),
            "endpoints": results,
            "errors": warnings,
            "warnings": ["Only official NNDC endpoints are probed; no alternate mirrors are used."] if not warnings else [],
        }

    def search(self, nucleus_value: str) -> dict[str, Any]:
        nucleus = self._nucleus(nucleus_value)
        nudat_url = self.http.build_url(
            "/nudat3/getdataset.jsp",
            {"nucleus": nucleus.canonical, "unc": "nds"},
        )
        ensdf_url = self.http.build_url("/ensdf/DatasetFetchServlet")
        try:
            fetch = self.http.request("GET", nudat_url, cache_ttl_sec=NUDAT_TTL_SEC)
            title = parse_nudat(fetch.text, nucleus).get("title")
            return {
                "nucleus": self._nucleus_json(nucleus),
                "retrieved_at_utc": fetch.fetched_at_utc,
                "source": "NNDC",
                "sources": {
                    "nudat": {"available": fetch.status == 200, "url": nudat_url, "title": title},
                    "ensdf": {"available": True, "url": ensdf_url, "query_method": "official read-only POST search"},
                },
                "from_cache": fetch.from_cache,
                "cache": {"fetched_at_utc": fetch.fetched_at_utc, "stale": fetch.stale, "key": fetch.cache_key},
                "parse_status": "ok" if fetch.status == 200 else "partial",
                "errors": [],
                "warnings": fetch.warnings,
            }
        except NndcError as exc:
            return self._error(str(exc), nucleus=nucleus, source=nudat_url)

    def ensdf(self, nucleus_value: str, dataset: str | None) -> dict[str, Any]:
        nucleus = self._nucleus(nucleus_value)
        search_url = self.http.build_url("/ensdf/DatasetFetchServlet")
        search_data = {"nuc": nucleus.canonical, "searchType": "quick", "datasource": "ensdf", "nsrch": "Search"}
        try:
            search_fetch = self.http.request("POST", search_url, data=search_data, cache_ttl_sec=ENSDF_TTL_SEC)
            datasets = parse_ensdf_search(search_fetch.text)
            if not datasets:
                return {
                    "nucleus": self._nucleus_json(nucleus),
                    "source": {"provider": "NNDC", "official_url": search_url},
                    "retrieved_at_utc": search_fetch.fetched_at_utc,
                    "parse_status": "partial",
                    "from_cache": search_fetch.from_cache,
                    "cache": {"stale": search_fetch.stale, "fetched_at_utc": search_fetch.fetched_at_utc},
                    "data": {"datasets": []},
                    "errors": [],
                    "warnings": search_fetch.warnings + ["ENSDF dataset list was not found; page structure may have changed"],
                }
            requested = (dataset or "ADOPTED LEVELS, GAMMAS").strip().casefold()
            selected = next((item for item in datasets if item["dataset"].strip().casefold() == requested), None)
            if selected is None:
                return {
                    "nucleus": self._nucleus_json(nucleus),
                    "source": {"provider": "NNDC", "official_url": search_url},
                    "retrieved_at_utc": search_fetch.fetched_at_utc,
                    "parse_status": "partial",
                    "from_cache": search_fetch.from_cache,
                    "cache": {"stale": search_fetch.stale, "fetched_at_utc": search_fetch.fetched_at_utc},
                    "data": {"datasets": datasets, "requested_dataset": dataset},
                    "errors": [f"ENSDF dataset not found: {dataset or 'ADOPTED LEVELS, GAMMAS'}"],
                    "warnings": search_fetch.warnings,
                }
            record_url = self.http.build_url("/ensdf/EnsdfDispatcherServlet")
            record_data = {
                "dbclass": "ensdf",
                "page-source": "singular",
                "datasetcheck": selected["datasetcheck"],
                "chooseit": "ENSDF text format",
            }
            record_fetch = self.http.request("POST", record_url, data=record_data, cache_ttl_sec=ENSDF_TTL_SEC)
            record_text = parse_ensdf_record(record_fetch.text)
            return {
                "nucleus": self._nucleus_json(nucleus),
                "source": {
                    "provider": "NNDC",
                    "database": "ENSDF",
                    "official_search_url": search_url,
                    "official_record_url": record_url,
                    "retrieved_at_utc": record_fetch.fetched_at_utc,
                },
                "retrieved_at_utc": record_fetch.fetched_at_utc,
                "parse_status": "raw",
                "from_cache": search_fetch.from_cache and record_fetch.from_cache,
                "cache": {
                    "search": {"key": search_fetch.cache_key, "fetched_at_utc": search_fetch.fetched_at_utc, "stale": search_fetch.stale},
                    "record": {"key": record_fetch.cache_key, "fetched_at_utc": record_fetch.fetched_at_utc, "stale": record_fetch.stale},
                },
                "data": {
                    "dataset": selected["dataset"],
                    "record_id": selected["record_id"],
                    "last_revised": selected["last_revised"],
                    "record_text": record_text,
                    "available_datasets": datasets,
                },
                "errors": [],
                "warnings": search_fetch.warnings + record_fetch.warnings + ["ENSDF text is returned as the official raw record; detailed field parsing is not claimed."],
            }
        except (NndcError, ValueError) as exc:
            return self._error(str(exc), nucleus=nucleus, source=search_url)


_service: NndcService | None = None


def service() -> NndcService:
    global _service
    if _service is None:
        _service = NndcService()
    return _service


mcp = FastMCP(
    "nndc",
    instructions=(
        "Local read-only connector for official NNDC, NuDat 3, and ENSDF data. "
        "All tools are read-only and return source/cache/parse metadata."
    ),
)


@mcp.tool(name="nndc_check_access", description="Check read-only access to official NNDC, NuDat 3, and ENSDF entry points.", annotations=READ_ONLY_ANNOTATIONS)
def nndc_check_access() -> dict[str, Any]:
    return service().access()


@mcp.tool(name="nndc_search_nuclide", description="Normalize a nuclide and confirm its official NuDat and ENSDF query entry points.", annotations=READ_ONLY_ANNOTATIONS)
def nndc_search_nuclide(nucleus: str) -> dict[str, Any]:
    try:
        return service().search(nucleus)
    except ValueError as exc:
        return service()._error(str(exc))


@mcp.tool(name="nndc_get_nuclide_summary", description="Return a structured NuDat 3 summary for one nuclide.", annotations=READ_ONLY_ANNOTATIONS)
def nndc_get_nuclide_summary(nucleus: str) -> dict[str, Any]:
    try:
        _, result, _ = service().nudat(nucleus)
        parsed = result["data"]
        result["data"] = {"title": parsed.get("title"), "counts": parsed.get("counts"), "nucleus": parsed.get("nucleus")}
        return result
    except (ValueError, NndcError) as exc:
        return service()._error(str(exc))


@mcp.tool(name="nndc_get_levels", description="Return adopted NuDat level rows with energy, spin-parity, half-life, and references.", annotations=READ_ONLY_ANNOTATIONS)
def nndc_get_levels(nucleus: str) -> dict[str, Any]:
    try:
        _, result, _ = service().nudat(nucleus)
        result["data"] = {"levels": result["data"]["levels"], "count": len(result["data"]["levels"])}
        return result
    except (ValueError, NndcError) as exc:
        return service()._error(str(exc))


@mcp.tool(name="nndc_get_gamma_transitions", description="Return NuDat gamma transitions and explicitly mark inferred final levels.", annotations=READ_ONLY_ANNOTATIONS)
def nndc_get_gamma_transitions(nucleus: str) -> dict[str, Any]:
    try:
        _, result, _ = service().nudat(nucleus)
        result["data"] = {"gammas": result["data"]["gammas"], "count": len(result["data"]["gammas"])}
        return result
    except (ValueError, NndcError) as exc:
        return service()._error(str(exc))


@mcp.tool(name="nndc_get_adopted_levels", description="Return the NuDat adopted levels table for one nuclide.", annotations=READ_ONLY_ANNOTATIONS)
def nndc_get_adopted_levels(nucleus: str) -> dict[str, Any]:
    return nndc_get_levels(nucleus)


@mcp.tool(name="nndc_get_ensdf_record", description="Retrieve one official ENSDF dataset as raw text, defaulting to ADOPTED LEVELS, GAMMAS.", annotations=READ_ONLY_ANNOTATIONS)
def nndc_get_ensdf_record(nucleus: str, dataset: str = "ADOPTED LEVELS, GAMMAS") -> dict[str, Any]:
    try:
        return service().ensdf(nucleus, dataset)
    except ValueError as exc:
        return service()._error(str(exc))


if __name__ == "__main__":
    mcp.run("stdio")
