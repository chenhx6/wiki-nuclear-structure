---
type: source
title: "Jensen et al. 2002 - Evidence for Second-Phonon Nuclear Wobbling"
aliases: [Jensen 2002 163Lu second phonon wobbling, Evidence for Second-Phonon Nuclear Wobbling]
created: 2026-07-16
updated: 2026-07-25
status: active
review_status: human-reviewed
source_type: journal-article
reading_depth: deep-read
title_original: "Evidence for Second-Phonon Nuclear Wobbling"
authors: [D. R. Jensen, G. B. Hagemann, I. Hamamoto, S. W. Ødegård, B. Herskind, G. Sletten, J. N. Wilson, K. Spohr, H. Hübel, P. Bringel, A. Neußer, G. Schönwaßer, A. K. Singh, W. C. Ma, H. Amro, A. Bracco, S. Leoni, G. Benzoni, A. Maj, C. M. Petrache, G. Lo Bianco, P. Bednarczyk, D. Curien]
journal: Physical Review Letters
year: 2002
volume: 89
pages: 142503
doi: 10.1103/PhysRevLett.89.142503
arxiv:
language: English
canonical_source: https://doi.org/10.1103/PhysRevLett.89.142503
zotero_item_key:
citation_key: jensen_2002_EvidenceSecondPhonon
zotero_uri:
library_file:
raw_file: "raw/papers/2002_Jensen et al_Evidence for Second-Phonon Nuclear Wobbling.pdf"
raw_sha256: C6FD99C17C09763F742CBE36443F7039F21B3E28A5CAA548748BDF0718630A8A
nuclei: [163lu]
reactions: ["139La(29Si,5n)163Lu"]
experiments: []
models: [particle-rotor-model]
observables: [multipole-mixing-ratio, interband-e2-strengths, bm1-be2-ratio, moments-of-inertia]
methods: [gamma-gamma-coincidence, dco-ratio, angular-distribution]
tags: [experiment-ingest, wobbling, two-phonon, triaxial-superdeformation, lutetium]
---

# Evidence for Second-Phonon Nuclear Wobbling

## Bibliographic Record

PRL 89, 142503 (2002), DOI `10.1103/PhysRevLett.89.142503`; first-page title/DOI and BibTeX key `jensen_2002_EvidenceSecondPhonon` match.

## Scope and Reading Depth

- Completed reading_depth: `deep-read`
- Covered scope: full article, level scheme, TSD3 decay links, DCO/angular-distribution ratios, two mixing-ratio branches, relative transition strengths and particle-rotor comparison.
- Not covered: independent reproduction of efficiency corrections or model calculations.
- Coverage caveats: the decisive 476-keV link lacks usable polarization, so branch selection is model- and similarity-dependent.

## Paper Question and Scientific Motivation

- Test whether TSD3 is a two-phonon wobbling excitation by establishing `TSD3→TSD2` links and checking the phonon-rule enhancement relative to `TSD2→TSD1` (PDF pp.1-2).

## Method and Design Logic

- A higher-statistics Euroball IV run establishes four `ΔI=1` TSD3→TSD2 and eight `ΔI=2` TSD3→TSD1 transitions.
- DCO/angular-distribution ratios constrain multipolarity; the 476-keV link's two `δ` branches are compared with band similarities and particle-rotor transition strengths.

## Key Evidence and Reasoning Chain

- Similar `J^(2)` and relative alignment for TSD2/TSD3 → shared intrinsic family (PDF pp.3-4, Fig.4).
- Large-`abs(δ)` solution for the 476-keV link gives `B(E2)_out/B(E2)_in=0.51(13)`, approximately twice the one-phonon value `0.21(1)` → consistent with the phonon rule (PDF p.3, Table II; p.4, Fig.5).
- Small-`abs(δ)` solution cannot be rejected experimentally because polarization failed; authors reject it through model/band-family consistency and assign TSD3 as two-phonon wobbling.

