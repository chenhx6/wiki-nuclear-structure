---
type: experiment
title: "Legnaro Euroball 163Lu/164Lu experiment"
aliases: [139La(29Si,xn) Euroball, 139La(29Si,5n)163Lu, 139La(29Si,4n)164Lu, 145 MeV 29Si on 139La]
created: 2026-07-03
updated: 2026-07-03
status: active
review_status: unreviewed
experiment_id: legnaro-euroball-163lu-si29-145mev
facility: Legnaro XTU tandem
beam: 29Si
target: 139La
beam_energy: 145 MeV
reaction: 139La(29Si,5n)163Lu
evaporation_channel: 5n
residual_nuclei: [163lu]
detector_array: Euroball
data_status: published
sources: [domscheit-1999-triaxial-superdeformation-163lu]
tags: [non-a130, fusion-evaporation, euroball, high-spin, gamma-coincidence]
---

# Legnaro Euroball `163Lu/164Lu` 实验

## Identity

145 MeV `29Si` + `139La` 熔合蒸发实验产生 `168Lu` 复合核。5n 道产生 [[163lu]]，4n 道产生 `164Lu`；本文摄入范围只覆盖 `163Lu`，`164Lu` 结果由作者另文发表。

## Beam, Target and Reaction

- 束流：145 MeV `29Si`，Legnaro XTU tandem；
- 靶：薄自支撑 `139La`；
- 论文统一写法：`139La(29Si,xn)`；
- `139La(29Si,5n)163Lu`；
- `139La(29Si,4n)164Lu`，但本文不讨论其能级与带结构。

## Detector Configuration

初始 Euroball 配置：13 Cluster Ge、25 Clover Ge、28 tapered single-element Ge。因稳定性和能量分辨问题，离线筛选后保留 25 tapered、75 Cluster elements 和 96 Clover elements。

## Trigger and Coincidence Conditions

初始采集约 `3.8×10^9` 个抑康普顿前 fold≥6 Ge 事件；筛选后得到 `2.3×10^9` 个抑康普顿 fold≥3 符合事件。

## Data Products

- 门控 `Eγ-Eγ` 矩阵；
- 三维 cube、四维 hypercube；
- 多种门控符合谱；
- forward/backward 对 near-90° Clover 的 DCO 矩阵。

## Nuclei and Bands Studied

- [[163lu-sd1]]
- [[163lu-sd2]]
- `163Lu` 正常形变 `[411]1/2+`、`[404]7/2+`、`[523]7/2-` 结构。

## Known Limitations

- 早期 Euroball 运行存在探测器稳定性与数据获取问题，部分元件被丢弃；
- 本文没有报告偏振或 ADO；
- SD1-SD2 连接跃迁未能建立；
- DCO 比必须按本阵列几何和门条件解释。

## Sources

- [[domscheit-1999-triaxial-superdeformation-163lu]]

## Evolution Log

- 2026-07-03：由 Domscheit 1999 实验段建立。
