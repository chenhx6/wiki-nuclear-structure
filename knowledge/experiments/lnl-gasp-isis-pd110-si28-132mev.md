---
type: experiment
title: "LNL GASP+ISIS 110Pd(28Si,xnyalpha) experiment at 132 MeV"
aliases: [Petrache 1998 GASP ISIS DSAM, 110Pd 28Si 132 MeV GASP ISIS]
created: 2026-08-11
updated: 2026-08-11
status: active
review_status: unreviewed
experiment_id: lnl-gasp-isis-pd110-si28-132mev
facility: LNL XTU Tandem
beam: 28Si
target: 110Pd
beam_energy: 132 MeV
reaction: 110Pd(28Si,xnyalpha)
evaporation_channel: multi-channel 4n/3n/alpha3n
residual_nuclei: [134nd, 135nd, 131ce]
detector_array: GASP with 40 Compton-suppressed HPGe and 80-element BGO inner ball plus 40-telescope ISIS
data_status: published
sources: [petrache-1998-highly-deformed-lifetimes-131ce-nd]
tags: [fusion-evaporation, gasp, isis, dsam, charged-particle-tagging, a130]
---

# LNL GASP+ISIS `110Pd(28Si,xnyα)` 132 MeV 实验

## Identity

Petrache 1998 的 shared-systematics thick-target DSAM data set，在同一 beam/target/detector 条件下比较 `134Nd`、`135Nd` 与 `131Ce` 的五条 highly-deformed/high-spin bands。

## Beam, Target and Reaction

- 132 MeV `28Si` beam，由 LNL XTU Tandem 提供；
- 1 mg/cm² `110Pd` evaporated on 10 mg/cm² Au backing；
- compound `138Nd` 的 `4n`/`3n` channels 布居 `134Nd/135Nd`；`α3n` channel 布居 `131Ce`。

## Detector Configuration

GASP：40 Compton-suppressed HPGe 与 80-element BGO inner ball；ISIS：40 个 `ΔE-E` Si telescopes 做 charged-particle detection。分析角度为 `36°, 60°, 72°, 90°, 108°, 120°, 144°`。

## Trigger and Coincidence Conditions

至少三个 Ge 与四个 BGO 同时触发；共收集 `1.9×10^9` 个 triple-and-higher-fold Compton-suppressed events。每条带以全部 in-band transition 组合做 double gates，再按 detector angle 投影。

## Data Products

- angle-dependent double-gated spectra 与 peak centroids；
- fractional Doppler shifts `F(τ)`；
- constant in-band `Q0` 与 effective side-feeding `Q_sf` 的二维 `χ²` fits；
- paired cranked-Strutinsky calculated charge-quadrupole-moment comparison。

## Nuclei and Bands Studied

- [[134nd]]：yrast HD、excited HD、Band 3；
- [[135nd]]：一条 HD band；
- [[131ce]]：yrast HD band。

ISIS 对 `134Nd` 数据施加 α veto、对 `131Ce` 要求 α coincidence；这是分离两核下部近简并 peaks、获得可靠 centroid shifts 的关键。

## Known Limitations

Stopping powers 与 unresolved feeding 是作者明确列出的 DSAM 系统限制。所有带用 constant `Q0/Q_sf` 和 effective one-transition side-feeding cascade；`131Ce` 还需 Monte Carlo α-evaporation kinematics correction。Band 3 上段点少且处于低 sensitivity 区，不能 firm 选择 one- versus two-`Q0` fit。

## Sources

- [[petrache-1998-highly-deformed-lifetimes-131ce-nd]] PE98-1/2、PE98-11；PDF pp. 1-4 / journal pp. R10-R13；Figs. 1-2。

## Evolution Log

- 2026-08-11：由 Petrache 1998 建立 shared GASP+ISIS DSAM experiment entry。