## Summary

The paper presents evidence, not a polarization-complete experimental determination, for a second-phonon wobbling band in `163Lu`. Its strongest claim depends on choosing the large-E2 branch of one measured TSD3→TSD2 transition.

## Experimental or Theoretical Setup

- `139La(29Si,5n)163Lu`, 157 MeV Vivitron beam at IReS Strasbourg.
- Euroball IV: 15 cluster, 25 clover and 27 tapered Compton-suppressed Ge detectors plus BGO multiplicity filter.
- Approximately `6×10^9` γ-coincidence events; `γ^3` cube plus angle-pair matrices.
- Alignment parameter `σ/I=0.25(2)` over `61/2` to `29/2`.

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| JE02-1 | Four `ΔI=1` TSD3→TSD2 and eight `ΔI=2` TSD3→TSD1 transitions were established; TSD3 reaches `85/2`. | experimental-fact | direct | PDF p.2, Figs.1-2 | true |
| JE02-2 | Angular-distribution and DCO ratios support stretched E2 character for TSD3→TSD1 links and mixed E2/M1 for the 476-keV TSD3→TSD2 link. | experimental-criterion | direct | PDF pp.2-3, Tables I-II | true |
| JE02-3 | Polarization of the 476-keV link could not be measured; experiment alone therefore could not select between `δ=-3.60^{+0.97}_{-1.93}` and `δ=-0.19^{+0.08}_{-0.12}`. | experimental-fact | direct | PDF p.3 | true |
| JE02-4 | The adopted large branch corresponds to about `92.8%` E2 and `B(E2)_out/B(E2)_in=0.51(13)`; the small branch gives `0.019^{+0.024}_{-0.017}`. | experimental-fact | direct | PDF p.3, Table II | true |
| JE02-5 | TSD2 and TSD3 have nearly identical dynamic moments of inertia and relative alignments, differing by only about `0.1ħ`. | experimental-fact | direct | PDF pp.3-4, Fig.4 | true |
| JE02-6 | Particle-rotor calculations associate TSD1/TSD2/TSD3 with `n_w=0/1/2` and reproduce the large-E2 branch and approximate phonon scaling. | model-result | direct | PDF pp.3-4, Figs.3 and 5 | true |
| JE02-7 | The authors assign TSD3 as two-phonon wobbling and state that this proves triaxial deformation. | author-interpretation | indirect | PDF p.4, conclusion | true |
| JE02-8 | Calculated M1 strength exceeds the experimental upper limit by more than a factor two; authors attribute this partly to omitted gradual neutron alignment. | model-result | direct | PDF p.4 | true |

## Nuclear Structure Information

TSD1, TSD2 and TSD3 populations are reported as about 10%, 3% and 1.2% of yrast. TSD3 decays both to TSD2 (`ΔI=1`) and directly to TSD1 (`ΔI=2`), the latter weak links being attributed to anharmonicity.

## Authors' Interpretation

TSD3 is assigned as `n_w=2`, mainly because the large-E2 branch yields the expected enhancement and the three bands share rotational properties. The paper's “proves triaxial deformation” wording is preserved as attribution.

## Model Results

The particle-rotor calculation identifies four low bands as a wobbling family and uses angular-momentum components to illustrate increasing tilt with phonon number. The predicted M1 discrepancy and the dependence on the selected `δ` branch are material limitations.

## Competing Interpretations and Limitations

- No experimental polarization branch selection for the 476-keV transition.
- Only one of four TSD3→TSD2 links yields a transition-strength ratio.
- The small-`δ` branch is rejected by comparison with calculated band families, not by an independent direct observable.
- Relative rather than absolute strengths are used.

## Analytical Reconstruction

