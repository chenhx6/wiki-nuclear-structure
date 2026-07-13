---
type: method
title: "Gamma-Ray Compton Polarimetry"
aliases: [Compton polarimetry, gamma-ray Compton polarimeter]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: unreviewed
method_type: gamma-ray-polarimetry
tags: [compton-scattering, linear-polarization, detector-response, parity]
---

# Gamma-Ray Compton Polarimetry

## Purpose

Compton polarimetry infers the linear polarization of gamma rays from the azimuthal dependence of Compton-scattering events. The scattering plane is correlated with the incident electric-field direction through the Klein-Nishina cross section.

## Inputs and Assumptions

- Calibrated energy and position information for the scatter and absorber interactions.
- A defined azimuth convention, accepted Compton-scatter angle range, detector response and background treatment.
- A reference polarization or validated response simulation when converting a modulation to `P`.

## Core Chain

1. Select events with a reconstructible scatter and absorber interaction.
2. Form an azimuthal distribution or detector-pair count asymmetry.
3. Correct or model detector geometry, efficiency, background and accepted Compton-scatter angles.
4. Relate the measured modulation to physical polarization with a calibrated sensitivity `Q` or a simulated detector response.

The analyzing power is a Compton-scattering property and depends on photon energy and scatter angle. It is not the same as nuclear angular-distribution alignment.

## Detector Implementations

- Clover and segmented HPGe arrays provide compact Compton event selections.
- GRETINA/AGATA tracking arrays provide many interaction positions and a continuous angular phase space, but still require response and ordering treatment.
- Go 2024 demonstrates a twenty-layer position-sensitive CdTe camera for a 847-keV calibration line. Its likelihood and Geant4/ComptonSoft chain is a detector demonstration, not a universal replacement for HPGe arrays.

## What It Can Establish

With calibration and response control, Compton polarimetry can constrain the linear polarization and electromagnetic character of selected gamma-ray transitions.

## What It Cannot Establish Alone

It cannot by itself fix nuclear alignment, choose a unique mixing-ratio branch, or establish a nuclear-structure interpretation without the transition and population context.

## Boundaries

Physical `P`, measured `A`, sensitivity `Q`, modulation factor `Q'`, and efficiency `epsilon` must be reported separately. A detector simulation characterizes response; it does not establish a nuclear-structure interpretation by itself.

## Sources

- [[jones-2002-calibration-compton-polarimeters]]
- [[go-2024-demonstration-nuclear-gamma-ray-polarimetry-cdte]]
- [[longfellow-2026-gretina-energy-ordering-polarization]]
- [[lauritsen-2025-gamma-angular-formalism-tracking-arrays]]
