---
type: output
title: 131Ce thesis-only L4 baseline analysis
created: 2026-07-27
updated: 2026-07-27
status: provisional
review_status: unreviewed
tags: [l4, 131ce, branching-ratio, data-gap]
---

# `131Ce` thesis-only L4 baseline analysis

## Scope

This L4 run uses only Alwaleedi 2013 as the data source. It builds a seven-band parity/configuration crosswalk and tests whether Tables 4.1-4.7 are sufficient to reproduce the published `B(M1)/B(E2)` comparison. The user's independent `131Ce` experiment is not read or merged.

## P0

- **Scientific reproducibility gap, isolated:** Section 5.3 says Figure 5.5 used spectra gated above the level of interest, but the gated branching intensities are not tabulated. Tables 4.1-4.7 instead give global intensities relative to the 508 keV line. Values computed from those tables are retained only as diagnostic proxies and are not promoted to published `B(M1)/B(E2)` measurements.
- **Data/Git/permission P0:** none identified. The source PDF is read-only; all derived files are under this output directory; `raw/zotero/wiki-inbox.bib` remains protected and unstaged.

## P1

1. The user Figure 4.1-based working parity map is internally consistent with Tables 4.1-4.7 and Chapter 5: Bands 2/3/5 positive, Bands 1/4/6/7 negative. Table 5.1 Band 2 negative parity is a probable typo/source conflict, not silently corrected source text.
2. Equation 5.6 gives `R(delta)=R(0)/(1+delta^2)`. At `|delta|<=0.5`, `delta=0` overestimates the true value by at most 25% relative to the true value; the difference is at most 20% relative to `R(0)`. The sign does not alter this correction.
3. Thirty-five same-initial-state branch pairs can be formed from the tables. Their `delta=0` proxy ranges are approximately 1.21-23.30 (Band 1), 1.02-5.22 (Band 2), 3.23-7.62 (Band 5), and 0.97-34.79 (Band 7). These do not reproduce Figure 5.5.
4. Even the maximum allowed correction in the requested scan leaves the largest proxies at 18.64 and 27.83, far outside the approximate Figure 5.5 range near 0.5-5.0. Unknown `delta` within `|delta|<=0.5` cannot explain the mismatch.

## Quantitative interpretation

The L4 run changes the evidential weighting, not the leading mode label. Signature/configuration coupling remains provisionally preferred because it is independently supported by the level scheme, crossing frequencies, alignments, and Table 5.3 mapping. However, the thesis claim that Figure 5.5 strengthens those assignments cannot be independently reproduced from its published tables, so that ratio-based reinforcement receives lower independent weight.

A gamma-soft or spin-dependent non-axial core response remains a viable background. Chirality, wobbling, and shape coexistence remain unsupported or unestablished for this `131Ce` baseline because the dataset lacks band-mapped lifetimes, absolute `B(E2)/B(M1)`, `Q_t`, measured mixing ratios/polarization, and a complete interband electromagnetic matrix. The ratio scan alone does not create the collective out-of-band E2 evidence required for wobbling.

## 2016 lifetime decision

The thesis-only run increases the value of an orthogonal lifetime source. DOI `10.1007/s12043-016-1218-6` should be acquired and ingested only if its full text contains `131Ce` lifetimes, `B(E2)`, or `Q_t` that can be mapped to the same bands/spins. Such data could change the weight of gamma-soft/core response and shape-coexistence interpretations even though it will not recover the missing gated intensities.

## Reproduction

Run:

```powershell
python outputs/l4/131ce-thesis-baseline/analysis.py
python -m unittest outputs/l4/131ce-thesis-baseline/test_analysis.py -v
```

`results.json` is generated deterministically from `levels.csv`, `transitions.csv`, and the stated assumptions. Figure 5.5 envelopes are explicitly approximate visual audit bounds, not digitized source data.

## Status

- L4 classification: completed thesis-only quantitative baseline with a reproducibility failure finding.
- Confidence: medium for the data-gap diagnosis; low-to-medium for physical-mode ranking beyond configuration/signature coupling.
- Formal conclusion status: provisional; user review required before use in a manuscript or promotion to high confidence.
