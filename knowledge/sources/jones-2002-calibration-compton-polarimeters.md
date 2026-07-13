---
type: source
title: "Calibration of Compton Polarimeters"
aliases: [Jones 2002 Compton polarimeter calibration, Compton polarimeter sensitivity calibration]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: human-reviewed
source_type: method-formalism-article
reading_depth: deep-read
title_original: "Calibration of Compton polarimeters"
authors: [G. D. Jones]
journal: Nuclear Instruments and Methods in Physics Research A
year: 2002
volume: 491
number: 3
pages: "452-459"
doi: 10.1016/S0168-9002(02)01235-4
language: en
canonical_source: doi:10.1016/S0168-9002(02)01235-4
citation_key: jones_2002_CalibrationCompton
raw_file: "raw/papers/2002_Jones_Calibration of Compton polarimeters.pdf"
raw_sha256: 96157E69E7D77F038D372F20448F59F52B89B25FDD90EDE21B88128B60688475
nuclei: []
reactions: []
observables: [gamma-ray-linear-polarization, experimental-asymmetry, polarization-sensitivity, angular-distribution-coefficient]
methods: [compton-polarimetry, angular-distribution, linear-polarization-asymmetry]
tags: [compton-polarimetry, calibration, klein-nishina, rose-brink, alignment]
---

# Jones (2002): Calibration of Compton Polarimeters

## Bibliographic Record

G. D. Jones, *Nuclear Instruments and Methods in Physics Research A* **491**(3), 452-459 (2002), DOI `10.1016/S0168-9002(02)01235-4`, citation key `jones_2002_CalibrationCompton`.

The title, author, year, DOI and local PDF match the BibTeX record uniquely. The full eight-page PDF was read, including the abstract, Sections 1-8, Eqs. (1)-(12), Table 1 and the calibration-method discussion.

## Scope and Reading Depth

This is a `formalism-ingest + calibration-method-ingest` source. It supplies the notation and calibration logic for nuclear gamma-ray Compton polarimetry. It is not a claim that every in-beam transition is fully aligned or that the special full-polarization examples apply to ordinary fusion-evaporation data.

## Summary

The paper writes the angular dependence of physical gamma-ray linear polarization in a form that separates the nuclear polarization `P(theta)` from the measured detector asymmetry `A` and the energy-dependent polarimeter sensitivity `Q(Egamma)`. It relates `P` to angular-distribution coefficients `a2` and `a4`, multipole mixing in the Rose-Brink convention, and magnetic-substate populations. It also surveys calibration reactions and explains why low-energy strip or tracking detectors require new sensitivity calibrations.

## Key Results

| ID | Claim | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| J02-1 | The paper motivates calibration for new multi-pixel strip and tracking detectors because earlier Compton-polarimeter reactions may not extend to low-energy gamma rays and large effective solid angles. | method-boundary | direct | Abstract; p.452, Sec.1 | false |
| J02-2 | Physical linear polarization is defined as `P(theta) = [W(theta,phi=0)-W(theta,phi=90)]/[W(theta,phi=0)+W(theta,phi=90)]`, with `-1 <= P <= 1` and `P=0` for an unpolarized gamma ray. | method/formalism | direct | p.453, Eq. (1) | false |
| J02-3 | The experimentally inferred polarization is `P_E(theta) = A/Q(Egamma)`, where `A=[N(theta,phi=90)-N(theta,phi=0)]/[N(theta,phi=90)+N(theta,phi=0)]` is the experimental asymmetry and `Q` is the polarimeter sensitivity. | method/formalism | direct | p.453, Eqs. (2)-(3) | false |
| J02-4 | `Q` can be estimated from the Klein-Nishina Compton cross section and depends on the Compton scattering angle; strip or tracking analysis can restrict the accepted scatter-angle range. | method/formalism | direct | p.453, Sec.2 and Fig.1 discussion | false |
| J02-5 | For a pure E2 calibration transition, `P(90 degrees)=(3a2+1.25a4)/(2-a2+0.75a4)`, with `a2` and `a4` obtained from angular-distribution coefficients that depend on magnetic-substate populations and radiation geometry. | method/formalism | direct | p.454, Eqs. (4)-(6) | false |
| J02-6 | The 197-keV E2 transition in 19F is used as a practical example: the paper quotes `P(90 degrees)=0.23(6)`, measured `A=0.077(8)` and inferred `Q=0.34(9)`. | calibration-observation | direct | p.454, Sec.3, case (a) | false |
| J02-7 | The same example shows that limited counts can give about 30% statistical uncertainty in `A` and consequently in `Q`; a larger known polarization would produce a larger asymmetry for the same detector. | method-boundary | direct | p.454, Sec.3, cases (a)-(b) | false |
| J02-8 | For mixed quadrupole/dipole transitions, the polarization expression contains the interference factor `delta/(1+delta^2)` and uses the Rose-Brink sign convention; the paper identifies the plus branch with E2/M1 and the minus branch with M2/E1 in its notation. | method/formalism | direct | pp.454-455, Eq. (7) | false |
| J02-9 | A pure dipole transition has `\|P(theta)\|=1` for all angles except the beam-axis limit when `a2=-1`; the paper associates this with a maximum-alignment `w(0)=1` state before a `1 -> 0` dipole transition. | method-boundary | direct | p.455, Eq. (8) and following paragraph | false |
| J02-10 | A pure quadrupole transition has the analogous special full-polarization condition for `a2=5/7` and `a4=-12/7`, associated with maximum alignment before a `2 -> 0` transition. | method-boundary | direct | p.455, Eq. (9) and following paragraph | false |
| J02-11 | The paper discusses high-polarization calibration choices including particle-induced reactions, alpha decay, Coulomb excitation and selected 227Th -> 223Ra gamma rays; it stresses that known a priori polarization is preferable to relying only on a low-polarization angular-distribution inference. | calibration-method | direct | pp.455-457, Secs.5-6 and Table 1 | false |
| J02-12 | Relative efficiency can be checked with a geometry in which `P(0)=0` and `A=0`, or with two detector configurations related by a 90-degree rotation so that crystal/electronics differences cancel in a product of count ratios. | calibration-method | direct | p.458, Sec.7, Eqs. (10)-(12) | false |
| J02-13 | The special `\|P\|=1` cases are not a general in-beam assumption: finite detector size, large solid-angle coverage, low-energy efficiency and unobserved feeding can make calibration and relative-efficiency corrections non-trivial. | method-boundary | direct | pp.452, 458-459, Secs.1, 7-8 | false |

