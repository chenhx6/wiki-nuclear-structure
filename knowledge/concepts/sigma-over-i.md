---
type: concept
title: σ/I 归一化宽度
aliases: [sigma over I, sigma/I, sigma-over-I, sigma over spin, alignment width over spin]
created: 2026-07-08
updated: 2026-07-08
status: ai-draft
review_status: unreviewed
concept_type: angular-distribution-analysis-parameter
confidence: low
high_confirmed_by:
high_confirmed_date:
tags: [alignment, angular-distribution, mixing-ratio, pado-support]
---

# σ/I 归一化宽度（Sigma over I）

## Definition

`σ/I` 在本 Wiki 当前项目中作为 P-ADO / angular-distribution fitting 里用于描述 alignment-width uncertainty 的工作术语。它通常意图把 magnetic-substate distribution 的宽度按 spin scale 归一化，但不同文献可能使用 `σ`、`σ/J`、attenuation coefficients 或其他等效参数。

## Current Boundary

本页尚未把 `σ/I` 定义为某一篇来源的固定符号。[[draper-1970-gaussian-substate-side-feeding]] 中 `σ` 是 Gaussian side-feeding substate population width；[[zobel-1980-magnetic-substate-distributions]] 和 [[zobel-1983-energy-projectile-alignment]] 主要使用 attenuation coefficients `αK`。这些变量可以共同讨论 alignment/substate-population uncertainty，但不能自动等同。

## Project Use

[[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]] 使用本页作为 symbol-boundary anchor：可以说 alignment-width assumptions are model dependent；不能写成 Draper/Zobel 已给出用户 P-ADO 代码中 `σ/I` 的唯一数值。

## Necessary Assumptions

必须先确认具体代码或论文中 `σ/I` 的定义、spin normalization、Gaussian convention 和与 attenuation coefficients 的转换关系。

## Discriminating Observables

Angular-distribution coefficients、linear polarization、known pure transitions、feeding information 和 condition-matched calibration transitions 可约束该参数。

## Supporting Evidence

Draper 1970 支持 Gaussian-width sensitivity；Zobel 1980/1983 支持 attenuation/alignment 的 model and condition dependence。

## Counter-evidence and Competing Interpretations

若数据可由不同 alignment widths 或 feeding models 同时解释，单个 preset `σ/I` 不能被当作已验证事实。

## Our Current Position

`σ/I` 是当前项目的待映射工作参数，不是已由三篇 source 直接定义的标准量。

## Sources

- [[draper-1970-gaussian-substate-side-feeding]]
- [[zobel-1980-magnetic-substate-distributions]]
- [[zobel-1983-energy-projectile-alignment]]
