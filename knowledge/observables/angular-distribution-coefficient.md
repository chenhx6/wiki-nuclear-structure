---
type: observable
title: 角分布系数
aliases: [angular distribution coefficient, angular-distribution coefficient, A2, A4, Legendre coefficient]
created: 2026-07-08
updated: 2026-07-08
status: ai-draft
review_status: unreviewed
observable_kind: gamma-angular-distribution-observable
symbol: A2, A4
units: dimensionless
tags: [angular-distribution, mixing-ratio, alignment, pado-support]
---

# 角分布系数（Angular-Distribution Coefficient）

## Definition

γ 射线角分布常写为 Legendre expansion。对 stretched E2 case，[[draper-1970-gaussian-substate-side-feeding]] 使用 `W(θ)=1+A2P2(cosθ)+A4P4(cosθ)`，其中 `A2` 与 `A4` 是待解释或拟合的角分布系数。

## Dependence

`A2/A4` 不是单纯的 transition label。它们依赖 emitting level 的 magnetic-substate population、spin sequence、multipolarity/mixing ratio、feeding history 和 detector/analysis treatment。

## Relevance to P-ADO

在 P-ADO mixing-ratio extraction 中，`A2/A4` 或等效角分布响应与 polarization observables 一起约束 `δ`。如果 alignment 或 substate population 参数被强行固定，`δ` 的 branch selection 和置信区间可能被系统性影响。

## How It Is Obtained

由不同探测角度的 efficiency-corrected γ-ray intensities 拟合 Legendre polynomial expansion 得到。

## Diagnostic Use

用于约束 transition multipolarity、mixing ratio 和 emitting level alignment/population assumptions。

## Model Dependence

系数依赖 spin sequence、multipolarity/mixing ratio、magnetic-substate population、feeding history 和 detector/analysis corrections。

## Failure Modes and Ambiguities

alignment 未知、side feeding 未处理、Doppler broadening、弱峰污染或不同实验条件混用都可导致错误的 `δ` branch 或过窄误差。

## Sources

- [[draper-1970-gaussian-substate-side-feeding]]
- [[zobel-1980-magnetic-substate-distributions]]
- [[zobel-1983-energy-projectile-alignment]]