| ID | 审核项 | Agent 判断 | Evidence / locator | 审核状态 |
|---|---|---|---|---|
| JE02-AR-1 | Core reconstruction | TSD3 adds an experimentally connected third band and a proposed n_w=2 hierarchy, but the decisive strength point depends on an unpolarized 476-keV link. | Key Results and Competing Interpretations above | unreviewed |
| JE02-AR-2 | Assumptions and dependencies | The large-|δ| solution for the 476-keV link and the common TSD band family selected by the PRM comparison are correct. | Method/results/model sections cited above | unreviewed |
| JE02-AR-3 | Transfer conditions | Require multiple adjacent-band links, branch-independent electromagnetic information, and stable band identity before transferring a multiphonon label. | Source scope and claim locators above | unreviewed |
| JE02-AR-4 | Failure conditions | The small-|δ| solution removes the phonon-rule enhancement; one usable TSD3→TSD2 point cannot establish robust scaling by itself. | Competing Interpretations and Limitations above | unreviewed |
| JE02-AR-5 | Reverse/falsification test | Obtain polarization and lifetimes for several TSD3→TSD2 links and retest Table II without model-selected branch choice. | Follow-up observables identified by the source/Agent | unreviewed |
| JE02-AR-6 | Research-question decision | Keep as an early two-phonon benchmark with a prominent single-point/branch-selection warning. | Whole-source assessment | unreviewed |

## Knowledge Impact and Learning Decision

- Existing Wiki understanding: The Wiki contained the one-phonon TSD1/TSD2 benchmark but no independently reviewed two-phonon strength test.
- Effect of this source: revises
- Reason: TSD3 adds an experimentally connected third band and a proposed n_w=2 hierarchy, but the decisive strength point depends on an unpolarized 476-keV link.
- Persistence decision: project update / synthesis update
- Review state: page-level `human-reviewed`; Key Results claims remain `needs_review: true` for future claim-specific paper use.

## Related Knowledge and Project Relations

| Relation type | Target | Specific relation |
|---|---|---|
| supports | [[wobbling-motion]] | Early adjacent-band phonon-scaling test. |
| limits | [[interband-e2-strengths]] | Demonstrates how an unresolved `δ` branch controls the inferred enhancement. |
| foundational-background | [[low-spin-wobbling-controversies]] | High-spin multiphonon benchmark, not direct low-spin evidence. |

## Human Review Triage

Review disposition: the user completed a rough page-level review on 2026-07-25 and accepted the current evidence-calibrated wording without correction. The P0/P1 items below are retained as future strict paper-use verification prompts, not unresolved ingest blockers.

### P0

- `JE02-3`/`JE02-4`, 476-keV TSD3→TSD2 link, Table II — Evidence: polarization failed and two δ solutions remain; only the large-|δ| branch gives `B(E2)_out/B(E2)_in=0.51(13)`. Agent inference: the headline two-phonon scaling rests on one model-selected effective strength point. User check: Table II values, branch choice, and whether the band-family argument justifies rejection of the small branch. Risk: the n_w=2 evidence chain collapses if the small branch is viable.

### P1

- `JE02-6`/`JE02-8` — Review the PRM family assignment and M1 overprediction before using the paper as a quantitative multiphonon benchmark.

### P2/P3

- P2: weak direct TSD3→TSD1 links and anharmonicity wording. P3: metadata/navigation.

## Human Review Record

- 2026-07-25: the user completed a rough review of this source page and accepted its current claims, attribution boundaries, locators and stated limitations without requesting corrections.

## Review Status

Page-level review is complete for this ingest round. Claim-level `needs_review` and Analytical Reconstruction review markers remain unchanged because this was a rough review rather than exhaustive claim-by-claim paper certification.

## Extracted Pages

- Nuclei: [[163lu]]
- Bands: [[163lu-sd1]], [[163lu-sd2]], [[163lu-tsd3]]
- Concepts: [[wobbling-motion]]
- Methods: [[dco-ratio]], [[angular-distribution]]

## Non-source Notes and Follow-up

Keep the 476-keV/Table II branch issue in source-local P0 until user review.
