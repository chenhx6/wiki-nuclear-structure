---
type: project
title: "Sigma-over-I uncertainty in P-ADO mixing-ratio extraction"
aliases: [sigma over I uncertainty, sigma/I uncertainty, P-ADO sigma over I, alignment uncertainty in P-ADO, NST sigma-over-I evidence map]
created: 2026-07-08
updated: 2026-07-09
status: active
review_status: human-reviewed
project_stage: evidence-map
confidentiality: private
nuclei: []
tags: [pado, mixing-ratio, angular-distribution, polarization, alignment, sigma-over-i, evidence-map, nst-writing-support]
---

# Sigma-over-I Uncertainty in P-ADO Mixing-Ratio Extraction

## Active Summary for Agents

Current task: article10-11 supplemental source-note ingest has been user-reviewed and finalized as part of the sigma-over-I alignment-limitation evidence map.

Completed source rows: [[draper-1970-gaussian-substate-side-feeding]]; [[zobel-1980-magnetic-substate-distributions]]; [[zobel-1983-energy-projectile-alignment]]; [[cejnar-1996-spin-deorientation-alpha-2n-gamma]]; [[radeck-2012-deorientation-lifetime-98ru-rdds]]; [[lauritsen-2025-gamma-angular-formalism-tracking-arrays]]; [[chiara-2012-cu65-cu67-core-coupled-protons]]; [[summary-2013-bases-spin-parity-assignments]]; [[gray-2020-hyperfine-fields-g-factor-measurements]]; [[ekstrom-1979-spin-alignment-attenuation-a61-a67]]; [[ionescu-1981-improved-angular-distribution-analysis-particle-xn]].

In-progress / pending source rows: none for article10-11 source-note ingest. Ekstrom/Ionescu source claims and SIO-PROJ-16..19 were user-reviewed and finalized on 2026-07-09.

High-risk scope boundary: Draper and Cejnar `σ` are Gaussian widths for side-feeding magnetic-substate population; Ekstrom 1979 uses spin-alignment attenuation factors `alpha2/alpha4` and MANDY/CNR alignment estimates; Ionescu 1981 uses Gaussian width `σ` plus explicit discrete direct-feeding terms and discusses `rho2/rho4` statistical-tensor factors rather than Ekstrom-style attenuation factors; Summary 2013 gives a guide-level typical `σ/I = 0.3`; Lauritsen 2025 directly uses Gaussian `Pm(J)` and normalized `σ/J`; Gray 2020 discusses empirical `σ/I ≈ 0.35` and its failure in an isomeric TDPAD context. These entries all touch alignment/orientation practice, but they do not by themselves define a universal prior.

## Research Question

Why is it unsafe or model-dependent to preset a single `σ/I` value when extracting γ-ray mixing ratios from in-beam angular-distribution and polarization observables?

## Scope

This is an evidence map / writing-support project for NST paper and future thesis text. It is not a final synthesis, not a paper conclusion, and not a claim that all P-ADO analyses fail. The goal is to assemble source-level evidence that alignment, magnetic-substate population, side feeding and reaction conditions can change the angular-distribution response used in `δ` extraction.

## Current Hypotheses

- H1: Presetting a single `σ/I` can hide feeding- and condition-dependent alignment uncertainty.
- H2: P-ADO should expose the coupling between `δ` and alignment/population assumptions rather than treat alignment as a universal constant.
- H3: The accumulated source set motivates caution but does not yet define a final prior range for user data.

## Evidence Available

Current evidence consists of Draper 1970 formal side-feeding treatment, Zobel 1980 attenuation/ALY/Gaussian-condition analysis, Zobel 1983 projectile/energy/feeding dependence in `67Ga`, Ekstrom 1979 compiled spin-alignment attenuation factors plus MANDY/CNR uncertainty and Gaussian-limitation arguments, Ionescu 1981 feeding-aware angular-distribution analysis in `167Tm`, Cejnar 1996 spin-deorientation calculation in `Pd(α,2nγ)Cd` reactions, Radeck 2012 time-dependent deorientation correction in inverse Coulomb excitation + RDDS, Lauritsen 2025 modern tracking-array angular-distribution / polarization formalism, Chiara 2012 as a spectroscopy practice example using assumed `σ/I`, Summary 2013 as reference-guide high-spin assignment background with typical `σ/I = 0.3`, and Gray 2020 as a TDPAD / `g`-factor boundary case where empirical `σ/I` expectations can fail.

