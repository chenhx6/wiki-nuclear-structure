---
type: experiment
title: "ATLAS digital Gammasphere 135Pr 80 MeV 16O dataset"
aliases: [DGS 135Pr dataset, Sensharma 2019 Gammasphere experiment]
created: 2026-07-03
updated: 2026-07-03
status: ai-draft
review_status: unreviewed
experiment_id: atlas-dgs-135pr-o16-80mev
facility: ATLAS, Argonne National Laboratory
beam: 16O
target: 123Sb
beam_energy: 80 MeV
reaction: 123Sb(16O,4n)135Pr
evaporation_channel: 4n
residual_nuclei: [135pr]
detector_array: digital Gammasphere
data_status: published
sources: [sensharma-2019-two-phonon-wobbling-135pr]
tags: [atlas, digital-gammasphere, 135pr, gamma-spectroscopy]
---

# ATLAS Digital Gammasphere `135Pr` Data Set

## Identity

Sensharma 2019 报告的高统计量 digital Gammasphere 数据集。它与 Matta 2015 的 [[atlas-gammasphere-135pr-o16-80mev]] 使用相同束流能量和靶核，但事件统计与数字采集配置不同，因此单独建页，避免覆盖早期数据集。

## Beam, Target and Reaction

80 MeV `16O` 束流轰击 `634 μg/cm²` 的 `123Sb` 靶，靶前有 `15 μg/cm²` Al 层；论文研究 `135Pr` 的能级结构。

## Detector Configuration

Gammasphere 有 83 个工作的 Compton-suppressed Ge 探测器，分布在束流周围 17 个角度环。

## Trigger and Coincidence Conditions

以 triple-coincidence mode 采集，共得到 `1.45×10^10` 个三重及更高重数 γ 符合事件。

## Data Products

RADWARE 分析经 `152Eu` 能量和效率刻度的数据，构建 γ-γ matrices 与 γ-γ-γ cubes；角分布分析将探测器归并为覆盖 `0°-90°` 的 7 个效率修正角度环。

## Nuclei and Bands Studied

用于扩展 [[135pr]] 的 yrast、signature-partner sequences，并建立 [[135pr-second-side-band]] 及其到 [[135pr-side-band]] 的连接跃迁。

## Known Limitations

- 本文未报告 linear polarization；
- 部分弱跃迁只给出 DCO-like ratio，不能完成完整角分布；
- 相对 E2 ratios 缺少本数据集独立的绝对寿命约束。

## Sources

- [[sensharma-2019-two-phonon-wobbling-135pr]]

## Evolution Log

- 2026-07-03：由 Sensharma 2019 建立独立 DGS 高统计数据集页。
