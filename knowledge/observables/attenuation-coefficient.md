---
type: observable
title: 取向衰减系数
aliases: [attenuation coefficient, spin-alignment attenuation factor, attenuation factor, alpha K, αK, aK]
created: 2026-07-08
updated: 2026-07-08
status: ai-draft
review_status: unreviewed
observable_kind: gamma-angular-distribution-observable
symbol: αK
units: dimensionless
tags: [alignment, angular-distribution, fusion-evaporation, pado-support]
---

# 取向衰减系数（Attenuation Coefficient）

## Definition

[[zobel-1980-magnetic-substate-distributions]] defines the degree of alignment of a state with spin `I` by attenuation coefficients `αK(I)=PK(I)/BK(I)`, where `PK` is the statistical tensor for actual partial alignment and `BK` is the corresponding tensor for complete alignment.

## Relation to Angular Distribution

For prompt dipole and quadrupole γ rays, Zobel 1980 writes `W(θ)=1+α2(I)A2maxP2(cosθ)+α4(I)A4maxP4(cosθ)`. Thus measured angular-distribution coefficients combine transition-dependent `Amax` factors and alignment-dependent attenuation coefficients.

## Boundary

`αK` is not the same as Gaussian width `σ` or normalized `σ/I`, although all describe aspects of orientation/alignment. Conversion between them depends on the assumed magnetic-substate distribution and spin.

## How It Is Obtained

从已知 spin/multipolarity 的参考 transitions 的 angular-distribution coefficients 与 maximum-alignment coefficients 比较得到。

## Diagnostic Use

用于描述 partial alignment、检查 magnetic-substate population shape，并为 mixing-ratio analysis 提供 alignment 输入或约束。

## Model Dependence

解释 `α2/α4` 关系需要假设 feeding history、cascade structure、Gaussian/ALY relation 或其他 substate-population model。

## Failure Modes and Ambiguities

β feeding、isomeric feeding、short lifetime Doppler broadening、multiple feeding components 与不同 beam conditions 可使简单 attenuation relation 失效。

## Sources

- [[zobel-1980-magnetic-substate-distributions]]
- [[zobel-1983-energy-projectile-alignment]]
