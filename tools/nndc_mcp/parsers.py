"""NuDat HTML and ENSDF search/record parsers with structure-change warnings."""

from __future__ import annotations

import re
import warnings
from dataclasses import dataclass
from typing import Any

from bs4 import BeautifulSoup, XMLParsedAsHTMLWarning


ELEMENTS = (
    "H He Li Be B C N O F Ne Na Mg Al Si P S Cl Ar K Ca Sc Ti V Cr Mn Fe Co Ni Cu Zn Ga Ge As Se Br Kr Rb Sr Y Zr Nb Mo Tc Ru Rh Pd Ag Cd In Sn Sb Te I Xe Cs Ba La Ce Pr Nd Pm Sm Eu Gd Tb Dy Ho Er Tm Yb Lu Hf Ta W Re Os Ir Pt Au Hg Tl Pb Bi Po At Rn Fr Ra Ac Th Pa U Np Pu Am Cm Bk Cf Es Fm Md No Lr Rf Db Sg Bh Hs Mt Ds Rg Cn Nh Fl Mc Lv Ts Og".split()
)
SYMBOL_TO_Z = {symbol.lower(): index for index, symbol in enumerate(ELEMENTS, start=1)}


@dataclass(frozen=True)
class Nucleus:
    a: int
    z: int
    symbol: str
    canonical: str
    original: str


def normalize_nuclide(value: str) -> Nucleus:
    original = str(value or "").strip()
    if not original:
        raise ValueError("nuclide input is empty; use 131Ba, Ba-131, or A=131, Z=56")
    a_match = re.search(r"\bA\s*=?\s*(\d+)\b", original, re.I)
    z_match = re.search(r"\bZ\s*=?\s*(\d+)\b", original, re.I)
    if a_match and z_match:
        a, z = int(a_match.group(1)), int(z_match.group(1))
    else:
        compact = re.sub(r"[\s_]+", "", original)
        match = re.fullmatch(r"(?:(\d+)[-]?([A-Za-z]{1,3})|([A-Za-z]{1,3})[-]?(\d+))", compact)
        if not match:
            raise ValueError(f"invalid nuclide '{original}'; use 131Ba, Ba-131, or A=131, Z=56")
        if match.group(1):
            a, symbol = int(match.group(1)), match.group(2)
        else:
            symbol, a = match.group(3), int(match.group(4))
        z = SYMBOL_TO_Z.get(symbol.lower(), 0)
        if not z:
            raise ValueError(f"unknown element symbol in '{original}'")
    if not (1 <= z <= len(ELEMENTS)):
        raise ValueError(f"atomic number Z={z} is outside the supported periodic table")
    if not (1 <= a <= 400):
        raise ValueError(f"mass number A={a} is outside the supported range")
    if a < z:
        raise ValueError(f"mass number A={a} cannot be smaller than Z={z}")
    symbol = ELEMENTS[z - 1]
    return Nucleus(a=a, z=z, symbol=symbol, canonical=f"{a}{symbol}", original=original)


def numeric_tokens(value: str) -> list[str]:
    return re.findall(r"[-+]?\d+(?:\.\d+)?(?:[Ee][-+]?\d+)?", value or "")


def first_number(value: str) -> float | None:
    tokens = numeric_tokens(value)
    try:
        return float(tokens[0]) if tokens else None
    except ValueError:
        return None


def _cell_text(cell: Any) -> str:
    return re.sub(r"\s+", " ", cell.get_text(" ", strip=True)).strip()


def _parse_energy(value: str) -> dict[str, Any]:
    tokens = numeric_tokens(value)
    result: dict[str, Any] = {"raw": value}
    if tokens:
        result["value_keV"] = float(tokens[0])
        if len(tokens) > 1:
            result["uncertainty_raw"] = tokens[1]
    else:
        result["value_keV"] = None
    return result


def _soup(html: str) -> BeautifulSoup:
    with warnings.catch_warnings():
        warnings.simplefilter("ignore", XMLParsedAsHTMLWarning)
        try:
            return BeautifulSoup(html, "lxml")
        except Exception:
            return BeautifulSoup(html, "html.parser")


