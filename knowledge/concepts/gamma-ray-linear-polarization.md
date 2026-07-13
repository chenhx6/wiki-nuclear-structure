---
type: concept
title: "Gamma-Ray Linear Polarization"
aliases: [linear polarization of gamma rays, gamma-ray polarization, physical gamma polarization]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: unreviewed
tags: [gamma-ray-polarimetry, polarization, parity, multipolarity]
---

# Gamma-Ray Linear Polarization

## Definition

`P(theta)` is the physical linear polarization of the emitted gamma ray, defined from the angular distribution for two azimuthal directions of the electric field. In the Jones convention,
`P(theta) = [W(theta,0)-W(theta,90)]/[W(theta,0)+W(theta,90)]` and `-1 <= P <= 1`.

## Evidence Layers

- **Physical observable:** `P` describes the emitted photon and depends on transition multipolarity, mixing, parity, magnetic-substate population and emission angle.
- **Detector observable:** a Compton setup measures a count asymmetry `A`, not `P` directly.
- **Detector response:** the sensitivity `Q(Egamma)` maps the asymmetry to a polarization estimate, often through `P=A/Q` after the relevant geometry and convention are fixed.
- **Model/formalism:** angular-distribution coefficients, Rose-Brink mixing ratios, alignment widths and array coverage determine the expected `P(theta)`.

## Important Boundary

Jones 2002 gives `|P|=1` examples for special maximum-alignment and pure-transition cases. Those examples are calibration limits, not a universal property of ordinary in-beam transitions. Longfellow 2026 further shows that a polarization-asymmetry sign alone cannot generally identify electric versus magnetic character when mixing and Delta-J alternatives remain.

## Necessary Assumptions

- The reaction plane, quantization axis, detector azimuth convention and electric/magnetic sign convention must be defined.
- The alignment or magnetic-substate population used for `W(theta)` must be stated; a special calibration alignment cannot be silently transferred to another in-beam reaction.
- Detector response, accepted Compton angles and background treatment must be separated from the nuclear polarization model.

## Discriminating Observables

Physical `P(theta)`, count asymmetry `A` or `A0`, sensitivity `Q`, angular-distribution coefficients and independent DCO/ADO or mixing-ratio information are complementary observables. No single sign is a universal discriminator.

## Supporting Evidence

Jones 2002 supplies the P/A/Q definitions and calibration limits. Go 2024 demonstrates a response-and-likelihood path for a known polarized line. Longfellow 2026 connects angular distributions, Compton-plane asymmetry and in-beam tracking-array coverage.

## Counter-evidence and Competing Interpretations

Pure angular-distribution signs, a positive or negative asymmetry, or a high detector sensitivity can remain compatible with more than one multipolarity or mixing-ratio branch. Response and alignment uncertainties can therefore compete with a simple electric/magnetic reading.

## Our Current Position

Use linear polarization as an independent constraint whose physical meaning is calibrated and geometry-specific. Keep `P`, `A`, `Q`, `epsilon`, alignment and mixing-ratio assumptions separate until the source-level equations and conventions have been checked.

## Sources

- [[compton-polarimetry]]
- [[linear-polarization-asymmetry]]
- [[polarization-sensitivity]]
- [[experimental-asymmetry]]
- [[jones-2002-calibration-compton-polarimeters]]
- [[go-2024-demonstration-nuclear-gamma-ray-polarimetry-cdte]]
- [[longfellow-2026-gretina-energy-ordering-polarization]]

## Project Relation

This concept is the physical-P layer of [[gamma-ray-linear-polarization-in-nuclear-spectroscopy]]. It must remain separate from measured asymmetry, detector sensitivity, detection efficiency and angular-distribution alignment parameters.
