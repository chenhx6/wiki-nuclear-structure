---
type: experiment
title: "TIFR-BARC INGA 135Pr experiment"
aliases: [135Pr INGA experiment, TIFR 123Sb 16O 80 MeV]
created: 2026-07-03
updated: 2026-07-03
status: active
review_status: unreviewed
experiment_id: tifr-inga-135pr-o16-80mev
facility: TIFR-BARC Pelletron-LINAC, Mumbai
beam: 16O
target: 123Sb
beam_energy: 80 MeV
reaction: "123Sb(16O,4n)135Pr"
evaporation_channel: 4n
residual_nuclei: [135pr]
detector_array: Compton-suppressed INGA clover array
data_status: analyzed-in-matta-2015
sources: [matta-2015-transverse-wobbling-135pr]
tags: [135pr, inga, linear-polarization, gamma-coincidence]
---

# TIFR-BARC/INGA `135Pr` Experiment

## Identity

Matta 2015 的第二套数据，主要提供 clover linear-polarization asymmetry。

## Beam, Target and Reaction

80 MeV `16O` 束轰击 `630 μg/cm²` `123Sb` 靶；靶前有 `15 μg/cm²` Al，靶后有 `20 mg/cm²` Au。4n 蒸发道产生 `135Pr`。

## Detector Configuration

Compton-suppressed INGA clover array。Clover 单元用于将 Compton scattering 方位分布转换为电/磁性质约束。

## Trigger and Coincidence Conditions

收集 `4.5×10^8` 个二重及以上 γ coincidence events；分析使用 RADWARE、BLUE libraries 和 MARCOS。

## Data Products

- Fig.3 的 polarization asymmetry；
- 747.0、812.8 keV side-to-yrast connecting transitions 的正 asymmetry；
- 593.9 keV signature-partner-to-yrast transition 的负 asymmetry；
- 与已知 E2/M1 校准跃迁的比较。

## Nuclei and Bands Studied

[[135pr-yrast-band]]、[[135pr-side-band]]、[[135pr-signature-partner-band]]。

## Known Limitations

- 只有统计足够的 747.0、812.8 和 593.9 keV 报告可靠 asymmetry；
- asymmetry 符号依赖本文的校准与约定，不能跨实验直接套用；
- polarization 只区分主要电/磁性质，不单独给出完整 mixing ratio。

## Sources

- [[matta-2015-transverse-wobbling-135pr]]

## Evolution Log

- 2026-07-03：由 Matta 2015 建立 INGA 偏振数据集页。
