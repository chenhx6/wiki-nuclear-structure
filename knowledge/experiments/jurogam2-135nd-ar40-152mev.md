---
type: experiment
title: "JUROGAM II 135Nd TiP experiment"
aliases: [135Nd five-neutron JUROGAM II dataset, Lv 2021 135Nd dataset]
created: 2026-07-04
updated: 2026-07-04
status: ai-draft
review_status: unreviewed
experiment_id: jurogam2-135nd-ar40-152mev
facility: University of Jyväskylä K130 Cyclotron
beam: 40Ar
target: 100Mo
beam_energy: 152 MeV
reaction: 100Mo(40Ar,5n)135Nd
evaporation_channel: 5n
residual_nuclei: [135nd]
detector_array: JUROGAM II
data_status: published
sources: [lv-2021-tilted-precession-135nd]
tags: [fusion-evaporation, jurogam, tilted-precession, a130]
---

# JUROGAM II `135Nd` TiP 实验

## Identity

Lv 2021 用于建立 `135Nd` D1/TiP1/TiP2 level scheme 与电磁判据的高统计 in-beam γ spectroscopy 数据集。

## Beam, Target and Reaction

- 152 MeV `40Ar` beam，K130 cyclotron；
- 0.5 mg/cm² self-supported enriched `100Mo` target；
- `100Mo(40Ar,5n)135Nd`。

## Detector Configuration

JUROGAM II 共 39 个 Compton-suppressed Ge：15 个 tapered detectors 位于 backward angles，24 个 clover 位于 75.5°、104.5°（约 90°）。`R_DCO` 使用 157.6° 对 75.5°+104.5°分组，`R_ac` 使用 133.6°+157.6° 对 75.5°+104.5°分组；polarization 使用 clover crystal 间 Compton scattering。

## Trigger and Coincidence Conditions

Triggerless Total Data Readout，100 MHz timestamps；记录约 `5.1×10^10` 个 fold≥3 events。

## Data Products

- energy/efficiency-calibrated γγ matrices 与 γγγ cubes；
- double-/triple-gated coincidence spectra；
- `R_DCO`、`R_ac`、linear-polarization 与 angular-distribution datasets；
- Table I-II 的 transition properties 与相对 transition-probability ratios。

## Nuclei and Bands Studied

[[135nd]] 的 [[135nd-d1-band]]、[[135nd-tip1-band]]、[[135nd-tip2-band]]。

## Known Limitations

- TiP2 仅三态，234 keV link 太弱而无 multipolarity/`δ`；
- polarization 只覆盖部分 clean strong links；
- 部分 transition-probability information 是 ratios，依赖 branching/mixing-ratio inputs；
- 同一 `5.1×10^10` event pool 也服务相邻 Nd 研究，不能按论文数重复计为独立实验。

## Sources

- [[lv-2021-tilted-precession-135nd]]

## Evolution Log

- 2026-07-04：由 Lv 2021 建立。
