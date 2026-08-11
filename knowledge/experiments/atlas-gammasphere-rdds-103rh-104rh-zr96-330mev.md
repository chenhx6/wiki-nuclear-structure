---
type: experiment
title: "ATLAS Gammasphere-Cologne-plunger 103,104Rh experiment"
aliases: [103Rh 104Rh inverse-kinematics RDDS, Suzuki 2008 Gammasphere plunger]
created: 2026-08-11
updated: 2026-08-11
status: active
review_status: unreviewed
experiment_id: atlas-gammasphere-rdds-103rh-104rh-zr96-330mev
facility: Argonne Tandem Linear Accelerator System
beam: 96Zr
target: 11B
beam_energy: 330 MeV
reaction: 11B(96Zr,xn)103,104Rh
evaporation_channel: 4n to 103Rh; 3n to 104Rh
residual_nuclei: [103rh, 104rh]
detector_array: 101-detector Gammasphere with Cologne plunger and 93Nb degrader
data_status: published
sources: [suzuki-2008-lifetimes-103rh-104rh]
tags: [fusion-evaporation, inverse-kinematics, rdds, ddcm, gamma-gamma-coincidence, a100]
---

# ATLAS Gammasphere-Cologne-Plunger `103,104Rh` Experiment

## Identity

Suzuki 2008 inverse-kinematics RDDS experiment measuring `103Rh` and `104Rh` lifetimes in a single run.

## Beam, Target and Reaction

- `96Zr` beam at `330 MeV` on `300 μg/cm²` `11B` deposited on `4 mg/cm²` `93Nb`;
- `11B(96Zr,4n)103Rh` and `11B(96Zr,3n)104Rh`;
- `3.5 mg/cm²` `93Nb` degrader, used because complete stopping would introduce sizable Doppler attenuation.

## Detector Configuration

Gammasphere used 101 Compton-suppressed Ge detectors around the Cologne plunger. Analysis grouped forward/backward detectors into seven rings at `35°, 50°, 58°, 122°, 130°, 146°, 163°`.

## Plunger Geometry and Velocities

Seven target-degrader separations from `8` to `100 μm`. Mean recoil velocities before the degrader were `5.1(1)% c` and `5.7(3)% c`; after it they were `3.1(1)% c` and `3.3(2)% c` for `103Rh` and `104Rh`, respectively.

## Trigger and Coincidence Conditions

Twofold-or-higher Compton-suppressed events were recorded. Each distance contributed approximately `4×10^8` unfolded events sorted into γ-γ matrices.

## Analysis Products

- shifted/unshifted spectra by ring and distance;
- direct-feeder and corrected indirect-feeder DDCM lifetimes;
- absolute `B(M1)` and `B(E2)` values using earlier branching information and a pure-M1 assumption;
- one-member lifetime baselines for [[103rh-chiral-doublet-candidate]] and [[104rh-chiral-doublet-candidate]].

## Known Limitations

The degrader does not stop the recoils. Middle rings were not useful for Doppler separation; they were cleaning gates only in `104Rh` and omitted in `103Rh`. Some lifetimes use an indirect gate correction. Partner-band lifetimes were not obtained.

## Sources

- [[suzuki-2008-lifetimes-103rh-104rh]] SU08-1 to SU08-15; PDF pp.2-4.

## Evolution Log

- 2026-08-11: created from Suzuki 2008 experiment and DDCM details.
