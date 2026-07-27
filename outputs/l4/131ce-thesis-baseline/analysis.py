from __future__ import annotations

import csv
import json
import math
from collections import defaultdict
from pathlib import Path


ROOT = Path(__file__).resolve().parent
DELTAS = [-0.5, -0.4, -0.3, -0.2, -0.1, 0.0, 0.1, 0.2, 0.3, 0.4, 0.5]
FIGURE_5_5_VISUAL_ENVELOPES = {
    1: (0.5, 4.5),
    2: (0.1, 4.5),
    5: (2.5, 4.7),
    7: (2.5, 5.0),
}


def spin_value(label: str) -> float:
    numerator, denominator = label.split("/")
    return float(numerator) / float(denominator)


def ratio(e2: dict[str, str], m1: dict[str, str], delta: float) -> float:
    e_e2 = float(e2["egamma_keV"]) / 1000.0
    e_m1 = float(m1["egamma_keV"]) / 1000.0
    branching = float(m1["intensity"]) / float(e2["intensity"])
    return 0.697 * (e_e2**5 / e_m1**3) * branching / (1.0 + delta**2)


def relative_intensity_uncertainty(e2: dict[str, str], m1: dict[str, str]) -> float:
    terms = []
    for row in (e2, m1):
        value = float(row["intensity"])
        uncertainty = float(row["intensity_unc"])
        terms.append((uncertainty / value) ** 2 if value else 0.0)
    return math.sqrt(sum(terms))


def main() -> None:
    with (ROOT / "transitions.csv").open(encoding="utf-8", newline="") as handle:
        rows = list(csv.DictReader(handle))

    grouped: dict[str, list[dict[str, str]]] = defaultdict(list)
    for row in rows:
        grouped[row["pair_id"]].append(row)

    points = []
    failures = []
    for pair_id, pair_rows in sorted(grouped.items()):
        branches = {row["branch"]: row for row in pair_rows}
        if set(branches) != {"E2", "M1"} or len(pair_rows) != 2:
            failures.append({"pair_id": pair_id, "reason": "expected exactly one E2 and one M1 branch"})
            continue
        e2, m1 = branches["E2"], branches["M1"]
        if e2["initial_spin"] != m1["initial_spin"]:
            failures.append({"pair_id": pair_id, "reason": "initial-spin mismatch"})
            continue
        r0 = ratio(e2, m1, 0.0)
        rel_unc = relative_intensity_uncertainty(e2, m1)
        scan = {f"{delta:+.1f}": ratio(e2, m1, delta) for delta in DELTAS}
        points.append(
            {
                "pair_id": pair_id,
                "band": int(e2["band"]),
                "spin": e2["initial_spin"],
                "spin_hbar": spin_value(e2["initial_spin"]),
                "ratio_delta_0": r0,
                "ratio_unc_intensity_only": r0 * rel_unc,
                "relative_uncertainty": rel_unc,
                "delta_scan": scan,
                "m1_final_band": int(m1["final_band"]),
            }
        )

    band_summary = {}
    for band in sorted({point["band"] for point in points}):
        values = sorted((point for point in points if point["band"] == band), key=lambda item: item["spin_hbar"])
        ratios = [point["ratio_delta_0"] for point in values]
        band_summary[str(band)] = {
            "n_pairs": len(values),
            "spin_range_hbar": [values[0]["spin_hbar"], values[-1]["spin_hbar"]],
            "ratio_delta_0_range": [min(ratios), max(ratios)],
            "ordered_points": [[point["spin"], point["ratio_delta_0"]] for point in values],
        }

    scale_at_abs_delta_05 = 1.0 / 1.25
    proxy_mismatches = []
    for point in points:
        lower, upper = FIGURE_5_5_VISUAL_ENVELOPES[point["band"]]
        minimum_within_scan = point["ratio_delta_0"] / 1.25
        if minimum_within_scan > upper or point["ratio_delta_0"] < lower:
            proxy_mismatches.append(
                {
                    "pair_id": point["pair_id"],
                    "band": point["band"],
                    "spin": point["spin"],
                    "ratio_delta_0": point["ratio_delta_0"],
                    "minimum_ratio_for_abs_delta_le_0_5": minimum_within_scan,
                    "figure_visual_envelope": [lower, upper],
                }
            )

    output = {
        "formula": "R(delta)=0.697*(E_E2^5/E_M1^3)*(I_M1/I_E2)/(1+delta^2)",
        "units": "(mu_N/eb)^2",
        "pair_count": len(points),
        "validation_failures": failures,
        "delta_sensitivity": {
            "scale_at_abs_delta_0_5_relative_to_delta_0": scale_at_abs_delta_05,
            "delta_0_overestimate_relative_to_true_at_abs_delta_0_5": 0.25,
            "difference_relative_to_delta_0_at_abs_delta_0_5": 0.20,
            "sign_sensitive_for_this_ratio": False,
            "ordering_invariant_for_common_abs_delta": True,
        },
        "band_summary": band_summary,
        "points": points,
        "figure_5_5_reproduction_check": {
            "input_status": "Tables 4.1-4.7 global relative intensities are proxies; gated branching intensities used by Figure 5.5 are not tabulated",
            "visual_envelopes_approximate": {str(key): value for key, value in FIGURE_5_5_VISUAL_ENVELOPES.items()},
            "proxy_mismatch_count_not_reconciled_by_abs_delta_le_0_5": len(proxy_mismatches),
            "proxy_mismatches": proxy_mismatches,
            "conclusion": "Figure 5.5 cannot be independently reproduced from the tabulated global intensities; the missing gated branching intensities are a quantitative data gap"
        },
        "quantitative_interpretation": {
            "configuration_signature_coupling": "preferred from level scheme, crossings, alignments, and configuration mapping; the published ratio reinforcement cannot be independently reproduced from tabulated intensities",
            "gamma_soft_core_response": "viable background; thesis ratios do not measure gamma softness or rigidity",
            "chirality": "unsupported for the mapped 131Ce baseline; no same-configuration partner-pair electromagnetic matrix is present",
            "wobbling": "unsupported for the mapped bands; the analyzed branches do not establish enhanced collective out-of-band E2 strength",
            "shape_coexistence": "unestablished; no band-resolved lifetime, Qt, absolute E2, E0, or invariant is present",
            "highest_value_gap": "band-mapped lifetimes/absolute B(E2) or Qt plus measured delta and polarization; gated branching intensities are additionally required to reproduce Figure 5.5"
        },
    }
    (ROOT / "results.json").write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    assert not failures
    assert len(points) == 35
    assert proxy_mismatches
    assert math.isclose(ratio(grouped["b1_15"][0], grouped["b1_15"][1], 0.5) / ratio(grouped["b1_15"][0], grouped["b1_15"][1], 0.0), 0.8)
    print(f"wrote {len(points)} paired ratios to results.json")


if __name__ == "__main__":
    main()
