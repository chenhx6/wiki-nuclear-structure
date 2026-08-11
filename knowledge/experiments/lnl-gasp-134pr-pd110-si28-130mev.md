---
type: experiment
title: "LNL GASP 110Pd(28Si,p3n)134Pr experiment"
aliases: [110Pd(28Si,p3n)134Pr 130 MeV GASP]
created: 2026-08-11
updated: 2026-08-11
status: active
review_status: unreviewed
experiment_id: lnl-gasp-134pr-pd110-si28-130mev
facility: LNL XTU Tandem
beam: 28Si
target: 110Pd
beam_energy: 130 MeV
reaction: 110Pd(28Si,p3n)134Pr
evaporation_channel: p3n
residual_nuclei: [134pr]
detector_array: early GASP with 31 Compton-suppressed Ge detectors and 80-crystal BGO inner ball
data_status: published
sources: [petrache-1996-rotational-bands-134pr]
tags: [fusion-evaporation, gasp, dco, gamma-gamma-coincidence, a130]
---

# LNL GASP `110Pd(28Si,p3n)134Pr` 实验

## Identity

Petrache 1996 的主要高统计 `134Pr` data set，用于延伸四带结构、建立 Band 4 decay links，并构建 DCO multipolarity constraints。

## Beam, Target and Reaction

- 130 MeV `28Si` beam；
- two 500 μg/cm² self-supporting `110Pd` foils enriched to 98.6%；
- `110Pd(28Si,p3n)134Pr`，通过 BGO sum-energy/multiplicity gates 增强 p3n channel。

## Detector Configuration

Early GASP：31 high-efficiency Compton-suppressed Ge detectors 与 80-crystal BGO inner ball。DCO sorting 使用八个 `90°` Ge detectors 对比约 `31.7°/36°/144°/148.3°` 的 detector group。

## Trigger and Coincidence Conditions

At least three Ge detectors and three BGO elements in coincidence；约收集 `6×10^8` 个 triple-and-higher-fold events。

## Data Products

- low-lying-transition-gated matrices and high-fold γ coincidences；
- asymmetric DCO matrix；
- level scheme、transition intensities、DCO assignments、experimental routhians/alignments、branching-derived `B(M1)/B(E2)`。

## Nuclei and Bands Studied

[[134pr]] Bands 1-4。该数据集提供足够 sensitivity，把 Band 4 延伸并通过九条 observed linking transitions 接入 yrast structure。

## Known Limitations

DCO 数值依赖 GASP geometry、gate multipolarity 与 `φ` averaging；不能作为其它阵列的通用 calibration。若干 weak decay-out transitions 无法做 DCO；244/245-keV doublet unresolved；Band 4 的 `33 keV` link 由 intensity balance 假定。

## Sources

- [[petrache-1996-rotational-bands-134pr]] PE96-1 to PE96-3、PE96-8/9；PDF pp. 3-12 / journal pp. 108-117。

## Evolution Log

- 2026-08-11：由 Petrache 1996 建立主要 GASP 数据入口。
