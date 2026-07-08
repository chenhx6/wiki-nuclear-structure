---
type: project
title: "Sigma-over-I uncertainty in P-ADO mixing-ratio extraction"
aliases: [sigma over I uncertainty, sigma/I uncertainty, P-ADO sigma over I, alignment uncertainty in P-ADO, NST sigma-over-I evidence map]
created: 2026-07-08
updated: 2026-07-08
status: active
review_status: human-reviewed
project_stage: evidence-map
confidentiality: private
nuclei: []
tags: [pado, mixing-ratio, angular-distribution, polarization, alignment, sigma-over-i, evidence-map, nst-writing-support]
---

# Sigma-over-I Uncertainty in P-ADO Mixing-Ratio Extraction

## Active Summary for Agents

Current task: first-round sequential ingest and user-review finalization of three core formalism/experiment sources for the question why a single preset `σ/I` value is unsafe or model-dependent in in-beam γ-ray mixing-ratio extraction.

Completed source rows: [[draper-1970-gaussian-substate-side-feeding]]; [[zobel-1980-magnetic-substate-distributions]]; [[zobel-1983-energy-projectile-alignment]].

In-progress / pending source rows: none for this prompt.

High-risk symbol boundary: Draper `σ` is Gaussian width for side-feeding substate population; later `σ/I`, `σ/J`, attenuation coefficients `αK`/`Gk`, and angular-distribution coefficients `A2/A4` are related descriptions of alignment/orientation but are not identical variables.

## Research Question

Why is it unsafe or model-dependent to preset a single `σ/I` value when extracting γ-ray mixing ratios from in-beam angular-distribution and polarization observables?

## Scope

This is an evidence map / writing-support project for NST paper and future thesis text. It is not a final synthesis, not a paper conclusion, and not a claim that all P-ADO analyses fail. The goal is to assemble source-level evidence that alignment, magnetic-substate population, side feeding and reaction conditions can change the angular-distribution response used in `δ` extraction.

## Current Hypotheses

- H1: Presetting a single `σ/I` can hide feeding- and condition-dependent alignment uncertainty.
- H2: P-ADO should expose the coupling between `δ` and alignment/population assumptions rather than treat alignment as a universal constant.
- H3: The three ingested sources motivate caution but do not yet define a final prior range for user data.

## Evidence Available

Current evidence consists of Draper 1970 formal side-feeding treatment, Zobel 1980 attenuation/ALY/Gaussian-condition analysis, and Zobel 1983 projectile/energy/feeding dependence in `67Ga`.

## Symbol Mapping

| Symbol or term | Source-level meaning | Project boundary |
|---|---|---|
| `σ` in Draper 1970 | Gaussian width of side-feeding magnetic-substate population `Pσ(M)` | Do not equate directly with `σ/I`; use as evidence that width assumptions are model choices. |
| `A2`, `A4` | Legendre angular-distribution coefficients for `W(θ)` | Observables affected by population/alignment and transition properties. |
| `αK` in Zobel 1980 | Attenuation coefficients `PK/BK` for actual partial alignment relative to complete alignment | Related to alignment, but not identical to Gaussian `σ` or normalized `σ/I`. |
| projectile / energy / feeding condition | Experimental context controlling alignment attenuation in Zobel 1983 | Do not transfer a fixed alignment parameter across different conditions without check. |
| magnetic-substate population `P(M)` | Population over `M` substates of the emitting level | Underlying physical/statistical object behind alignment descriptions. |
| side feeding | Population component from outside the main cascade/band | One mechanism that changes `P(M)` and therefore angular distributions. |

## Source-by-Source Evidence Table

| Source | Strategy | Direct contribution to project | Key claim IDs | Review priority |
|---|---|---|---|---|
| [[draper-1970-gaussian-substate-side-feeding]] | theory-ingest + method-ingest + project-ingest | Shows that stretched-E2 `A2/A4` depend on Gaussian side-feeding width, cascade feeding and side-feeding intensities; provides exact treatment and allowed coefficient-space boundaries. | DR70-1 to DR70-10 | P0 resolved: DR70-3, DR70-6, DR70-7 |
| [[zobel-1980-magnetic-substate-distributions]] | experiment-ingest + method-ingest + project-ingest | Shows that angular-distribution-only fitting has more unknowns than measured coefficients unless alignment is known or modeled; documents ALY/Gaussian assumptions, their conditions and lifetime/Doppler effects on `αK`. | Z80-1 to Z80-13 | P0 resolved: Z80-2, Z80-3, Z80-10 |
| [[zobel-1983-energy-projectile-alignment]] | experiment-ingest + method-ingest + project-ingest | Shows that attenuation coefficients vary with projectile, incident energy and direct/cascade feeding balance; warns against combining angular-distribution and polarization data from different conditions. | Z83-1 to Z83-10 | P0 resolved: Z83-5, Z83-8, Z83-9 |

## Evidence Map

