---
type: observable
title: "Experimental Asymmetry in Gamma-Ray Polarimetry"
aliases: [Compton asymmetry, Compton count asymmetry, A observable]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: unreviewed
observable_type: detector-count-ratio
observable_kind: detector-count-ratio
tags: [experimental-asymmetry, compton-polarimetry, linear-polarization]
---

# Experimental Asymmetry

## Definition

For the Jones calibration geometry, `A=[N(theta,90)-N(theta,0)]/[N(theta,90)+N(theta,0)]`. It is a count-level observable for a specified detector arrangement and sign convention.

## Relation to Polarization

`A` is not physical polarization. After detector sensitivity and geometry are known, a calibration relation such as `P=A/Q` can be used. In tracking-array notation, Longfellow 2026 writes the measured Compton-plane distribution as `W_C(xi)=N(1-A0 cos(2xi))` with `A0=1/2 Q Pbar`, where `Pbar` is array-coverage-weighted polarization.

## How It Is Obtained

Count pairs or an azimuthal distribution are formed after event selection, efficiency/response normalization and background treatment. The exact numerator, denominator and sign convention belong to the detector geometry.

## Diagnostic Use

`A` or `A0` tests the polarization-dependent response and can constrain electromagnetic character when combined with calibrated `Q`, angular distributions and mixing information.

## Model Dependence

The conversion to `P` depends on `Q`, accepted scatter angles, array coverage, alignment and the response model.

## Failure Modes and Ambiguities

Different sign conventions, background or response errors, and mixed-transition branches can produce misleading sign or magnitude interpretations. Longfellow 2026 explicitly warns that the sign alone is not a general electric/magnetic discriminator.

## Interpretation Limits

- The sign of an asymmetry depends on the chosen plane and electric/magnetic convention.
- Background subtraction, source-response normalization, scatter-angle cuts and finite detector coverage affect the extracted value.
- Longfellow's Appendix shows that the sign of `A0` alone cannot generally distinguish electric and magnetic character for mixed transitions.

## Sources

- [[jones-2002-calibration-compton-polarimeters]]
- [[go-2024-demonstration-nuclear-gamma-ray-polarimetry-cdte]]
- [[longfellow-2026-gretina-energy-ordering-polarization]]
- [[linear-polarization-asymmetry]]
