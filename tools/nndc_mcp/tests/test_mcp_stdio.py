from __future__ import annotations

import tomllib
from pathlib import Path

import anyio
from mcp import ClientSession, StdioServerParameters
from mcp.client.stdio import stdio_client


def test_stdio_process_initializes_lists_tools_and_exits() -> None:
    root = Path(__file__).resolve().parents[3]
    config = tomllib.loads((root / ".codex" / "config.toml").read_text(encoding="utf-8"))
    nndc = config["mcp_servers"]["nndc"]

    async def exercise() -> None:
        parameters = StdioServerParameters(
            command=nndc["command"],
            args=nndc["args"],
            cwd=str((root / nndc["cwd"]).resolve()),
        )
        async with stdio_client(parameters) as (read, write):
            async with ClientSession(read, write) as session:
                initialized = await session.initialize()
                tools = await session.list_tools()
                assert initialized.serverInfo.name == "nndc"
                assert len(tools.tools) == 7
                assert all(tool.annotations and tool.annotations.readOnlyHint for tool in tools.tools)

    anyio.run(exercise)
