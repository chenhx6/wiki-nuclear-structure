---
type: concept
title: 直接馈入
aliases: [direct feeding, direct-feeding, discrete gamma feeding, direct gamma feeding]
created: 2026-07-09
updated: 2026-07-09
status: ai-draft
review_status: unreviewed
concept_type: gamma-cascade-population
confidence: low
high_confirmed_by:
high_confirmed_date:
tags: [feeding, angular-distribution, alignment, pado-support]
---

# 直接馈入 (Direct Feeding)

## Definition

Direct feeding 指目标能级由可分辨的离散 parent-state gamma transitions 直接布居，而不是只由未分辨的连续 side feeding 或粒子蒸发后的统计 cascade 间接布居。

## Source-Level Meaning

[[ionescu-1981-improved-angular-distribution-analysis-particle-xn]] 把目标能级的总 population 写为 Gaussian side-feeding 分量与若干 discrete direct-feeding 分量之和。关键点不是否定 Gaussian side feeding，而是指出当低能 yrast 区存在少数较强、可追踪的离散 feeding transitions 时，必须把这些直接馈入单独写进 population model。

[[ekstrom-1979-spin-alignment-attenuation-a61-a67]] 虽然没有写成与 Ionescu 相同的求和模型，但明确警告：对高于阈值较远的 levels，若忽略 gamma feeding，则 direct-population alignment estimate 会失真。

## Relevance to P-ADO

如果 mixed-transition `delta` 提取默认一个固定 `sigma/I`，但实际 population 含有较强的 direct gamma feeding 成分，则拟合中的 alignment / polarization response 可能被错误压缩成单一宽度参数。direct feeding 因而是判断是否需要 feeding-aware population model 的关键入口。

## Boundaries

- Direct feeding 不是 side feeding 的同义词。
- 它也不自动意味着必须放弃 Gaussian ideas；Ionescu 1981 的改进模型保留了 Gaussian side-feeding 项，只是额外加入 discrete direct-feeding 项。
- 是否能把 direct feeding 显式建模，取决于 level scheme、branching information 和 parent-state orientation information 是否足够。

## Necessary Assumptions

需要能够识别至少一部分离散 parent-state feeding path，并且这些 feeding branches 与目标能级的角分布分析处于同一实验或模型语境。

## Discriminating Observables

可区分 direct feeding 重要性的观测量包括 cascade placement、branching ratios、pure-E2 angular distributions，以及与目标能级竞争的离散 feeding transitions。

## Supporting Evidence

Ionescu 1981 在 `167Tm` 个案中显式把总 population 分为 Gaussian side feeding 与 discrete direct feeding 两部分；Ekstrom 1979 则从另一侧警告忽略 gamma feeding 会让 direct-population alignment estimate 偏低。

## Counter-evidence and Competing Interpretations

若离散 feeding history 不可重建，或者离散馈入本身很弱，单一 side-feeding model 仍可能是可接受近似。当前证据支持“需要检查”，不支持“任何分析都必须显式加入 direct feeding 项”。

## Our Current Position

当前 Wiki 把 direct feeding 视为影响 magnetic-substate population 建模的潜在关键项，尤其在用 pure-E2 先校准 population model、再提取 mixed-transition `delta` 的分析路径中更应检查。

## Sources

- [[ionescu-1981-improved-angular-distribution-analysis-particle-xn]]
- [[ekstrom-1979-spin-alignment-attenuation-a61-a67]]