## Symbol Mapping

| Symbol or term | Source-level meaning | Project boundary |
|---|---|---|
| `σ` in Draper 1970 | Gaussian width of side-feeding magnetic-substate population `Pσ(M)` | Do not equate directly with `σ/I`; use as evidence that width assumptions are model choices. |
| `A2`, `A4` | Legendre angular-distribution coefficients for `W(θ)` | Observables affected by population/alignment and transition properties. |
| `rho_k` in Ionescu 1981 | Statistical-tensor factor built from magnetic-substate population `Pm(Ji)`; Fig.3 uses `rho2` and `rho4` for pure-`E2` tests | Related to attenuation-factor language, but not identical notation; do not silently relabel `rho_k` as `alpha_k`. |
| `alpha2`, `alpha4` in Ekstrom 1979 | Spin-alignment attenuation factors reduced from pure-E2 angular distributions | Alignment descriptors constrained by pure-E2 data; not the same symbol layer as Gaussian width `σ` or user-code `σ/I`. |
| MANDY / CNR alignment estimate | Compound-nucleus-reaction-model prediction for alignment/population parameters derived from transmission probabilities | A model-based alignment estimate that needs its own uncertainty budget; not the same thing as P-ADO marginalization over `σ/I`. |
| `σ` in Ionescu 1981 | Width parameter for the Gaussian side-feeding contribution to the substate population | In the improved model it describes side feeding only, not the total population of a level. |
| `αK` in Zobel 1980 | Attenuation coefficients `PK/BK` for actual partial alignment relative to complete alignment | Related to alignment, but not identical to Gaussian `σ` or normalized `σ/I`. |
| `Uλ` in Cejnar 1996 | Deorientation coefficient for a particle or γ transition from `Ji` to `Jf` carrying angular momentum `L` | Propagates orientation flow through reaction routes; not the same as `σ`, `σ/I`, `σ/J` or measured `αK`. |
| `Gk(t)` / `Gk(d)` in Radeck 2012 | Time- or distance-dependent attenuation factor for hyperfine-driven deorientation in RDDS angular correlations | Related deorientation correction, but not a side-feeding Gaussian width or detector `Qk`. |
| `Qk` in Radeck 2012 | Detector finite-solid-angle correction in the angular-correlation function | Detector geometry term; do not confuse with nuclear alignment/deorientation attenuation. |
| `Pm(J)` in Lauritsen 2025 | Magnetic-substate distribution for level spin `J`, usually Gaussian with respect to the beam axis | Direct bridge from alignment population to `alpha_k(J)` and normalized `sigma/J`; still not automatically identical to user-code `sigma/I`. |
| `sigma/J` in Lauritsen 2025 | Normalized Gaussian width characterizing `Pm(J)`; `sigma/J=0` indicates full alignment | Closest source-level notation to project `sigma/I`; must be mapped to the user's convention before paper wording. |
| `σ/I` in Summary 2013 | Typical magnetic-substate population parameter used in high-spin angular-distribution and DCO assignment heuristics | Practice-level orientation parameter; keep it as guide-level background rather than a universal default. |
| `alpha_k` in Lauritsen 2025 | In source angular correlations: detector solid-angle attenuation; in in-beam angular distributions: nuclear alignment/deorientation attenuation from `Pm(J)` | Preserve local formula context; do not merge detector and nuclear attenuation meanings. |
| `R(t)` amplitude in Gray 2020 | TDPAD observable depending on both alignment `B2` and the field-free fraction `p` after implantation | A reduced amplitude does not uniquely diagnose weaker alignment or more field-free sites without independent information. |
| projectile / energy / feeding condition | Experimental context controlling alignment attenuation in Zobel 1983 | Do not transfer a fixed alignment parameter across different conditions without check. |
| magnetic-substate population `P(M)` | Population over `M` substates of the emitting level | Underlying physical/statistical object behind alignment descriptions. |
| side feeding | Population component from outside the main cascade/band | One mechanism that changes `P(M)` and therefore angular distributions. |
| direct gamma feeding | Population carried by explicitly observed discrete parent-state gamma transitions | Can require a separate term in the population model rather than being folded into one global Gaussian width. |

