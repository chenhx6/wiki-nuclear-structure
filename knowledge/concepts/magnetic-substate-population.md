---
type: concept
title: 磁子态布居
aliases: [magnetic substate population, magnetic-substate distribution, m-substate population, M-substate population, substate population]
created: 2026-07-08
updated: 2026-07-10
status: ai-draft
review_status: human-reviewed
concept_type: gamma-angular-distribution-foundation
confidence: low
high_confirmed_by:
high_confirmed_date:
tags: [alignment, angular-distribution, fusion-evaporation, pado-support]
---

# 磁子态布居 (Magnetic Substate Population)

## Definition

磁子态布居是给定自旋态 `J` 中各个 `m` substates 的 population distribution。若该分布不是各向同性，后续的 gamma-ray angular distribution、angular correlation、polarization 等 observables 就会表现出方向依赖。

对 aligned state，常见条件是 `P(-m) = P(m)`；对 oriented state，则不要求 `P(-m) = P(m)`。二者都属于 magnetic-substate population 的不同对称性情形。

## Source-Level Meaning

[[draper-1970-gaussian-substate-side-feeding]] 明确使用 `P(M)` 表示 emitting level 的 magnetic-substate population，并用 Gaussian `P_sigma(M)` 描述某类 side-feeding input。

[[lauritsen-2025-gamma-angular-formalism-tracking-arrays]] 使用 `Pm(J)` 作为现代 tracking-array formalism 中的 population notation，并把它与 `alpha_k(J)`、`sigma/J`、angular-distribution coefficients 直接联系起来。

[[zobel-1980-magnetic-substate-distributions]] 与 [[zobel-1983-energy-projectile-alignment]] 更多从 attenuation coefficients 这一层描述 population/alignment 的实验表现，而不是直接给出统一的 `Pm(J)` 参数化。

## Relevance to P-ADO

P-ADO 或 in-beam angular-distribution / polarization fitting 的核心难点之一，就是把“未知的 population pattern”转写成可计算的 observable response。具体参数化可以是：

- Gaussian width `sigma`
- normalized width `sigma/I` or `sigma/J`
- attenuation coefficients
- feeding-aware mixed population model

这些量都与 `Pm(J)` 有关，但不在同一记号层面。

## Boundaries

- Gaussian population 是常用近似，不是所有 reaction 的无条件事实。
- magnetic-substate population、spin alignment、attenuation coefficients、Gaussian `sigma`、normalized `sigma/I` / `sigma/J` 是相关但不等同的描述层。
- 若 direct feeding、side feeding、isomeric feeding、short lifetime、Doppler broadening 或 time-dependent deorientation 明显存在，单一 population form 可能不足。

## Necessary Assumptions

- 需要先指定量子化轴。
- 需要先指定 emitting level spin 和正在描述的是 initial population 还是 feeding-modified population。
- 需要先说明采用的 population parameterization，例如 Gaussian width、attenuation coefficients，或 feeding-aware mixed model。

## Discriminating Observables

- angular-distribution coefficients
- angular-correlation coefficients
- linear polarization
- pure-E2 calibration transitions
- feeding intensities and resolved direct-feeding branches

## Supporting Evidence

[[draper-1970-gaussian-substate-side-feeding]]、[[zobel-1980-magnetic-substate-distributions]]、[[zobel-1983-energy-projectile-alignment]] 与 [[lauritsen-2025-gamma-angular-formalism-tracking-arrays]] 都把 magnetic-substate population 或其等价 attenuation description 视为 angular-distribution analysis 的核心输入层。

## Counter-evidence and Competing Interpretations

- 不同 feeding components 可以产生不同的 effective population description。
- simple Gaussian form 可能不足以描述全部 level population。
- 某些 observable 的变化也可能来自 detector response、deorientation、lifetime effect 或 host-specific context，而不只是 population width。

## Our Current Position

本页作为 P-ADO / angular-distribution 项目的术语边界页使用。任何具体数值、拟合区间或 low-spin / high-spin 结论，都应回到 source locator 或明确标记为 project-level inference。

Diamond 1966 provides an early heavy-ion example: entrance-channel orbital angular momentum is expected to populate substates near `m=0`, neutron evaporation broadens the distribution, and stretched-E2 `A2/A4` data are compared with a Gaussian reference. The paper also records deviations and extranuclear deorientation limits, so the Gaussian is not a universal population law.

## Sources

- [[draper-1970-gaussian-substate-side-feeding]]
- [[zobel-1980-magnetic-substate-distributions]]
- [[zobel-1983-energy-projectile-alignment]]
- [[lauritsen-2025-gamma-angular-formalism-tracking-arrays]]
- [[diamond-1966-nuclear-alignment-heavy-ion-reactions]]
