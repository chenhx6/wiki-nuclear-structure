from __future__ import annotations

import csv
import json
import math
from pathlib import Path


ROOT = Path(__file__).resolve().parent


def spin_value(text: str) -> float:
    if not text:
        return math.nan
    if "/" in text:
        a, b = text.split("/", 1)
        return float(a) / float(b)
    return float(text)


def number(text: str) -> float | None:
    return None if text == "" else float(text)


def cg2_stretched_e2(spin: float, k: float) -> float:
    """Squared <I K 2 0 | I-2 K> for a strong-coupling rotor."""
    numerator = 3 * (spin + k - 1) * (spin + k) * (spin - k - 1) * (spin - k)
    denominator = 2 * spin * (spin - 1) * (2 * spin - 1) * (2 * spin + 1)
    if numerator <= 0 or denominator <= 0:
        raise ValueError(f"invalid stretched-E2 coupling for I={spin}, K={k}")
    return numerator / denominator


def predicted_tau_ps(egamma_kev: float, qt_eb: float, spin: float, k: float) -> float:
    energy_mev = egamma_kev / 1000.0
    return 1.0 / (1.224 * energy_mev**5 * cg2_stretched_e2(spin, k) * qt_eb**2)


def weighted_linear_fit(xs: list[float], ys: list[float], sigmas: list[float]) -> dict:
    weights = [1.0 / s**2 for s in sigmas]
    sw = sum(weights)
    sx = sum(w * x for w, x in zip(weights, xs))
    sy = sum(w * y for w, y in zip(weights, ys))
    sxx = sum(w * x * x for w, x in zip(weights, xs))
    sxy = sum(w * x * y for w, x, y in zip(weights, xs, ys))
    delta = sw * sxx - sx * sx
    slope = (sw * sxy - sx * sy) / delta
    intercept = (sxx * sy - sx * sxy) / delta
    slope_sigma = math.sqrt(sw / delta)
    return {"slope_eb_per_hbar": slope, "slope_sigma": slope_sigma, "intercept_eb": intercept}


def load_rows() -> list[dict]:
    with (ROOT / "lifetimes.csv").open(encoding="utf-8", newline="") as handle:
        return list(csv.DictReader(handle))


def run() -> dict:
    rows = load_rows()
    checks = []
    for row in rows:
        tau = number(row["tau_ps"])
        qt = number(row["qt_eb"])
        egamma = number(row["egamma_keV"])
        spin = spin_value(row["spin"])
        if tau is None or qt is None or egamma is None or math.isnan(spin) or row["tau_bound"]:
            continue
        k = float(row["k_assumption"])
        predicted = predicted_tau_ps(egamma, qt, spin, k)
        checks.append({
            "row_id": row["row_id"],
            "predicted_tau_ps": predicted,
            "reported_tau_ps": tau,
            "relative_residual": (predicted - tau) / tau,
            "assumptions": "pure E2; branching=1; ICC=0; source-specific K",
        })

    singh = [r for r in rows if r["lineage_id"] == "singh2016-current" and not r["qt_bound"] and r["qt_eb"]]
    xs = [spin_value(r["spin"]) for r in singh]
    ys = [float(r["qt_eb"]) for r in singh]
    sigmas = [(float(r["qt_minus_eb"]) + float(r["qt_plus_eb"])) / 2 for r in singh]
    fit = weighted_linear_fit(xs, ys, sigmas)
    weighted_mean = sum(y / s**2 for y, s in zip(ys, sigmas)) / sum(1 / s**2 for s in sigmas)
    weighted_mean_sigma = math.sqrt(1 / sum(1 / s**2 for s in sigmas))

    hd_q0 = next(float(r["qt_eb"]) for r in rows if r["row_id"] == "PHD")
    delta_scan = [{"delta": d, "ratio_to_delta0": 1 / (1 + d * d)} for d in (-0.5, -0.4, -0.3, -0.2, -0.1, 0.0, 0.1, 0.2, 0.3, 0.4, 0.5)]

    results = {
        "run_id": "131ce-lifetime-update-20260728",
        "independent_lineages": ["singh2016-current", "li2004-original", "petrache1998-original"],
        "excluded_from_independent_count": ["Singh 2016 Table 1 rows attributed to Li 2004"],
        "singh_finite_qt_points": len(singh),
        "singh_weighted_mean_qt_eb": weighted_mean,
        "singh_weighted_mean_sigma_eb": weighted_mean_sigma,
        "singh_weighted_linear_fit": fit,
        "rotor_cross_checks": checks,
        "max_abs_rotor_residual_singh": max(abs(c["relative_residual"]) for c in checks if c["row_id"].startswith("S")),
        "hd_q0_to_singh_mean_scale_ratio": hd_q0 / weighted_mean,
        "scale_ratio_warning": "Q0 and Qt use different geometry/shape assumptions; this is a scale comparison, not a direct deformation ratio.",
        "bm1_be2_delta_scan": delta_scan,
        "belief_revision": {
            "signature_configuration_coupling": "remains leading for band identity and crossing systematics",
            "gamma_soft_core_response": "strengthened as a complementary deformation background by band-mapped Qt and TRS, still model-dependent",
            "shape_coexistence": "raised from unsupported to plausible nuclear-level candidate because an independent HD minimum exists, but not established for thesis Bands 1-7",
            "chirality": "not established; lifetime points do not supply partner-band electromagnetic symmetry",
            "wobbling": "not established; no collective out-of-band E2 matrix is added"
        },
        "hard_gap": "Alwaleedi Figure 5.5 gated branching intensities remain unavailable; lifetime data are orthogonal and do not reconstruct them."
    }
    (ROOT / "results.json").write_text(json.dumps(results, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return results


if __name__ == "__main__":
    print(json.dumps(run(), ensure_ascii=False, indent=2))