## Source-by-Source Evidence Table

| Source | Strategy | Direct contribution to project | Key claim IDs | Review priority |
|---|---|---|---|---|
| [[draper-1970-gaussian-substate-side-feeding]] | theory-ingest + method-ingest + project-ingest | Shows that stretched-E2 `A2/A4` depend on Gaussian side-feeding width, cascade feeding and side-feeding intensities; provides exact treatment and allowed coefficient-space boundaries. | DR70-1 to DR70-10 | P0 resolved: DR70-3, DR70-6, DR70-7 |
| [[zobel-1980-magnetic-substate-distributions]] | experiment-ingest + method-ingest + project-ingest | Shows that angular-distribution-only fitting has more unknowns than measured coefficients unless alignment is known or modeled; documents ALY/Gaussian assumptions, their conditions and lifetime/Doppler effects on `αK`. | Z80-1 to Z80-13 | P0 resolved: Z80-2, Z80-3, Z80-10 |
| [[zobel-1983-energy-projectile-alignment]] | experiment-ingest + method-ingest + project-ingest | Shows that attenuation coefficients vary with projectile, incident energy and direct/cascade feeding balance; warns against combining angular-distribution and polarization data from different conditions. | Z83-1 to Z83-10 | P0 resolved: Z83-5, Z83-8, Z83-9 |
| [[cejnar-1996-spin-deorientation-alpha-2n-gamma]] | theory-ingest + method-ingest + project-ingest | Calculates spin deorientation through angular-momentum routes, tests the side-feeding Gaussian hypothesis, and shows that the imposed `σ` interval can change `δ` extraction. | C96-1 to C96-11 | P0 resolved: C96-4, C96-5, C96-10 |
| [[radeck-2012-deorientation-lifetime-98ru-rdds]] | method-ingest + experiment-ingest + project-ingest | Demonstrates time-dependent deorientation correction with particle-γ angular correlations and separates `Rk`, `Bk`, `Qk`, `Gk` and deorientation correction factors in inverse Coulomb excitation + RDDS. | R12-1 to R12-12 | P0 resolved: R12-3, R12-7, R12-8, R12-10 |
| [[lauritsen-2025-gamma-angular-formalism-tracking-arrays]] | method-review-ingest + project-ingest | Provides modern tracking-array formalism connecting `delta`, `alpha_k`, Gaussian `Pm(J)`, `sigma/J`, response functions, DCO and linear polarization. | L25-1 to L25-16 | P0 resolved: L25-5, L25-7, L25-8, L25-14, L25-15 |
| [[chiara-2012-cu65-cu67-core-coupled-protons]] | experiment-ingest + targeted-ingest + project-ingest | Gives a concrete spectroscopy practice example where `σ/I = 0.5` is assumed to reproduce known transitions and a different assumed `σ/I` changes the fitted `δ` for one `65Cu` line. | CH12-1 to CH12-8 | P0 resolved: CH12-3, CH12-5 |
| [[summary-2013-bases-spin-parity-assignments]] | reference-guide-ingest + targeted-ingest + project-ingest | Records high-spin assignment heuristics for angular distributions and DCO ratios at a typical `σ/I = 0.3`, making the practice background explicit while keeping it at guide level. | SB13-1 to SB13-7 | P0 resolved: SB13-2, SB13-4, SB13-7 |
| [[gray-2020-hyperfine-fields-g-factor-measurements]] | experiment-ingest + method-ingest + project-ingest | Shows in a TDPAD / `g`-factor context that empirical alignment expectations such as `σ/I ≈ 0.35` can fail and that reduced `R(t)` amplitude does not uniquely diagnose field-free implantation. | G20-1 to G20-9 | P0 resolved: G20-4, G20-6, G20-7 |
| [[ekstrom-1979-spin-alignment-attenuation-a61-a67]] | experiment-ingest + method-ingest + project-ingest | Compiles pure-E2 angular distributions into `alpha2/alpha4`, tests MANDY/CNR alignment estimates, prescribes an uncertainty budget, and argues that a simple Gaussian magnetic-substate population is too restrictive. | EK79-1 to EK79-9 | P0 pending: EK79-2, EK79-5, EK79-9 |
| [[ionescu-1981-improved-angular-distribution-analysis-particle-xn]] | experiment-ingest + method-ingest + project-ingest | Shows in `165Ho(alpha,2n)167Tm` that the global Gaussian hypothesis fails and that a feeding-aware model with Gaussian side feeding plus discrete direct feeding can improve spin and `delta` analysis. | IO81-1 to IO81-9 | P0 pending: IO81-4, IO81-5, IO81-8 |

