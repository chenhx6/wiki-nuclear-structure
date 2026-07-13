---
type: method
title: "Event-by-Event Doppler Correction"
aliases: [gamma-ray Doppler correction, Doppler energy correction]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: unreviewed
method_type: in-beam-gamma-spectroscopy
tags: [doppler-correction, in-beam, gamma-ray-tracking]
---

# Doppler Correction

## Purpose

In an in-beam experiment, the detected gamma-ray energy is corrected event by event using the residue velocity and the measured emission direction. Longfellow 2026 gives `E_gamma=E_gamma,lab (1-beta cos(theta_lab))/sqrt(1-beta^2)`.

## Inputs and Assumptions

- Residue velocity or `beta`, a target position and an event-by-event interaction direction.
- A stated frame convention and an energy peak or transition gate to which corrected events are compared.

## What It Can Establish

It can place events in a consistent rest-frame energy gate and support Doppler-corrected spectra or full-energy event selection.

## What It Cannot Establish Alone

It does not replace the Lorentz angular aberration, detector-response calibration or nuclear-population model used for angular distributions and polarization.

## Sources

Doppler energy correction places an interaction event in the correct full-energy peak and supports event selection. It does not replace the Lorentz aberration that maps center-of-mass and laboratory angles for angular distributions or polarization. The two corrections should be documented separately.

## Source

- [[longfellow-2026-gretina-energy-ordering-polarization]]
- [[tracking-array]]
