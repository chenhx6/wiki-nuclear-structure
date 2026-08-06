from __future__ import annotations

import server


def test_expected_tools_are_registered_read_only() -> None:
    names = {tool.name for tool in server.mcp._tool_manager.list_tools()}
    assert names == {
        "nndc_check_access",
        "nndc_search_nuclide",
        "nndc_get_nuclide_summary",
        "nndc_get_levels",
        "nndc_get_gamma_transitions",
        "nndc_get_adopted_levels",
        "nndc_get_ensdf_record",
    }
    for tool in server.mcp._tool_manager.list_tools():
        assert tool.annotations.readOnlyHint is True
        assert tool.annotations.destructiveHint is False