## Experimental-Practice Evidence

The article7-9 sources add a different layer from the earlier formalism and deorientation papers. They show that assumed or typical orientation parameters are embedded in real spectroscopy practice and reference-guide language, but that these assumptions remain notation-sensitive and context-sensitive.

Chiara 2012 is the most direct spectroscopy example: a working `σ/I` value is chosen because it reproduces known transitions, and a single transition's fitted `δ` changes when the assumed alignment changes. Summary 2013 is weaker scientifically but important culturally: it documents that high-spin assignment heuristics are often quoted with a typical orientation parameter, here `σ/I = 0.3`. Gray 2020 is the counterweight: in an isomeric TDPAD context, an empirical `σ/I ≈ 0.35` expectation can fail, and amplitude alone does not tell you whether the issue is alignment or field-free implantation.

## Supplemental Core Evidence

Ekstrom 1979 strengthens the older alignment-limitation evidence chain from a complementary direction. Instead of starting from a fit ambiguity alone, it compiles pure-E2 data into `alpha2/alpha4`, tests CNR/MANDY alignment estimates against experiment, gives an explicit uncertainty prescription for those estimates, and warns that too-small alignment errors can lead to faulty spin/parity or mixing-ratio assignments.

Ionescu 1981 then shows what to do when a global Gaussian substate-population model fails in a carefully measured case. It uses pure-E2 transitions and their `rho2/rho4` behavior to test the Gaussian hypothesis, finds it inadequate for `167Tm`, and replaces it with a model that keeps Gaussian side feeding but adds discrete direct gamma-feeding contributions explicitly before fitting mixed transitions.

## Evidence Map

