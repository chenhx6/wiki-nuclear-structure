---
type: source
title: "Nandi et al. 2020 - First Observation of Multiple Transverse Wobbling Bands of Different Kinds in 183Au"
aliases: [Nandi 2020 183Au multiple transverse wobbling]
created: 2026-07-16
updated: 2026-07-25
status: active
review_status: human-reviewed
source_type: journal-article
reading_depth: deep-read
title_original: "First Observation of Multiple Transverse Wobbling Bands of Different Kinds in 183Au"
authors: [S. Nandi, G. Mukherjee, Q. B. Chen, S. Frauendorf, R. Banik, Soumik Bhattacharya, Shabir Dar, S. Bhattacharyya, C. Bhattacharya, S. Chatterjee, S. Das, S. Samanta, R. Raut, S. S. Ghugre, S. Rajbanshi, Sajad Ali, H. Pai, Md. A. Asgar, S. Das Gupta, P. Chowdhury, A. Goswami]
journal: Physical Review Letters
year: 2020
volume: 125
pages: 132501
doi: 10.1103/PhysRevLett.125.132501
canonical_source: https://doi.org/10.1103/PhysRevLett.125.132501
citation_key: nandi_2020_FirstObservation
raw_file: "raw/papers/2020_Nandi et al_First Observation of Multiple Transverse Wobbling Bands of Different Kinds in.pdf"
raw_sha256: 3981DC7A1A1EA109C167D60A0B8FB6B0A8B0B7667D00C61D6AA34572C042F511
nuclei: [183au]
reactions: ["169Tm(20Ne,6n)183Au"]
experiments: []
models: [particle-rotor-model]
observables: [multipole-mixing-ratio, wobbling-energy, interband-e2-strengths, bm1-be2-ratio]
methods: [dco-ratio, linear-polarization-asymmetry]
tags: [experiment-ingest, transverse-wobbling, multiple-wobbling, shape-coexistence]
---

# Multiple transverse wobbling bands in `183Au`

## Bibliographic Record

PRL 125, 132501 (2020), DOI `10.1103/PhysRevLett.125.132501`; PDF/BibTeX identity checked.

## Scope and Reading Depth

- Completed reading_depth: `deep-read`
- Covered scope: full article, INGA experiment, two parity families, DCO/polarization, mixing ratios, `E_wob`, PRM/HFA and shape-coexistence interpretation.
- Not covered: independent CDFT/PRM reproduction or older band-assignment sources.
- Coverage caveats: shape coexistence is inferred through configuration-dependent wobbling/model results, not measured by an independent shape observable.

## Paper Question and Scientific Motivation

- Author-explicit motivation: test whether two parity/configuration families in `183Au` can host different transverse-wobbling bands and clarify whether E_wob must always decrease (PDF pp.1-2).

## Method and Design Logic

- Establish positive/negative-parity band links, determine E2/M1 character with DCO and polarization, map E_wob versus spin, and use PRM/HFA turning-spin behavior to interpret both families (PDF pp.2-5, Figs.1-5).

## Key Evidence and Reasoning Chain

- Large-E2 wobbling links versus low-δ signature links → band-role separation; opposite E_wob slopes → spin intervals on different sides of I_m; model mapping → two TW candidates and inferred shape coexistence.

## Summary

The paper reports two one-phonon transverse-wobbling candidates based on `πi13/2` and `πh9/2` configurations. It emphasizes that transverse `E_wob` may first rise and later fall, so a decreasing trend is not claimed as universally necessary.

## Experimental or Theoretical Setup

`169Tm(20Ne,6n)183Au` at 146 MeV with the VECC K-130 cyclotron, thick 23 mg/cm² target and eight-clover INGA.

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| NA20-1 | Positive- and negative-parity yrast/side-band pairs were connected by `ΔI=1` transitions and assigned `πi13/2` and `πh9/2` families. | experimental-fact | direct | PDF pp.2-3, Fig.1 | true |
| NA20-2 | Combined `R_DCO` and polarization fits yield large-E2 links for the proposed wobbling bands and low-`δ` M1 links for associated signature-partner bands. | experimental-criterion | direct | PDF pp.3-4, Fig.2 | true |
| NA20-3 | Negative-parity `E_wob` decreases with spin, while positive-parity `E_wob` increases over the observed range. | experimental-fact | direct | PDF p.4, Fig.3 | true |
| NA20-4 | PRM/HFA calculations introduce a turning spin `I_m`, allowing the transverse mode to rise below and fall above it. | model-result | direct | PDF pp.4-5, Figs.3-5 | true |
| NA20-5 | Authors suggest both side bands are transverse wobbling and present the positive-parity case as the first observed increasing branch of TW. | author-interpretation | indirect | PDF p.5, Summary | true |
| NA20-6 | Authors infer triaxial shape coexistence from wobbling candidates built on two parity/configuration families. | author-interpretation | indirect | PDF p.5 | true |

