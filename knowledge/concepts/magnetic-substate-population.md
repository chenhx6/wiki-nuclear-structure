---
type: concept
title: 磁子态布居
aliases: [magnetic substate population, magnetic-substate distribution, m-substate population, M-substate population, substate population]
created: 2026-07-08
updated: 2026-07-08
status: ai-draft
review_status: unreviewed
concept_type: gamma-angular-distribution-foundation
confidence: low
high_confirmed_by:
high_confirmed_date:
tags: [alignment, angular-distribution, fusion-evaporation, pado-support]
---

# 磁子态布居（Magnetic Substate Population）

## Definition

磁子态布居是给定自旋态 `J` 中不同 `M` substates 的 population distribution。对束流方向取量子化轴时，非各向同性的 `M` 分布会使随后的 γ 射线角分布出现各向异性。

## Source-Level Meaning

[[draper-1970-gaussian-substate-side-feeding]] 使用 `P(M)` 表示 emitting level 的 substate population，并用 `Pσ(M)` 表示 side feeding 引入的 normalized Gaussian population。该来源中的 `σ` 是 Gaussian width，不应直接等同于后续项目中常见的 `σ/I` 输入参数。

[[zobel-1980-magnetic-substate-distributions]] 与 [[zobel-1983-energy-projectile-alignment]] 使用 attenuation coefficients `αK` 描述 alignment loss and substate-distribution shape. 这些系数与 Gaussian width 是相关描述，但不是同一变量。

## Relevance to P-ADO

P-ADO 或 angular-distribution/polarization fitting 需要把未知的 orientation/alignment 信息转化为可计算响应。具体参数化可能是 Gaussian width、attenuation coefficients 或其他等效/近似描述，必须按来源定义区分。

## Boundaries

- Gaussian distribution 是常用假设，不是所有 fusion-evaporation 反应的无条件事实。
- `M`-substate population、spin alignment、attenuation coefficients、Gaussian `σ` 与 `σ/I` 是相关但不相同的描述层。

## Necessary Assumptions

需要先指定量子化轴、emitting level spin、feeding history 和采用的 population parameterization。

## Discriminating Observables

γ-ray angular-distribution coefficients、attenuation coefficients、linear polarization 与 feeding intensities 可共同约束该分布。

## Supporting Evidence

Draper 1970、Zobel 1980 和 Zobel 1983 均把 magnetic-substate population 或其 attenuation representation 作为角分布分析的核心输入。

## Counter-evidence and Competing Interpretations

不同 feeding components、isomeric feeding、β feeding、short lifetimes 和 Doppler broadening 都可能破坏简单 Gaussian interpretation。

## Our Current Position

本页作为 P-ADO 项目的术语边界页；所有具体数值和写作用语必须回到 source locator。

## Necessary Assumptions

需要先指定量子化轴、emitting level spin、feeding history 和采用的 population parameterization。

## Discriminating Observables

γ-ray angular-distribution coefficients、attenuation coefficients、linear polarization 与 feeding intensities 可共同约束该分布。

## Supporting Evidence

Draper 1970、Zobel 1980 和 Zobel 1983 均把 magnetic-substate population 或其 attenuation representation 作为角分布分析的核心输入。

## Counter-evidence and Competing Interpretations

不同 feeding components、isomeric feeding、β feeding、short lifetimes 和 Doppler broadening 都可能破坏简单 Gaussian interpretation。

## Our Current Position

本页作为 P-ADO 项目的术语边界页；所有具体数值和写作用语必须回到 source locator。

## Sources

- [[draper-1970-gaussian-substate-side-feeding]]
- [[zobel-1980-magnetic-substate-distributions]]
- [[zobel-1983-energy-projectile-alignment]]
