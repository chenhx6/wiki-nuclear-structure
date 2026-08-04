---
type: output
title: 131Ce lifetime-informed L4 update
created: 2026-07-28
updated: 2026-08-04
status: provisional
review_status: unreviewed
tags: [l4, 131ce, lifetime, qt, evidence-lineage]
---

# `131Ce` lifetime-informed L4 update

## Scope

This run preserves the thesis-only baseline and adds three independent source lineages: Singh 2016, Li 2004, and Petrache 1998. It does not read or infer the user's independent `131Ce` experiment. All source PDFs and `raw/zotero/wiki-inbox.bib` remain read-only.

## P0

1. **Band mapping — isolated, formal review required.** The Singh/Li negative-parity 510–642–750–827–892 keV sequence maps to thesis Band 1 with high-confidence provisional status. The Petrache HD band is a separate sequence and is never merged by nucleus or “yrast” label.
2. **Li 2004 transcription — resolved by claim-level human review.** Its text layer is damaged, but the user visually checked and accepted Table 1 claims LI04-1–4 against PDF p.3. LI04-5 and the source page as a whole remain unreviewed.
3. **Evidence dependency — resolved in analysis.** Li 2004 and Singh 2016 current results are independent experiments. Singh Table 1 rows attributed to Li 2004 are comparison/recalculation rows, not a third independent measurement. The two experiments are not pooled to adjudicate correctness; Singh is a newer working baseline, not automatically correct by date.
4. **Model escalation — isolated.** Measured `τ/Q_t` are separated from TRS/CHFB `β2/γ`; `γ≈−80°` and `β2=0.38(2)` are model-assisted inferences, not direct shape observables.
5. **Thesis gated-intensity gap — remains open.** Lifetime data are orthogonal constraints and do not recover the unreported inputs to Alwaleedi Figure 5.5.

No raw/Git/permission anomaly was introduced. Science-only main publication remains blocked at Git authentication; fetch succeeds and no global credential setting was changed.

## P1

- The four finite Singh `Q_t` values give a weighted mean `2.579±0.099 eb`.
- Their weighted linear slope is `−0.030±0.047 eb/ℏ`: the apparent decline is only `0.64σ` in this subset. The correct L4 result is therefore a bounded null result, not a statistically established spin trend.
- Pure-E2 rotor cross-checks using Singh's `K=1/2` convention reproduce reported lifetimes within a maximum relative residual of `14.4%`; the residual is consistent with the stated branching/K-mixing/analysis simplifications.
- Li positive-parity values are reproduced near the percent level with `K=7/2`; Li negative-parity values differ by about `14–20%` with `K=9/2`, making source convention/branching assumptions a material comparison boundary.
- Petrache's HD `Q0=7.3(4) eb` is about `2.83` times the Singh finite-point mean in raw scale. Because `Q0` and `Q_t` have different geometry and band regimes, this is not a direct deformation ratio.

## Belief revision

1. **Signature/configuration coupling:** remains the leading explanation of band identity and crossings.
2. **γ-soft particle–core/core response:** lifetime/`Q_t` independently constrains E2 collectivity and possible core response, while the γ-soft label remains TRS/model-assisted; it is not independently established by the lifetime data and stays at low confidence.
3. **Shape coexistence:** revised from “no direct `131Ce` target-nucleus clue” to “plausible at the nuclear level because an independent HD sequence exists”; it remains unestablished for thesis Bands 1–7.
4. **Chirality:** unchanged—no partner-band lifetime/electromagnetic symmetry matrix.
5. **Wobbling:** unchanged—no enhanced collective out-of-band E2 evidence.

The leading synthesis is still configuration/signature coupling with a spin- or configuration-dependent core response. A γ-soft/non-axial core is a viable TRS-assisted interpretation, not a shape property independently demonstrated by the lifetime data.

## Formula and uncertainty checks

- `T(E2)=1.224×10^12 Eγ^5 CG² Q_t²` was cross-checked with source-specific K assumptions.
- Asymmetric errors are retained; one-sided `τ` limits reverse direction when mapped to `Q_t`.
- Branching fraction was set to 1 and internal conversion ignored only for the reproducibility check; all analyzed E2 transitions are above 500 keV, but the assumption remains explicit.
- Alwaleedi `B(M1)/B(E2)` retains `δ=0`: `R(δ)=R(0)/(1+δ²)`. For `|δ|≤0.5`, `R(0)` is at most 25% high relative to truth, while the difference is at most 20% relative to `R(0)`.

## Reproduction

```powershell
python outputs/l4/131ce-lifetime-update/analysis.py
python -m unittest outputs/l4/131ce-lifetime-update/test_analysis.py -v
```

Inputs and provenance are in `manifest.json`, `band-crosswalk.csv`, and `lifetimes.csv`; deterministic results are in `results.json`. Six unit tests cover the CG formula, inverse-square scaling, δ boundary, lineage deduplication, Singh residual bound, and limit direction.

## L4 status

- Workflow status: **passed** as a manually initiated, reproducible data-analysis loop that changed the evidential ranking and produced a quantitative null result.
- Scientific conclusion status: **provisional**; the Li 2004 numerical-transcription P0 is resolved, while band mapping and model-level interpretations remain review-on-use.
- Confidence: medium for lineage, band-mapping candidate, and null-trend diagnosis; low-to-medium for collective-mode ranking; no `confidence: high` claims.