## Nuclear Structure Information

Two parity families are assigned πi13/2 and πh9/2 configurations with separate yrast/side-band pairs. Their measured link character is stronger evidence than the inferred coexistence of two triaxial shapes.

## Authors' Interpretation

The authors interpret both side bands as transverse wobbling and infer triaxial shape coexistence; the positive-parity increasing-E_wob branch is framed as below the model turning spin.

## Model Results

PRM/HFA reproduce the slope reversal through I_m. Configuration assignments, δ branches and deformation inputs remain dependencies rather than direct shape measurements.

## Competing Interpretations and Limitations

The “shape coexistence” conclusion is more model dependent than the measured transition character. Multiple band families do not alone prove two stable triaxial minima; independent lifetimes/shape observables would strengthen it.

## Analytical Reconstruction

| ID | 审核项 | Agent 判断 | Evidence / locator | 审核状态 |
|---|---|---|---|---|
| NA20-AR-1 | Core reconstruction | Transition character is primary, while the sign of the E_wob slope depends on the observed spin interval relative to the model turning spin. | Key Results and Competing Interpretations above | unreviewed |
| NA20-AR-2 | Assumptions and dependencies | The adopted band identities, mixing-ratio branches, configuration assignments, and model inputs are valid within the stated measured range. | Method/results/model sections cited above | unreviewed |
| NA20-AR-3 | Transfer conditions | Transfer only the measured observables and their explicit conditions; do not transfer the author interpretation without equivalent link and configuration evidence. | Source scope and claim locators above | unreviewed |
| NA20-AR-4 | Failure conditions | Alternative branch, band identity, configuration, or model dependence can weaken the structural label even when the measured transitions remain valid. | Competing Interpretations and Limitations above | unreviewed |
| NA20-AR-5 | Reverse/falsification test | Obtain independent lifetimes/multipolarities or common-input competing-model tests targeted to the stated evidence gap. | Follow-up observables identified by the source/Agent | unreviewed |
| NA20-AR-6 | Research-question decision | Retain the source in the project/synthesis evidence map with the source-local review boundary explicit. | Whole-source assessment | unreviewed |

## Knowledge Impact and Learning Decision

- Existing Wiki understanding: The Wiki already contained the broader wobbling topic and related candidate map, but not this source in a complete source-local evidence and review structure.
- Effect of this source: supports
- Reason: Transition character is primary, while the sign of the E_wob slope depends on the observed spin interval relative to the model turning spin.
- Persistence decision: project update / synthesis update
- Review state: page-level `human-reviewed`; Key Results claims remain `needs_review: true` for future claim-specific paper use.

## Related Knowledge and Project Relations

| Relation type | Target | Specific relation |
|---|---|---|
| limits | [[transverse-wobbling]] | Adds model-conditioned increasing-before-decreasing `E_wob`. |
| limits | [[triaxial-shape-coexistence]] | Candidate wobbling families support but do not independently prove shape coexistence. |

## Human Review Triage

Review disposition: the user completed a rough page-level review on 2026-07-25 and accepted the current evidence-calibrated wording without correction. The P0/P1 items below are retained as future strict paper-use verification prompts, not unresolved ingest blockers.

### P0

- P0: none identified.

### P1

- `NA20-1`/`NA20-2`, Fig.2 — Review configuration assignment and δ branch separation between wobbling and signature links. Evidence: DCO/polarization fits; Agent inference: wrong family assignment would undermine both TW cases.
- `NA20-4`/`NA20-6`, Figs.3-5 — Review the turning-spin explanation and whether two candidates justify shape coexistence. Agent inference: the energy-slope revision is model-conditioned and the coexistence claim is not an independent shape measurement. Risk: the model-dependent coexistence conclusion may be overstated.

### P2/P3

- P2: exact population and transition-value transcription. P3: metadata/navigation.

## Human Review Record

- 2026-07-25: the user completed a rough review of this source page and accepted its current claims, attribution boundaries, locators and stated limitations without requesting corrections.

## Review Status

Page-level review is complete for this ingest round. Claim-level `needs_review` and Analytical Reconstruction review markers remain unchanged because this was a rough review rather than exhaustive claim-by-claim paper certification.

## Extracted Pages

- Nuclei: [[183au]]
- Concepts: [[transverse-wobbling]], [[triaxial-shape-coexistence]]
- Methods: [[dco-ratio]], [[linear-polarization-asymmetry]]

## Non-source Notes and Follow-up

Keep “clear experimental evidence” and “first observation” attributed to the authors.
