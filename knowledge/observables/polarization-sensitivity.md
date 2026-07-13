---
type: observable
title: "Polarization Sensitivity Q"
aliases: [Compton polarimeter sensitivity, Q(Egamma), polarization analyzing sensitivity]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: unreviewed
observable_type: detector-response
observable_kind: detector-response
tags: [polarization-sensitivity, compton-polarimetry, detector-efficiency]
---

# Polarization Sensitivity

## Definition

`Q` describes how strongly a given detector and accepted Compton-scatter phase space converts a physical polarization into a measured asymmetry. Jones 2002 writes the calibration relation as `P=A/Q(Egamma)`.

Go 2024 distinguishes a fitted modulation factor `Q'` from the sensitivity for a fully polarized photon, using `Q=Q'/P` for its 847-keV calibration line. Longfellow 2026 uses `Q` as an array-coverage-averaged analyzing power in `A0=1/2 Q Pbar`.

## Sensitivity Is Not Efficiency

Higher `Q` can require a narrower scatter-angle or event-selection window and therefore reduce counts. Go 2024 reports this trade-off directly and uses a figure of merit `F=epsilon Q^2`, where `epsilon` includes the selected Compton-event efficiency. `Q` and absolute efficiency must therefore be reported as separate quantities.

## Calibration Boundary

`Q` is detector- and energy-dependent. A reference transition with known polarization, a detector-response simulation, or both are required; a nuclear angular-distribution coefficient is not itself a detector `Q`.

## How It Is Obtained

Calibrate or simulate the modulation response for a known polarization and the accepted detector geometry, then report the energy, scatter-angle range and event cuts.

## Diagnostic Use

`Q` converts a detector asymmetry or modulation into a polarization constraint and enters array-level figures of merit.

## Model Dependence

The value depends on energy, Compton angle, detector segmentation, response simulation, source normalization and event-selection cuts.

## Failure Modes and Ambiguities

Comparing `Q` across detectors without matching energy and cuts can confuse sensitivity with efficiency. A high `Q` with very low `epsilon` may not improve statistical reach.

## Sources

- [[jones-2002-calibration-compton-polarimeters]]
- [[go-2024-demonstration-nuclear-gamma-ray-polarimetry-cdte]]
- [[longfellow-2026-gretina-energy-ordering-polarization]]