| ID | Project statement | Source basis | claim_kind | Boundary / gap | needs_review |
|---|---|---|---|---|---|
| SIO-PROJ-1 | Even before mixed `M1/E2` transitions are fitted, angular-distribution coefficients for stretched E2 transitions depend on magnetic-substate population and feeding history. | DR70-2 to DR70-7 | Wiki synthesis / project note | Based on a stretched-E2 side-feeding formalism; not a direct P-ADO calculation. | false |
| SIO-PROJ-2 | A single Gaussian width can be a useful model input in selected comparisons, but Draper 1970 treats it as an assumed side-feeding population form rather than an experimental constant. Final-level populations may be mixed `\bar{P}(M)` distributions rather than single Gaussians. | DR70-3, DR70-8, DR70-9 | Wiki synthesis / project note | Need later P-ADO notation mapping before equating Draper `σ` with normalized `σ/I`. | false |
| SIO-PROJ-3 | If alignment is known, angular distributions can constrain multipolarity and mixing ratio; if not, `α2`, `α4`, and `δ` create an underconstrained fit unless extra information or a population model is supplied. Zobel's three routes are model-estimated attenuation coefficients, additional polarization/conversion data, or a one-parameter magnetic-substate distribution. | Z80-1 to Z80-4 | Wiki synthesis / project note | This is the direct method argument for why silently fixing `σ/I` can make `δ` extraction assumption-dependent. | false |
| SIO-PROJ-4 | Gaussian or ALY-based alignment assumptions are conditional, with explicit risks from β feeding, isomers, short lifetimes, Doppler broadening, lifetime-dependent shifts of `αK` pairs, and feeding-component mixtures. | Z80-7 to Z80-13 | Wiki synthesis / project note | Does not imply Gaussian assumptions are invalid in all cases; it identifies conditions that must be checked. | false |
| SIO-PROJ-5 | Alignment attenuation can change with projectile, incident energy and the direct/cascade feeding balance, so a preset alignment parameter is condition-specific rather than universally transferable. | Z83-3 to Z83-8 | Wiki synthesis / project note | Based on `67Ga`; generalization to user data requires reaction-specific checks. | false |
| SIO-PROJ-6 | Combining angular-distribution and polarization constraints for `δ` should preserve beam/projectile/target consistency or explicitly model condition differences. | Z83-9 | Wiki synthesis / project note | This is a methodological caution, not a ban on combining datasets. | false |
| SIO-PROJ-7 | Spin-deorientation calculations connect a Gaussian side-feeding width to reaction-specific angular-momentum routes, projectile energy, quasicontinuum feeding and discrete-level feeding corrections. | C96-2 to C96-9 | Wiki synthesis / project note | Cejnar 1996 is a statistical-model result for `Pd(α,2nγ)Cd`; it is relevant background, not a universal `σ/I` prescription. | false |
| SIO-PROJ-8 | The `σ` region used in angular-distribution fitting can change the extracted `δ` branch or sign, so P-ADO writing should expose the alignment-width assumption instead of hiding it as a fixed constant. | C96-10 | Wiki synthesis / project note | Based on Cejnar Fig.7 for one `851.2 keV` transition; user data require their own `σ/I` mapping. | false |
| SIO-PROJ-9 | Time-dependent deorientation can be measured through angular-correlation perturbations and encoded as `Gk(t/d)` factors; this supports treating alignment response as an experimental/model input with uncertainty. | R12-5 to R12-10 | Wiki synthesis / project note | Radeck 2012 is inverse Coulomb excitation + RDDS; use as related method background, not direct fusion-evaporation `σ/I` evidence. | false |
| SIO-PROJ-10 | Modern fitting language must keep detector solid-angle attenuation `Qk`, nuclear alignment `Bk`/`alpha_k`, time-dependent deorientation `Gk`, and side-feeding Gaussian `σ`/`sigma/J` separate before using them in `δ` extraction. | R12-7, R12-8; C96-5; L25-4 to L25-8; Z80-1 to Z80-4 | Wiki synthesis / project note | Lauritsen 2025 resolves the formalism vocabulary, but user P-ADO implementation details remain unmapped. | false |
| SIO-PROJ-11 | Lauritsen 2025 supplies the direct formula chain needed for P-ADO wording: `delta` enters transition-dependent `Amax_k`, in-beam `alpha_k(J)` describes nuclear alignment/deorientation, `alpha_k(J)` can be computed from `Pm(J)`, and `Pm(J)` is usually parameterized by Gaussian `sigma/J`. | L25-5 to L25-8 | Wiki synthesis / project note | This maps source notation, but does not prove the user's `sigma/I` is numerically identical to Lauritsen `sigma/J`. | false |
| SIO-PROJ-12 | Tracking-array response-function and polarization/DCO constraints do not remove alignment-width assumptions; they help separate detector response, angular distribution, parity/multipolarity ambiguity and nuclear population assumptions. | L25-2, L25-10, L25-12 to L25-15 | Wiki synthesis / project note | Based on GRETINA examples and formalism; user detector/code path still needs mapping. | false |
| SIO-PROJ-13 | In practical spectroscopy work, an assumed `σ/I` may be selected because it reproduces known reference transitions, and a different assumed value can change the fitted `δ` for a specific line. | CH12-3 to CH12-5 | Wiki synthesis / project note | Based on one `65Cu` angular-distribution analysis and one `1115 keV` example; not a universal fitting rule. | false |
| SIO-PROJ-14 | Reference-guide high-spin assignment heuristics explicitly use a typical `σ/I = 0.3`; this is background for spectroscopy practice, not a universal fusion-evaporation prior. | SB13-1 to SB13-5 | Wiki synthesis / project note | Source is a Nuclear Data Sheets guide, not an original measurement or a theory derivation. | false |
| SIO-PROJ-15 | In an isomeric TDPAD / `g`-factor context, reduced `R(t)` amplitudes can indicate weaker-than-expected alignment and do not uniquely determine the field-free fraction; empirical `σ/I ≈ 0.35` expectations may fail and require independent alignment checks. | G20-3 to G20-8 | Wiki synthesis / project note | Host-specific Fe/Gd implantation and hyperfine-field physics; useful boundary case, not a direct P-ADO fitting prescription. | false |
| SIO-PROJ-16 | Angular-distribution interpretation of spin/parity or mixing ratio requires externally constrained alignment information or an explicit population model; when CNR/MANDY alignment estimates are used, they need a nontrivial uncertainty budget rather than a near-fixed value. | EK79-2, EK79-5, EK79-6 | Wiki synthesis / project note | Ekstrom 1979 uses `alpha2/alpha4` and MANDY/CNR estimates, not user-code `σ/I`; use it as alignment-uncertainty evidence, not as a direct prior prescription. | false |
| SIO-PROJ-17 | A simple Gaussian magnetic-substate population can be too restrictive, and direct-population alignment estimates become unreliable for levels sufficiently far above threshold when unmodeled gamma feeding is appreciable. | EK79-7 to EK79-9 | Wiki synthesis / project note | Based on near-threshold `(alpha,n)` / `(alpha,p)` reactions in `A=61-67`; do not generalize into a universal rejection of all Gaussian-like models. | false |
| SIO-PROJ-18 | Pure-E2 transitions can be used to test and calibrate a population model; in `167Tm`, the global Gaussian hypothesis fails, while a model that combines Gaussian side feeding with discrete direct feeding gives better angular-distribution fits and sharper spin assignments. | IO81-3 to IO81-7 | Wiki synthesis / project note | Source is a detailed `165Ho(alpha,2n)167Tm` case study; it supports feeding-aware modeling, not a universal replacement formula for every reaction. | false |
| SIO-PROJ-19 | Angular-distribution-based `delta` extraction can depend on first constraining the population-width model from competing pure-E2 transitions; this is a concrete source-level example that feeding-aware alignment modeling may be needed before trusting mixed-transition assignments. | IO81-8, IO81-9 | Wiki synthesis / project note | The fitted width parameter describes side feeding in the improved model, not a direct one-to-one replacement for user-code `σ/I`. | false |

