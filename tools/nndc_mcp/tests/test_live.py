from __future__ import annotations

import os

import pytest

import server


pytestmark = pytest.mark.skipif(os.environ.get("NNDC_LIVE") != "1", reason="set NNDC_LIVE=1 for official network tests")


def test_live_152eu_summary() -> None:
    result = server.nndc_get_nuclide_summary("152Eu")
    assert result["errors"] == []
    assert result["parse_status"] in {"ok", "partial"}
    assert result["data"]["counts"]["levels"] > 0


def test_live_131ba_adopted_and_ensdf() -> None:
    levels = server.nndc_get_adopted_levels("131Ba")
    gammas = server.nndc_get_gamma_transitions("131Ba")
    ensdf = server.nndc_get_ensdf_record("131Ba")
    assert levels["data"]["count"] > 0
    assert gammas["data"]["count"] > 0
    assert ensdf["data"]["record_text"].startswith("131BA")
