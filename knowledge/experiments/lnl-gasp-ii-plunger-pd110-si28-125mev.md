---
type: experiment
title: "LNL GASP-II coincidence-plunger 110Pd(28Si,xny p) experiment at 125 MeV"
aliases: [Klemme 1999 GASP-II plunger, 110Pd 28Si 125 MeV coincidence RDDS]
created: 2026-08-11
updated: 2026-08-11
status: active
review_status: unreviewed
experiment_id: lnl-gasp-ii-plunger-pd110-si28-125mev
facility: LNL XTU Tandem
beam: 28Si
target: 110Pd
beam_energy: 125 MeV
reaction: 110Pd(28Si,xnyp)
evaporation_channel: multi-channel 4n/alpha4n/alpha3n/alpha2n/p4n/p3n/3n
residual_nuclei: [130ce, 131ce, 132ce, 133pr, 134pr, 134nd, 135nd]
detector_array: GASP configuration II with inner BGO removed plus Cologne plunger
data_status: published
sources: [klemme-1999-lifetimes-134nd-neighbors]
tags: [fusion-evaporation, gasp, rdds, ddcm, coincidence-plunger, a130]
---

# LNL GASP-II coincidence-plunger 125 MeV 实验

## Identity

Klemme 1999 的 high-statistics coincidence-RDDS data set，以 `134Nd` 为主并同时从六个竞争通道测量 `130-132Ce`、`133,134Pr` 与 `135Nd` 低位 yrast lifetimes。

## Beam, Target and Reaction

- 125 MeV `28Si` beam，LNL XTU Tandem；
- 1.02 mg/cm² enriched self-supporting `110Pd` target；
- 11.5 mg/cm² Au stopper；mean recoil `v/c=1.6%`；
- main `4n→134Nd`，并分析 `α4n/α3n/α2n→130/131/132Ce`、`p4n/p3n→133/134Pr`、`3n→135Nd`。

## Detector Configuration

GASP configuration II 移除 inner BGO ball，把 Compton-shielded Ge detectors 靠近 target，photopeak efficiency 约提高一倍。七个 rings 覆盖约 `31.7-148.3°`；定量 DDCM 使用离 `90°` 最远的四个 rings。

## Trigger and Coincidence Conditions

`1.47×10^9` fold≥3 events；22 个 target-stopper distances，从 `5` 到 `2003 μm`。Distance regulation 对 `0-20 μm` 优于 `0.1 μm`、对 `20-2000 μm` 优于 `1 μm`。

## Data Products

- distance-resolved γγ matrices and shifted/unshifted coincidence components；
- direct- and indirect-feeder-gated `τ(x)` curves；
- 12 个 `134Nd` lifetimes、`B(E2)/Q_t`，以及邻核 12 个 lifetimes；
- finite-stopping corrected short lifetimes and explicit statistical/contaminant/small-correction error terms。

## Nuclei and Bands Studied

[[134nd]] g.s.b., γ, S1/S2 and negative-parity states；[[135nd-d1-band]] low-spin segment；[[134pr]] `9+` state；[[131ce]] `11/2-,15/2-` states；另含 `130,132Ce` 与 `133Pr` sparse control values。

## Known Limitations

Short (`<2 ps`) lifetimes require finite Au-stopper slowing correction and stopping-power uncertainty. Table II branching intensities come from a separate thin-target GASP experiment. Sparse neighbor lifetimes do not establish band identity or partner-band electromagnetic matrices。

## Sources

- [[klemme-1999-lifetimes-134nd-neighbors]] KL99-1 to KL99-4、KL99-11/12/15；PDF pp. 1-5。

## Evolution Log

- 2026-08-11：由 Klemme 1999 建立 coincidence-plunger/DDCM experiment entry。