## How This Supports P-ADO / NST Introduction

Draper 1970 supports a cautious wording: the alignment or population-width parameter used in angular-distribution calculations is a model-dependent representation of how the emitting state was populated. A normalized Gaussian side-feeding population can feed a final level that is simultaneously populated by other components, producing a mixed `\bar{P}(M)` rather than a single Gaussian with one transferable width.

Zobel 1980 adds the direct angular-distribution-analysis reason: two measured angular-distribution coefficients cannot by themselves determine `α2`, `α4` and `δ` without extra information or a model. The paper's three routes out of the ambiguity are exactly the choices later P-ADO writing must make explicit: estimate attenuation coefficients, add independent polarization/conversion information, or impose a one-parameter substate-population form. If a later analysis does not respect the state-dependent alignment scale, commonly expressed as `σ/I` in Gaussian parameterizations, the extracted `δ` can become credible only within an unstated population model.

Zobel 1980 also supplies a condition checklist for when Gaussian/ALY assumptions are plausible: no β feeding, no preceding isomeric state, and long enough lifetime to neglect Doppler broadening. Fig.5 is important for the writing argument because it shows that lifetime-dependent Doppler line-shape loss can move apparent `αK` pairs, not merely broaden a peak aesthetically.

Zobel 1983 adds the experimental context: alignment changes with projectile, energy and feeding balance, and angular-distribution/polarization constraints should be kept condition-consistent. Together, these sources motivate explicit P-ADO handling of alignment uncertainty; they do not by themselves prescribe one universal `σ/I` prior.