| ID | Project statement | Source basis | claim_kind | Boundary / gap | needs_review |
|---|---|---|---|---|---|
| SIO-PROJ-1 | Even before mixed `M1/E2` transitions are fitted, angular-distribution coefficients for stretched E2 transitions depend on magnetic-substate population and feeding history. | DR70-2 to DR70-7 | Wiki synthesis / project note | Based on a stretched-E2 side-feeding formalism; not a direct P-ADO calculation. | false |
| SIO-PROJ-2 | A single Gaussian width can be a useful model input in selected comparisons, but Draper 1970 treats it as an assumed side-feeding population form rather than an experimental constant. Final-level populations may be mixed `\bar{P}(M)` distributions rather than single Gaussians. | DR70-3, DR70-8, DR70-9 | Wiki synthesis / project note | Need later P-ADO notation mapping before equating Draper `σ` with normalized `σ/I`. | false |
| SIO-PROJ-3 | If alignment is known, angular distributions can constrain multipolarity and mixing ratio; if not, `α2`, `α4`, and `δ` create an underconstrained fit unless extra information or a population model is supplied. Zobel's three routes are model-estimated attenuation coefficients, additional polarization/conversion data, or a one-parameter magnetic-substate distribution. | Z80-1 to Z80-4 | Wiki synthesis / project note | This is the direct method argument for why silently fixing `σ/I` can make `δ` extraction assumption-dependent. | false |
| SIO-PROJ-4 | Gaussian or ALY-based alignment assumptions are conditional, with explicit risks from β feeding, isomers, short lifetimes, Doppler broadening, lifetime-dependent shifts of `αK` pairs, and feeding-component mixtures. | Z80-7 to Z80-13 | Wiki synthesis / project note | Does not imply Gaussian assumptions are invalid in all cases; it identifies conditions that must be checked. | false |
| SIO-PROJ-5 | Alignment attenuation can change with projectile, incident energy and the direct/cascade feeding balance, so a preset alignment parameter is condition-specific rather than universally transferable. | Z83-3 to Z83-8 | Wiki synthesis / project note | Based on `67Ga`; generalization to user data requires reaction-specific checks. | false |
| SIO-PROJ-6 | Combining angular-distribution and polarization constraints for `δ` should preserve beam/projectile/target consistency or explicitly model condition differences. | Z83-9 | Wiki synthesis / project note | This is a methodological caution, not a ban on combining datasets. | false |

## How This Supports P-ADO / NST Introduction

Draper 1970 supports a cautious wording: the alignment or population-width parameter used in angular-distribution calculations is a model-dependent representation of how the emitting state was populated. A normalized Gaussian side-feeding population can feed a final level that is simultaneously populated by other components, producing a mixed `\bar{P}(M)` rather than a single Gaussian with one transferable width.

Zobel 1980 adds the direct angular-distribution-analysis reason: two measured angular-distribution coefficients cannot by themselves determine `α2`, `α4` and `δ` without extra information or a model. The paper's three routes out of the ambiguity are exactly the choices later P-ADO writing must make explicit: estimate attenuation coefficients, add independent polarization/conversion information, or impose a one-parameter substate-population form. If a later analysis does not respect the state-dependent alignment scale, commonly expressed as `σ/I` in Gaussian parameterizations, the extracted `δ` can become credible only within an unstated population model.

Zobel 1980 also supplies a condition checklist for when Gaussian/ALY assumptions are plausible: no β feeding, no preceding isomeric state, and long enough lifetime to neglect Doppler broadening. Fig.5 is important for the writing argument because it shows that lifetime-dependent Doppler line-shape loss can move apparent `αK` pairs, not merely broaden a peak aesthetically.

Zobel 1983 adds the experimental context: alignment changes with projectile, energy and feeding balance, and angular-distribution/polarization constraints should be kept condition-consistent. Together, these sources motivate explicit P-ADO handling of alignment uncertainty; they do not by themselves prescribe one universal `σ/I` prior.

## Evidence Gaps

- Need mapping from the user's actual P-ADO implementation to source symbols before writing final equations.
- Need source-level check of whether later P-ADO notation uses `σ/I`, `σ/J`, or another normalized width convention.
- Need user-data-specific check of reaction, beam energy, target, detector geometry, feeding pattern and polarization/ADO acquisition conditions.

## Future Writing Hooks

- "The alignment width is not just a detector-setting parameter; it represents assumptions about the population of magnetic substates."
- "Side feeding and cascade history can move the expected angular-distribution coefficients even for stretched E2 transitions."
- "Two ADO coefficients do not determine `α2`, `α4` and `δ` simultaneously; any extraction must import alignment information from a model or an independent observable."
- "P-ADO can be motivated as a way to expose, rather than bury, the coupling between `δ` and alignment uncertainty."

## Claims Not Yet Ready for Paper Evidence Gate

| Candidate | Why not ready |
|---|---|
| `σ/I` must always be fitted rather than fixed | Current source supports model dependence but does not evaluate all practical P-ADO cases. |
| A universal prior range for `σ/I` | No source in this project has yet established a transferable numerical range. |
| Draper Gaussian `σ` equals P-ADO `σ/I` | Explicitly not ready; symbol mapping remains unresolved. |

## Risks and Blockers

- Source symbols are not identical; `σ`, `σ/I`, `αK`, `A2/A4` and feeding fractions must remain separated.
- Source and project claims from this three-source ingest were user-reviewed on 2026-07-08; final paper wording still needs source locator checks and user-data-specific mapping.
- User data conditions and P-ADO implementation details are not yet mapped to the source notation.

## Next Actions

1. Map the actual P-ADO code/input convention for `σ/I` to the source-level variables.
2. Add user-data-specific reaction and detector condition records before turning the project into writing text.

## Related Pages

- [[magnetic-substate-population]]
- [[side-feeding]]
- [[sigma-over-i]]
- [[angular-distribution]]
- [[angular-distribution-coefficient]]
- [[multipole-mixing-ratio]]
