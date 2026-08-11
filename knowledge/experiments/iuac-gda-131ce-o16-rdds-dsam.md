---
type: experiment
title: "IUAC GDA 131Ce RDDS and DSAM experiments"
aliases: [Singh 2016 131Ce lifetime experiments]
created: 2026-08-11
updated: 2026-08-11
status: active
review_status: unreviewed
experiment_id: iuac-gda-131ce-o16-rdds-dsam
facility: IUAC 15UD Pelletron
beam: 16O
target: 119Sn
beam_energy: "86 MeV RDDS; 90 MeV DSAM"
reaction: 119Sn(16O,4n)131Ce
evaporation_channel: 4n
residual_nuclei: [131ce]
detector_array: "GDA: 12 Compton-suppressed HPGe plus 14-element BGO multiplicity filter"
data_status: published
sources: [singh-2016-lifetime-131ce-133pr]
tags: [fusion-evaporation, lifetime, rdds, dsam, a130]
---

# IUAC GDA `131Ce` RDDS and DSAM Experiments

## Identity

Two `119Sn(16O,4n)131Ce` runs combine low-spin plunger lifetimes with high-spin Doppler-broadened line-shape analysis in the negative-parity yrast sequence.

## Beam, Target and Reaction

- RDDS: `86 MeV`, about `100 μg/cm²` enriched `119Sn` on `1.5 mg/cm²` Au, `7 mg/cm²` Au stopper, 14 distances from `12` to about `1000 μm`.
- DSAM: `90 MeV`, self-supporting about `20 mg/cm²` `119Sn`, with about `8 mg/cm²` contributing to production.
- Target enrichment is about `93%` in both runs.

## Detector Configuration

Twelve Compton-suppressed HPGe detectors at `50°/98°/144°` plus a 14-element BGO multiplicity filter. Coincidence matrices support RDDS decay curves and forward/backward DSAM line shapes.

## Analysis Products

LIFETIME fits normalized unshifted intensities with known/unknown feeding, solid-angle and deorientation corrections. LINESHAPE uses Monte Carlo recoil histories and two stopping-power prescriptions; adopted results average the two and use the larger uncertainty.

## Known Limitations

Coincidence statistics were insufficient for DDCM shifted-feeder gating. DSAM depends on side-feeding modelling, stopping powers, thick-target production profiles and contaminant peaks; a minimum `10%` lifetime error is imposed. The `23/2−` lifetime is only bracketed between RDDS/DSAM sensitivities.

## Sources

- [[singh-2016-lifetime-131ce-133pr]] SI16-1 to SI16-7; PDF pp.2-6; Figs.1-5; Table 1.