## Physical and Methodological Boundaries

- `P` is a property of the emitted gamma-ray angular distribution; `A` is a count asymmetry in a particular detector geometry; `Q` is the detector response/sensitivity at a given energy and accepted Compton-scatter phase space.
- The `|P|=1` examples are special alignment and transition cases. They must not be promoted to a universal property of ordinary in-beam transitions.
- The angular-distribution coefficients `a2` and `a4` describe nuclear alignment and transition geometry; they are not detector sensitivity coefficients.
- A calibration reaction or source transition supplies a reference polarization. It does not remove the need to report detector geometry, scatter-angle acceptance, efficiency and statistical uncertainty.

## Competing Interpretations and Limitations

- The special full-polarization conditions are calibration limits, not a general in-beam assumption.
- Sensitivity estimates inherit uncertainties from the reference polarization, count statistics, detector geometry and accepted Compton-scatter phase space.
- A mixed-transition sign or `delta` convention must be read with the Rose-Brink phase convention used in the paper.

## Extracted Pages

- Pages 1-2: motivation, Compton geometry and definitions of physical polarization and asymmetry.
- Pages 3-4: pure-E2 calibration formula, a2/a4 coefficients and `19F` numerical example.
- Pages 4-5: mixed-transition Rose-Brink expression and pure dipole/quadrupole limits.
- Pages 5-7: high-polarization calibration reactions and `223Ra` table.
- Pages 8-9: relative-efficiency correction and conclusions for low-energy strip/tracking detectors.

## Related Wiki Pages

- Concepts: [[gamma-ray-linear-polarization]], [[magnetic-substate-population]], [[spin-alignment]]
- Methods: [[compton-polarimetry]], [[linear-polarization-asymmetry]], [[angular-distribution]]
- Observables: [[experimental-asymmetry]], [[polarization-sensitivity]], [[angular-distribution-coefficient]], [[multipole-mixing-ratio]]
- Project: [[gamma-ray-linear-polarization-in-nuclear-spectroscopy]]

## Human Review Triage

P0 review completed: J02-3 (p.453, Eqs.2-3), J02-5 (p.454, Eqs.4-6), J02-8 (pp.454-455, Eq.7), and J02-9/J02-10 (p.455, special full-polarization conditions) were checked against the displayed equations and sign conventions.

The user-reviewed source has no remaining claim-level `needs_review: true` items. The P0/P1 items above were checked; the special full-polarization examples remain bounded to their stated alignment and transition conditions.

## Project Relation

This source is the formalism and calibration anchor for [[gamma-ray-linear-polarization-in-nuclear-spectroscopy]]. It supplies the definitions used to compare later Clover, tracking-array and CdTe Compton measurements, while leaving detector-specific sensitivity and nuclear alignment as separate evidence layers.
