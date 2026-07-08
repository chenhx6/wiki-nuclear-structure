---
type: method
title: γ 射线角分布分析
aliases: [angular distribution, gamma-ray angular distribution, gamma angular distribution, in-beam angular distribution, ADO]
created: 2026-07-08
updated: 2026-07-09
status: ai-draft
review_status: unreviewed
method_type: gamma-ray-angular-distribution
tags: [multipolarity, mixing-ratio, alignment, pado-support]
---

# γ 射线角分布分析（Gamma-Ray Angular Distribution）

## Purpose

角分布分析利用不同探测角度的 γ 射线强度来约束 transition multipolarity、mixing ratio 和 emitting level orientation/alignment。

## Inputs and Assumptions

- 探测器角度与效率归一化；
- transition spin sequence、multipolarity 和可能的 mixing ratio；
- emitting level 的 magnetic-substate population 或等效 attenuation/alignment 描述；
- feeding path、side feeding、寿命和 Doppler broadening 等系统项。

## Source-Level Foundation

[[draper-1970-gaussian-substate-side-feeding]] 对 stretched E2 transitions 给出 `A2/A4` 与 Gaussian side-feeding substate population 的 exact treatment。[[zobel-1980-magnetic-substate-distributions]] 明确指出若 alignment 已知，角分布可用于 multipolarity and mixing-ratio determination；但只有两个 angular-distribution coefficients 时，同时确定 `α2`、`α4` 和 `δ` 会有歧义。

## Relation to Other Methods

Angular distribution 可与 [[multipole-mixing-ratio]]、[[dco-ratio]] 和线偏振共同约束 `δ`。不同实验几何、beam energy、projectile 或 target condition 下得到的角分布参数不能无条件混用。

## Tracking-Array Formalism

[[lauritsen-2025-gamma-angular-formalism-tracking-arrays]] gives a modern tracking-array notation for in-beam angular distributions: `omega(theta)=A0+alpha2 A2 P2(cos theta)+alpha4 A4 P4(cos theta)+...`. In that local formula, `Amax_k` contains the spin sequence, multipolarities and mixing ratio `delta`, while `alpha_k(J)` is the nuclear alignment/deorientation attenuation calculated from magnetic-substate population `Pm(J)`. The same source usually parameterizes `Pm(J)` as a Gaussian with normalized width `sigma/J`.

This `alpha_k` must not be merged with detector solid-angle attenuation. Lauritsen 2025 uses detector attenuation in the source-correlation formalism and nuclear alignment attenuation in the in-beam angular-distribution formalism; the local definition controls the meaning.

## What It Can Establish

在 alignment 或 population model 足够受控时，角分布可约束 transition multipolarity、mixing ratio 和 attenuation/alignment 参数。

## What It Cannot Establish Alone

仅凭两个角分布系数通常不能同时唯一确定 `α2`、`α4` 与 `δ`；弱峰、短寿命、Doppler broadening 和 feeding ambiguity 会增加多解风险。

## Sources

- [[draper-1970-gaussian-substate-side-feeding]]
- [[zobel-1980-magnetic-substate-distributions]]
- [[zobel-1983-energy-projectile-alignment]]
- [[lauritsen-2025-gamma-angular-formalism-tracking-arrays]]
