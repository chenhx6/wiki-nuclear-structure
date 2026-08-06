# Local NNDC MCP (Windows)

This package is a local, read-only STDIO MCP server for the official NNDC site
(`https://www.nndc.bnl.gov`). It uses the verified public pages below and does
not claim a private JSON API:

- NuDat 3 adopted data: `/nudat3/getdataset.jsp?nucleus=131Ba&unc=nds`
- ENSDF search: `/ensdf/DatasetFetchServlet` with the official quick-search form
- ENSDF text: `/ensdf/EnsdfDispatcherServlet` with the official dataset form

Only `www.nndc.bnl.gov` over HTTPS is allowlisted. User-supplied URLs are not
accepted. ENSDF searches use the site's read-only POST forms; the connector
never writes, uploads, deletes, or executes anything from NNDC responses.

## Run on Windows

The project config runs `server.py` with the repository-local Windows virtual
environment over STDIO. The command, script, and working directory are relative
to the clone root, so no username or drive letter is embedded. No WSL entry is
configured for this connector.

For a fresh environment, use the detected Windows Python and install:

```powershell
python -m venv tools/nndc_mcp/.venv
tools/nndc_mcp/.venv/Scripts/python.exe -m pip install -r tools/nndc_mcp/requirements.txt
```

## Tools

`nndc_check_access`, `nndc_search_nuclide`, `nndc_get_nuclide_summary`,
`nndc_get_levels`, `nndc_get_gamma_transitions`,
`nndc_get_adopted_levels`, and `nndc_get_ensdf_record` are all annotated
read-only and idempotent. Results include the normalized nucleus, official
source URL, retrieval time, parse status, cache metadata, and warnings/errors.

NuDat page results are cached for 24 hours. ENSDF search and raw records are
cached for 30 days. A failed network request can return the most recent cache
entry with `stale: true` and an explicit warning. Only queried nuclei are
cached; the full ENSDF database is never downloaded.

The NuDat gamma page does not expose a separate final-level field for every
transition. The connector maps `initial_level - gamma_energy` to the nearest
adopted level and marks that field `final_level_inferred: true`; it does not
present this inference as a separately reported NNDC field. ENSDF is returned
as the official raw record, not as an unverified field-level parse.

## Tests

Offline tests:

```powershell
tools/nndc_mcp/.venv/Scripts/python.exe -m pytest tools/nndc_mcp/tests -q
```

Official live checks for `152Eu` and `131Ba`:

```powershell
$env:NNDC_LIVE = '1'
tools/nndc_mcp/.venv/Scripts/python.exe -m pytest tools/nndc_mcp/tests/test_live.py -q
```

The local `.cache/` and `.venv/` directories are ignored by Git and may be
removed and recreated without changing Wiki content.
