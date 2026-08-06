from __future__ import annotations

from parsers import normalize_nuclide, parse_ensdf_record, parse_ensdf_search, parse_nudat


def test_normalize_supported_forms() -> None:
    assert normalize_nuclide("131Ba").canonical == "131Ba"
    assert normalize_nuclide("Ba-131").canonical == "131Ba"
    assert normalize_nuclide("ba131").canonical == "131Ba"
    assert normalize_nuclide("A=131, Z=56").canonical == "131Ba"


def test_invalid_nuclide_is_readable() -> None:
    try:
        normalize_nuclide("not-a-nucleus")
    except ValueError as exc:
        assert "invalid nuclide" in str(exc)
    else:  # pragma: no cover
        raise AssertionError("invalid input was accepted")


def test_nudat_fixture_extracts_levels_and_gamma() -> None:
    html = """
    <html><title>List of levels for 131BA</title><body>
    <table id="mainTable"><tr><td class="header">E(level)</td></tr>
      <tr><td class="cell elvl">0.0</td><td class="cell xref">A</td><td class="cellc jpi">1/2+</td><td class="cellc t12">11.5 d</td><td class="cell gamm"></td><td class="cell ints"></td><td class="cell mult"></td><td class="cell fin"></td></tr>
      <tr><td class="cell elvl">108.077 5</td><td class="cell xref">A B</td><td class="cellc jpi">3/2+</td><td class="cellc t12">0.35 ns</td><td class="cell gamm">108.081 5</td><td class="cell ints">100</td><td class="cellc mult">M1+E2</td><td class="cell fin">0.0</td><td class="cellc fin">1/2+</td></tr>
    </table>
    <table id="gammaTable"><tr><td class="header">E(level)</td></tr>
      <tr><td class="cell gamm">108.077</td><td class="cellc jpi">3/2+</td><td class="cellc t12">0.35 ns</td><td class="cell">108.081 5</td><td class="cellc mult">M1+E2</td><td class="cellc mixr">0.127 14</td><td class="cellc coef">0.812</td><td class="cellw extr">B(E2)</td></tr>
      <tr><td class="cellc jpi">3/2+</td><td class="cellc t12">0.35 ns</td><td class="cell">100.0 2</td><td class="cellc mult">E2</td><td class="cellc mixr"></td><td class="cellc coef">0.1</td><td class="cellw extr"></td></tr>
    </table></body></html>
    """
    parsed = parse_nudat(html, normalize_nuclide("131Ba"))
    assert parsed["parse_status"] == "ok"
    assert parsed["counts"] == {"levels": 2, "gammas": 2}
    assert parsed["levels"][1]["spin_parity"] == "3/2+"
    assert parsed["gammas"][0]["multipolarity"] == "M1+E2"
    assert parsed["gammas"][1]["multipolarity"] == "E2"
    assert parsed["gammas"][0]["final_level_inferred"] is True


def test_ensdf_fixture_extracts_dataset_and_raw_record() -> None:
    search = """
    <form><table><tr><td>ADOPTED LEVELS, GAMMAS</td><td>2006-12</td><td>All references</td>
    <td><input name="datasetcheck" value="131056001,131BA"></td></tr></table></form>
    """
    datasets = parse_ensdf_search(search)
    assert datasets[0]["record_id"] == "131056001"
    assert datasets[0]["dataset"] == "ADOPTED LEVELS, GAMMAS"
    assert parse_ensdf_record("<html><pre>131BA  L 0.0 1/2+</pre></html>") == "131BA  L 0.0 1/2+"