def parse_nudat(html: str, nucleus: Nucleus) -> dict[str, Any]:
    soup = _soup(html)
    warnings: list[str] = []
    main = soup.find("table", id="mainTable")
    if main is None:
        main = soup.find("table", id="levelTable")
        warnings.append("NuDat mainTable was not found; used fallback levelTable")
    levels: list[dict[str, Any]] = []
    if main is not None:
        for row in main.find_all("tr"):
            cells = row.find_all(["th", "td"], recursive=False)
            if not cells or not any("elvl" in (cell.get("class") or []) for cell in cells):
                continue
            by_class = {" ".join(cell.get("class") or []): _cell_text(cell) for cell in cells}
            energy_raw = next((value for key, value in by_class.items() if "elvl" in key), "")
            energy = _parse_energy(energy_raw)
            if energy["value_keV"] is None:
                warnings.append(f"skipped level row with unparseable energy: {energy_raw!r}")
                continue
            xref = next((value for key, value in by_class.items() if "xref" in key), "")
            jpi = next((value for key, value in by_class.items() if "jpi" in key), "")
            t12 = next((value for key, value in by_class.items() if "t12" in key), "")
            fin_values = [
                _cell_text(cell)
                for cell in cells
                if "fin" in (cell.get("class") or [])
            ]
            levels.append(
                {
                    "energy_keV": energy["value_keV"],
                    "energy_raw": energy_raw,
                    "energy_uncertainty_raw": energy.get("uncertainty_raw"),
                    "spin_parity": jpi or None,
                    "half_life": t12 or None,
                    "xrefs": xref.split() if xref else [],
                    "final_levels_raw": fin_values,
                }
            )
    else:
        warnings.append("NuDat level table is missing; page structure may have changed")

    gamma_table = soup.find("table", id="gammaTable")
    gammas: list[dict[str, Any]] = []
    if gamma_table is None:
        warnings.append("NuDat gammaTable is missing; gamma transitions are unavailable")
    else:
        current_initial: dict[str, Any] = {}
        rows = gamma_table.find_all("tr")
        for row in rows:
            cells = row.find_all(["th", "td"], recursive=False)
            if not cells or any("header" in (cell.get("class") or []) for cell in cells):
                continue
            texts = [_cell_text(cell) for cell in cells]
            classes = [cell.get("class") or [] for cell in cells]
            starts_level = len(cells) >= 1 and "gamm" in classes[0] and "cell" in classes[0]
            if starts_level:
                current_initial = {
                    "energy_raw": texts[0],
                    "energy_keV": first_number(texts[0]),
                    "spin_parity": texts[1] if len(texts) > 1 else None,
                    "half_life": texts[2] if len(texts) > 2 else None,
                }
            gamma_index = 3 if starts_level else 2
            if not current_initial or len(cells) <= gamma_index:
                continue
            gamma_raw = texts[gamma_index]
            gamma_energy = _parse_energy(gamma_raw)
            if gamma_energy["value_keV"] is None:
                warnings.append(f"skipped gamma row with unparseable energy: {gamma_raw!r}")
                continue
            initial_energy = current_initial.get("energy_keV")
            final_energy = None
            final_level: dict[str, Any] | None = None
            if initial_energy is not None:
                final_energy = initial_energy - gamma_energy["value_keV"]
                candidates = [level for level in levels if abs(level["energy_keV"] - final_energy) <= 1.0]
                if candidates:
                    final_level = min(candidates, key=lambda level: abs(level["energy_keV"] - final_energy))
            gammas.append(
                {
                    "initial_level_energy_keV": initial_energy,
                    "initial_level_spin_parity": current_initial.get("spin_parity"),
                    "gamma_energy_keV": gamma_energy["value_keV"],
                    "gamma_energy_raw": gamma_raw,
                    "gamma_energy_uncertainty_raw": gamma_energy.get("uncertainty_raw"),
                    "multipolarity": texts[gamma_index + 1] if len(texts) > gamma_index + 1 and texts[gamma_index + 1] else None,
                    "mixing_ratio": texts[gamma_index + 2] if len(texts) > gamma_index + 2 and texts[gamma_index + 2] else None,
                    "conversion_coefficient": texts[gamma_index + 3] if len(texts) > gamma_index + 3 and texts[gamma_index + 3] else None,
                    "additional_data": texts[gamma_index + 4] if len(texts) > gamma_index + 4 and texts[gamma_index + 4] else None,
                    "final_level_energy_keV": final_level["energy_keV"] if final_level else final_energy,
                    "final_level_spin_parity": final_level.get("spin_parity") if final_level else None,
                    "final_level_inferred": True,
                }
            )
    parse_status = "ok" if levels and gamma_table is not None else "partial"
    title = soup.title.get_text(" ", strip=True) if soup.title else None
    return {
        "nucleus": {"input": nucleus.original, "canonical": nucleus.canonical, "A": nucleus.a, "Z": nucleus.z, "symbol": nucleus.symbol},
        "title": title,
        "levels": levels,
        "gammas": gammas,
        "counts": {"levels": len(levels), "gammas": len(gammas)},
        "parse_status": parse_status,
        "warnings": warnings,
    }


def parse_ensdf_search(html: str) -> list[dict[str, Any]]:
    soup = _soup(html)
    datasets: list[dict[str, Any]] = []
    for input_tag in soup.select("input[name=datasetcheck]"):
        row = input_tag.find_parent("tr")
        cells = row.find_all("td", recursive=False) if row else []
        value = input_tag.get("value", "")
        datasets.append(
            {
                "record_id": value.split(",", 1)[0],
                "dataset": _cell_text(cells[0]) if cells else value,
                "last_revised": _cell_text(cells[1]) if len(cells) > 1 else None,
                "references": _cell_text(cells[2]) if len(cells) > 2 else None,
                "datasetcheck": value,
            }
        )
    return datasets


def parse_ensdf_record(html: str) -> str:
    soup = _soup(html)
    pre = soup.find("pre")
    if pre is None:
        raise ValueError("ENSDF response did not contain the expected <pre> record block")
    return pre.get_text("", strip=False).strip("\n")
