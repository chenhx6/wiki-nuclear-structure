---
type: experiment
title: "Yale YRAST Ball 116Sn(24Mg,p3n)136Pm experiment"
aliases: [116Sn(24Mg,p3n)136Pm 130 135 MeV YRAST Ball]
created: 2026-08-11
updated: 2026-08-11
status: active
review_status: unreviewed
experiment_id: yale-yrast-ball-136pm-mg24-130-135mev
facility: Wright Nuclear Structure Laboratory ESTU Tandem Van de Graaff
beam: 24Mg
target: 116Sn
beam_energy: 130 and 135 MeV
reaction: 116Sn(24Mg,p3n)136Pm
evaporation_channel: p3n
residual_nuclei: [136pm]
detector_array: YRAST Ball with 18 coaxial Ge, 3 LEPS and 4 clover detectors
data_status: published
sources: [hecht-2001-chiral-symmetry-breaking-136pm-138eu, starosta-2001-n75-chiral-vibrations]
tags: [fusion-evaporation, yrast-ball, gamma-gamma-coincidence, dco, linear-polarization, a130]
---

# Yale YRAST Ball `116Sn(24Mg,p3n)136Pm` Experiment

## Identity

Hecht 2001 `136Pm` data set used to extend the newly reported partner band, build its links to the yrast structure, measure DCO ratios and exploit clover polarization asymmetry.

## Beam, Target and Reaction

- `24Mg` beam at 130 and 135 MeV from the Yale ESTU Tandem；
- two stacked `116Sn` foils, each `0.8 mg/cm²`；
- `116Sn(24Mg,p3n)136Pm` fusion-evaporation channel。

## Detector Configuration

YRAST Ball at the experiment date: 18 coaxial Ge detectors of about 25% relative efficiency, three LEPS detectors and four clover detectors of about 150% relative efficiency each.

Starosta 2001 describes a 130-MeV Yale/YRAST study as 28 suppressed Ge including five segmented clovers. Because the detector inventory and reaction notation differ from Hecht 2001, the pages are not assumed to describe an exactly identical run without original logs.

## Trigger and Coincidence Conditions

About `6.7×10^8` γ-γ coincidences were accumulated during a five-day run. The paper reports doubles/triples sorting but does not give the full hardware-trigger or cube-building prescription.

## Data Products

- partial level scheme and interband links；
- DCO multipolarity constraints；
- clover added-back scattering asymmetry for selected M1/E2 transitions；
- alignments and branching-derived in-band `B(M1)/B(E2)`。

## Nuclei and Bands Studied

[[136pm]] and [[136pm-chiral-twin-candidate-pair]]。

## Known Limitations

Bandhead spins depend on external isotone systematics. The asymmetry calibration is detector/geometry specific, and the three highlighted new-transition values have substantial uncertainties. Raw coincidences and detector-response calibration are unavailable in the Wiki.

Source metadata conflict: Starosta 2001 prints `116Sn(24Mg,4n)136Pm`, which violates charge conservation, whereas Hecht 2001 prints `p3n`; Starosta also gives a different detector count. Treat the 130-MeV datasets as related/possibly overlapping but not proven identical.

## Sources

- [[hecht-2001-chiral-symmetry-breaking-136pm-138eu]] HE01-1 to HE01-6; PDF pp. 1-3 / journal pp. 051302-1–3。
- [[starosta-2001-n75-chiral-vibrations]] ST01-1 to ST01-5; PDF p. 2 / journal p. 972；reaction/inventory conflict retained。

## Evolution Log

- 2026-08-11：由 Hecht 2001 建立 YRAST Ball `136Pm` data-set entry。
- 2026-08-11：接入 Starosta 2001 related dataset description；保留 `4n/p3n` 与 detector-count conflict。