Ekstrom 1979 sharpens that caution in a more operational way. It says directly that angular distributions by themselves do not settle spin/parity or `delta` unless alignment is otherwise constrained, and it attaches an explicit uncertainty prescription to model-predicted alignment. For the NST introduction, this is valuable because it justifies treating alignment inputs as uncertain observables or model outputs, not silent constants.

Ekstrom 1979 also strengthens the case against overconfident Gaussian defaults. It shows both that gamma feeding above threshold can invalidate direct-population alignment estimates and that a simple Gaussian magnetic-substate population is too restrictive for the compiled `A=61-67` data. That is not a universal anti-Gaussian theorem, but it is strong evidence against treating one narrow Gaussian prior as automatically safe.

Ionescu 1981 provides the clearest feeding-aware bridge in this project. It shows a workflow in which pure-E2 transitions are first used to test and calibrate the population model, after which mixed transitions are analyzed for `delta` within the resulting width range. For P-ADO writing, this is a concrete precedent for saying that the population model may need to be constrained empirically before one trusts mixed-transition inference.

Cejnar 1996 adds the deorientation-calculation layer: the side-feeding Gaussian width can be estimated from reaction-specific angular-momentum routes rather than treated as a free universal constant. Its Fig.7 is a useful warning for the NST introduction because changing the imposed `σ` interval changes the `δ` inference for an `M1+E2` transition. The boundary is equally important: this is a statistical-model result for selected `(α,2nγ)` reactions and does not prove a transferable `σ/I` prior.

Radeck 2012 adds a complementary time-dependent deorientation example: in inverse Coulomb excitation + RDDS, angular-correlation coefficients are corrected by `Gk(t/d)` factors, while finite detector solid angle enters separately through `Qk`. This is useful for explaining why P-ADO should expose alignment/deorientation assumptions, but it should remain labelled as related methodology rather than direct fusion-evaporation side-feeding evidence.

Lauritsen 2025 provides the cleanest modern equation language for the NST introduction. It allows a sentence like: in current tracking-array angular-distribution formalism, the fitted curvature depends not only on `delta` but also on the magnetic-substate population through `alpha_k(J)` and often through a Gaussian `sigma/J` parameter. Its `152Dy` examples also show why angular distribution alone may leave electric/magnetic or mixed-transition ambiguity, requiring DCO and linear polarization as complementary constraints.

Chiara 2012 adds the missing practice-level example. It shows that an assumed `σ/I` is not merely a theoretical symbol but can be chosen operationally because it gives good agreement for known transitions. The same paper also gives a concrete warning that the fitted `δ` for a `65Cu` transition changes when the assumed `σ/I` changes. This is useful for the NST introduction because it grounds the project in how spectroscopy papers are actually analyzed, not only in formal derivations.

Summary 2013 adds reference-guide background. It shows that high-spin assignment heuristics are often quoted with a typical orientation parameter already built in, here `σ/I = 0.3`. The user review narrows the needed caution: the issue is not a special `V` notation boundary, but that this guide-level value is still not a universal prior for every P-ADO fit.

