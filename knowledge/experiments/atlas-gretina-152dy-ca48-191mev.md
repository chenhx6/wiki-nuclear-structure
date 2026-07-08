---
type: experiment
title: "ATLAS GRETINA 152Dy experiment"
aliases: [152Dy GRETINA experiment, ATLAS exp1909 152Dy, 108Pd 48Ca 191 MeV]
created: 2026-07-09
updated: 2026-07-09
status: active
review_status: unreviewed
experiment_id: atlas-gretina-152dy-ca48-191mev
facility: ATLAS, Argonne National Laboratory
beam: 48Ca
target: 108Pd
beam_energy: 191 MeV
reaction: "108Pd(48Ca,4n)152Dy"
evaporation_channel: 4n
residual_nuclei: [152dy]
detector_array: GRETINA; LaBr2 isomer-trigger array
data_status: analyzed-in-lauritsen-2025
sources: [lauritsen-2025-gamma-angular-formalism-tracking-arrays]
tags: [152dy, gretina, tracking-array, angular-distribution, dco-ratio, linear-polarization]
---

# ATLAS/GRETINA `152Dy` Experiment

## Identity

ATLAS experiment 1909 produced `152Dy` for in-beam tracking-array demonstrations in [[lauritsen-2025-gamma-angular-formalism-tracking-arrays]]. The dataset is used for angular-distribution, DCO and linear-polarization examples rather than as a full standalone structure publication in this Wiki.

## Beam, Target and Reaction

`191 MeV` `48Ca` beam on a `0.789 mg/cm2` `108Pd` target populated `152Dy` through the `4n` evaporation channel, `108Pd(48Ca,4n)152Dy`.

## Detector Configuration

The experiment used GRETINA with 47 crystals, corresponding to about `47/120 = 39%` occupancy. A `24 mg/cm2` Pb catcher foil was placed about 35 cm behind the target. The `152Dy` recoil velocity quoted for the analysis is `v/c=0.027`.

The isomer trigger used gamma rays below the `17+`, `T1/2=60 ns` isomer stopped in the Pb catcher and detected in a LaBr2 array shielded from the target at the center of GRETINA.

## Trigger and Coincidence Conditions

Data were acquired over 2 days and 10 hours in 2022. Appendix B.1 reports `1.55e9` good gamma rays with `FOM < 0.8` in the `152Dy` dataset, and notes that this is small compared with typical experiments.

## Data Products

- Angular-distribution response-function examples for the `991 keV`, `781 keV` and `432 keV` lines.
- DCO examples used with angular-distribution constraints to test the `432 keV` assignment.
- Linear-polarization examples for the `968 keV` `E1` line and the `432 keV` mixed transition.

## Nuclei and Bands Studied

The dataset is linked here to [[152dy]]. This ingest does not create separate `152Dy` band pages.

## Known Limitations

- Lauritsen 2025 uses this data primarily to demonstrate tracking-array response, DCO and polarization methods.
- The dataset is explicitly described as small compared with typical experiments.
- For the `432 keV` line, stopped-line interference means only polar angles near and above `90 deg` were used in the angular-distribution example.

## Sources

- [[lauritsen-2025-gamma-angular-formalism-tracking-arrays]]

## Evolution Log

- 2026-07-09：由 Lauritsen 2025 Appendix B.1 与 Secs.3--5 建立 `152Dy` GRETINA 数据集入口。
