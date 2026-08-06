from __future__ import annotations

import tomllib
from pathlib import Path


def test_project_config_has_one_portable_nndc_entry() -> None:
    root = Path(__file__).resolve().parents[3]
    path = root / ".codex" / "config.toml"
    text = path.read_text(encoding="utf-8")
    config = tomllib.loads(text)
    assert text.count("[mcp_servers.nndc]") == 1
    assert text.count("[windows]") <= 1
    nndc = config["mcp_servers"]["nndc"]
    assert nndc["command"] == "tools/nndc_mcp/.venv/Scripts/python.exe"
    assert nndc["args"] == ["tools/nndc_mcp/server.py"]
    assert nndc["cwd"] == "."
    assert nndc["required"] is False
