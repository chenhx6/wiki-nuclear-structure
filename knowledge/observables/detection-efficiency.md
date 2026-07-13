---
type: observable
title: "Compton Event Detection Efficiency"
aliases: [Compton detection efficiency, polarimeter efficiency, epsilon]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: unreviewed
observable_type: detector-performance
observable_kind: detector-performance
tags: [detection-efficiency, compton-polarimetry, detector-response]
---

# Compton Event Detection Efficiency

## Definition

`epsilon` is the efficiency for the Compton events retained by a specified detector geometry and event-selection chain. It is not the same quantity as polarization sensitivity `Q`.

## Trade-Off

Go 2024 shows that narrowing the accepted polar-scattering angle can raise `Q` while losing Compton-event statistics. The figure of merit used there is `F=epsilon Q^2`; the relevant efficiency includes event-selection losses and must be reported with the cuts and geometry.

## How It Is Obtained

Determine the fraction of incident gamma rays that produce the selected full-energy Compton events, including geometry, passive materials, event multiplicity and analysis cuts.

## Diagnostic Use

`epsilon` and `F=epsilon Q^2` quantify the statistical cost of a polarization event-selection strategy.

## Model Dependence

The value depends on detector placement, active volume, source distance, event selection, background and response simulation.

## Failure Modes and Ambiguities

An efficiency quoted without its event definition or geometry is not transferable. It must not be used as a proxy for polarization sensitivity.

## Sources

- [[go-2024-demonstration-nuclear-gamma-ray-polarimetry-cdte]]
- [[polarization-sensitivity]]
