---
type: concept
title: "Lorentz Boost Correction for In-Beam Gamma-Ray Angles"
aliases: [Lorentz angular correction, gamma-ray aberration correction, center-of-mass to laboratory angle correction]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: unreviewed
tags: [lorentz-boost, aberration, angular-distribution, linear-polarization]
---

# Lorentz Boost Correction

## Definition

For a moving emitter, Longfellow 2026 maps the laboratory angle to the center-of-mass angle with
`cos(theta)=(cos(theta_lab)-beta)/(1-beta cos(theta_lab))`, where `beta=v/c`. The laboratory angular distribution also carries a forward-compression solid-angle factor.

## Polarization Ratio

The same solid-angle factor is common to the numerator and denominator of the polarization ratio and cancels. The angle map does not cancel: the transformed angle remains in the Legendre and associated-Legendre functions and in the direction-polarization correlation.

## Necessary Assumptions

- `beta`, the beam axis, the event emission direction and the laboratory/center-of-mass coordinate convention must be specified.
- The same transformed direction must be used consistently in angular-distribution and direction-polarization calculations.

## Discriminating Observables

The laboratory angular distribution, polarization ratio, Compton-plane angle and event-by-event Doppler-corrected energy are separate checks on the transformation chain.

## Supporting Evidence

Longfellow 2026 gives the aberration relation, the common solid-angle factor, its cancellation in the polarization ratio and the separate Doppler-energy equation.

## Counter-evidence and Competing Interpretations

A small `beta` does not by itself prove that the angular correction is negligible; the size depends on angle and acceptance. Conversely, a common-factor cancellation in a ratio does not remove the angle transformation.

## Our Current Position

Treat Lorentz angular correction as an explicit in-beam formalism layer and report any numerical approximation. Do not substitute Doppler energy correction for angular aberration.

## Sources

This correction is not the same operation as Doppler correction of the gamma-ray energy. Both use event geometry and beta, but one transforms directions and the other transforms energy. Longfellow reports a 0 to -9% angular-distribution effect over the stated angular range and velocities, so beta should not be silently treated as zero without a quantitative check.

- [[longfellow-2026-gretina-energy-ordering-polarization]]
