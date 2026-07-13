---
type: method
title: "Compton Polarimetry Modulation Curve"
aliases: [modulation curve, azimuthal modulation curve, Q-prime modulation factor]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: unreviewed
method_type: detector-response-analysis
tags: [modulation-curve, compton-polarimetry, detector-response]
---

# Modulation Curve

## Purpose

A modulation curve summarizes the azimuthal response of a Compton polarimeter after the chosen event and background treatment. It is a detector-level bridge to polarization, not a nuclear-structure model result.

## Inputs and Assumptions

- Measured azimuthal events, a response or unpolarized reference distribution, background treatment and a defined angle convention.
- The accepted event multiplicity, Compton-angle range and detector coverage are held fixed when comparing amplitudes.

## Source Forms

- Go 2024 defines a measured-minus-background azimuthal distribution divided by the unpolarized simulation and fits `A(1+Q' cos(2(phi-phi0)))`. The fitted `Q'` is proportional to the degree of polarization and is converted to a full-polarization sensitivity only after `P` is inferred.
- Longfellow 2026 fits `W_C(xi)=N(1-A0 cos(2xi))`, with `A0=1/2 Q Pbar` after integrating over GRETINA's laboratory-angle and Compton-angle coverage.

## Review Boundary

The two forms use different normalization and angle conventions. They should not be compared by numerical amplitude alone without matching background, source-response, event-selection, coverage and sign conventions.

## What It Can Establish

It can characterize a detector modulation amplitude and, with calibrated `Q` or `Q'`, support a polarization estimate.

## What It Cannot Establish Alone

It cannot make a detector modulation into a unique multipolarity, parity or mixing-ratio assignment without nuclear and response constraints.

## Sources

## Sources

- [[go-2024-demonstration-nuclear-gamma-ray-polarimetry-cdte]]
- [[longfellow-2026-gretina-energy-ordering-polarization]]