Gray 2020 adds a method-boundary example from TDPAD and `g`-factor measurements. Its message is not that all spectroscopy should use `σ/I ≈ 0.9`; rather, it shows that an empirical expectation such as `σ/I ≈ 0.35` can fail in an isomeric, host-specific context, and that a reduced amplitude does not uniquely tell you whether alignment is weaker or the field-free fraction is larger. This is useful for the NST introduction as a warning against overconfident empirical defaults.

## Evidence Gaps

- Need mapping from the user's actual P-ADO implementation to source symbols before writing final equations.
- Need source-level check of whether later P-ADO notation uses `σ/I`, `σ/J`, or another normalized width convention; Lauritsen 2025 gives `σ/J`, but user-code mapping remains open.
- Need decide how, or whether, Cejnar-style reaction-route deorientation calculations can be approximated for the user's actual reaction and detector conditions.
- Need map whether any Radeck-style time-dependent deorientation or detector `Qk` correction exists in the user's P-ADO code path.
- Need user-data-specific check of reaction, beam energy, target, detector geometry, feeding pattern and polarization/ADO acquisition conditions.
- Need a source-backed mapping between the project's working `σ/I` convention and Lauritsen 2025 `sigma/J` before writing final code-facing equations.
- Need determine whether the user's analysis has Chiara-like calibration transitions that could test an assumed alignment-width parameter empirically.
- Need determine whether the user's data contain pure-E2 calibration transitions that could support an Ionescu-style population-model constraint before mixed-transition fitting.
- Need assess whether any Ekstrom-style alignment uncertainty budget or Ionescu-style discrete-feeding term can be approximated realistically for the user's reaction and observed feeding pattern.
- Need check whether isomeric feeding or delayed components could make Gray-style amplitude/alignment cautions relevant to the user's data.

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
| Summary 2013 typical `σ/I = 0.3` can be used as a default `σ/I` value | Not ready; the guide gives a heuristic assignment-context value, not a validated universal P-ADO default. |
| Gray 2020 proves that empirical alignment widths should be replaced by `σ/I ≈ 0.9` | Not ready; that inference is host-specific, isomer-specific, and conditional on the full-field assumption. |

## Risks and Blockers

- Source symbols are not identical; `σ`, `σ/I`, `αK`, `A2/A4` and feeding fractions must remain separated.
- Source and project claims from the first three-source ingest were user-reviewed on 2026-07-08; final paper wording still needs source locator checks and user-data-specific mapping.
- Cejnar 1996, Radeck 2012 and Lauritsen 2025 source/project claims from 2026-07-09 were user-reviewed, but should still not be promoted into paper-ready final wording without source locator checks in the writing context.
- Especially do not promote Radeck 2012 RDDS/Coulomb-excitation correction to a direct fusion-evaporation `σ/I` conclusion.
- Lauritsen 2025 gives `sigma/J`; mapping it to the user's `sigma/I` convention remains a separate code/data-context task.
- Summary 2013 provides a guide-level `σ/I = 0.3`, but that still does not justify treating one fixed number as a universal prior across different reactions, feeding patterns, and methods.
- Gray 2020 is a TDPAD / hyperfine-host case; its alignment-amplitude lesson is useful, but its host physics is not the same as ordinary P-ADO fitting.
- User data conditions and P-ADO implementation details are not yet mapped to the source notation.

## Next Actions

1. Map the actual P-ADO code/input convention for `σ/I` to the source-level variables.
2. Check whether the user's data include pure-E2 calibration transitions and a reconstructible feeding history that would support an Ionescu-style constraint on the population model.
3. Add user-data-specific reaction, detector and feeding-condition records before turning the project into writing text.
4. Decide whether the next source round should emphasize empirical alignment uncertainties, explicit feeding models, or code-facing notation mapping before attempting a formal synthesis.

## Related Pages

- [[magnetic-substate-population]]
- [[side-feeding]]
- [[deorientation]]
- [[sigma-over-i]]
- [[angular-distribution]]
- [[angular-distribution-coefficient]]
- [[multipole-mixing-ratio]]
