---
type: observable
title: 取向衰减系数
aliases: [attenuation coefficient, alignment attenuation coefficient, attenuation factor, alpha K, αK, aK, Gk, time-dependent attenuation factor]
created: 2026-07-08
updated: 2026-07-09
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

[[radeck-2012-deorientation-lifetime-98ru-rdds]] uses time-dependent attenuation factors `Gk(t)` or `Gk(d)` for hyperfine-driven deorientation in inverse Coulomb excitation + RDDS. These `Gk` factors describe how angular-correlation coefficients change with recoil time or target-stopper distance.

[[lauritsen-2025-gamma-angular-formalism-tracking-arrays]] uses `alpha_k` in two nearby but distinct senses: in source angular correlations it is a detector solid-angle attenuation factor that is close to unity in tracking arrays, while in in-beam angular distributions it is the nuclear alignment/deorientation attenuation coefficient calculated from `Pm(J)`.

## Relation to Angular Distribution

For prompt dipole and quadrupole γ rays, Zobel 1980 writes `W(θ)=1+α2(I)A2maxP2(cosθ)+α4(I)A4maxP4(cosθ)`. Thus measured angular-distribution coefficients combine transition-dependent `Amax` factors and alignment-dependent attenuation coefficients.

## Boundary

`αK` is not the same as Gaussian width `σ` or normalized `σ/I`, although all describe aspects of orientation/alignment. Conversion between them depends on the assumed magnetic-substate distribution and spin.

`Gk` in Radeck 2012 is also not the same as detector finite-solid-angle factor `Qk`: `Qk` is a detector geometry correction, whereas `Gk` describes nuclear deorientation.

Lauritsen 2025 makes the same boundary especially visible because the symbol `alpha_k` can denote detector attenuation in one formalism and nuclear alignment attenuation in another. Project notes must preserve the local definition instead of merging all attenuation factors.

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
- [[radeck-2012-deorientation-lifetime-98ru-rdds]]
- [[lauritsen-2025-gamma-angular-formalism-tracking-arrays]]
