---
type: experiment
title: "Yale YRAST Ball 92Mo(51V,2pn)140Eu experiment"
aliases: [92Mo 51V 2pn 140Eu 205 MeV YRAST Ball]
created: 2026-08-11
updated: 2026-08-11
status: active
review_status: unreviewed
experiment_id: yale-yrast-ball-140eu-v51-205mev
facility: Wright Nuclear Structure Laboratory ESTU Tandem Van de Graaff
beam: 51V
target: 92Mo
beam_energy: 205 MeV
reaction: 92Mo(51V,2pn)140Eu
evaporation_channel: 2pn
residual_nuclei: [140eu]
detector_array: YRAST Ball with 7 segmented clovers, 16 coaxial Ge and 3 LEPS
data_status: published
sources: [hecht-2003-chirality-shape-coexistence-140eu]
tags: [fusion-evaporation, yrast-ball, gamma-gamma-coincidence, dco, angular-distribution, linear-polarization, a140]
---

# Yale YRAST Ball `92Mo(51V,2pn)140Eu` Experiment

## Identity

Hecht 2003 high-statistics data set used to establish five `140Eu` bands, 69 transitions and the two candidate-pair problems.

## Beam, Target and Reaction

- `51V` beam at 205 MeV from the Yale ESTU Tandem;
- two stacked `92Mo` targets, each `700 μg/cm²`;
- 205 MeV chosen from a 190–220 MeV excitation-function study;
- `92Mo(51V,2pn)140Eu`, with about 15% of the reaction intensity assigned to `140Eu` at the selected energy.

## Detector Configuration

Seven Compton-suppressed segmented clover Ge detectors at `90°`; 16 suppressed coaxial Ge at `50°` (6), `126°` (8) and `160°` (2); three LEPS detectors, two at `50°` and one at `90°`. Total photopeak efficiency was about 2.5%.

## Data Products and Calibrations

- five-day acquisition with about `1.0×10^9` unfolded doubles and `4.7×10^8` unfolded triples;
- x-ray coincidences and excitation function for isotope assignment;
- gated angular distributions at `50°/90°/126°/160°`;
- `90°/160°` DCO matrix and neighboring-nucleus dipole/quadrupole calibrations;
- clover Compton asymmetry `A=(N_parallel-N_perpendicular)/(N_parallel+N_perpendicular)`, magnetic-positive/electric-negative in this paper.

## Nuclei and Bands Studied

[[140eu]], [[140eu-bands-1-2-doublet-candidate]] and [[140eu-bands-3-4-doublet-candidate]].

## Known Limitations

Angular distributions are gated and fitted only through `P2`, relying on averaged correlations and neighboring-nucleus calibration. The asymmetry sign convention is opposite to Hecht 2001's printed definition. Raw matrices and response files are not available, weak transitions remain tentative, and the experiment does not measure lifetimes.

## Sources

- [[hecht-2003-chirality-shape-coexistence-140eu]] HE03-1, HE03-2, HE03-7; PDF pp. 2-7 / journal pp. 054310-2–7.

## Evolution Log

- 2026-08-11: created from Hecht 2003 experiment and calibration details.
