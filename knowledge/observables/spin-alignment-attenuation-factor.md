---
type: observable
title: 自旋取向衰减因子
aliases: [spin-alignment attenuation factor, alignment attenuation factor, alpha2, alpha4]
created: 2026-07-09
updated: 2026-07-09
status: ai-draft
review_status: unreviewed
observable_kind: angular-distribution-derived-alignment-observable
symbol: alpha2, alpha4
units: dimensionless
tags: [alignment, angular-distribution, pado-support]
---

# 自旋取向衰减因子 (Spin-Alignment Attenuation Factor)

## Definition

在 [[ekstrom-1979-spin-alignment-attenuation-a61-a67]] 中，`alpha_k(Ji)=p_k(Ji)/p_k^ca(Ji)` 表示实际初态 statistical tensor 相对 complete alignment 情形的衰减因子。该文重点讨论 `alpha2` 和 `alpha4`。

## How It Is Obtained

当 `Ji`、`Jf`、多极性以及必要时的 `delta` 已知时，可由测得的 angular-distribution coefficients `A2/A4` 反推 `alpha2/alpha4`。Ekstrom 1979 特意选用 pure-E2 transitions 来避免 `delta` 不确定度污染这一反推。

## Relevance

这类量直接把“角分布看起来有多强的各向异性”与“初态 alignment 实际保留了多少”联系起来。它因此是连接实验角分布与 population / alignment model 的中间层，而不是最终的 Gaussian width `sigma` 或用户代码中的 `sigma/I`。

## Boundaries

- `alpha2/alpha4` 不是 Gaussian width `sigma`。
- 它们也不是 Zobel 1980 的 `a_k` attenuation coefficients 的同一定义层，虽然都描述 alignment attenuation。
- Ionescu 1981 的 Fig.3 使用的是 `rho2/rho4` statistical-tensor factors；它们与 attenuation-factor 语言相关，但不应被直接重命名成 `alpha2/alpha4`。
- 若对高于阈值较远的 levels 忽略 gamma feeding，则由 direct-population model 得到的 attenuation estimate 可能偏低。

## Diagnostic Use

`alpha2/alpha4` 可用来把 pure-E2 angular distributions 与 alignment 保留程度直接联系起来，因此适合用作检查某一 population model 是否与实验各向异性兼容。

## Model Dependence

把 `A2/A4` 反推为 `alpha2/alpha4` 需要已知或受控的 `Ji`、`Jf`、multipolarity 以及必要时的 `delta`。若 feeding history 被忽略，或 direct-population 假设不成立，则由模型推得的 attenuation estimate 会偏离真实情况。

## Failure Modes and Ambiguities

- 对高于阈值较远的 levels 忽略 gamma feeding 会使 attenuation estimate 偏低。
- 它不能与 Gaussian width `sigma`、`sigma/I` 或其他 attenuation notation 自动一一对应。
- 若 transition assignment 本身不稳，`alpha2/alpha4` 的物理解释也会随之变得不稳。

## Sources

- [[ekstrom-1979-spin-alignment-attenuation-a61-a67]]

## Related but Distinct Notation

- [[ionescu-1981-improved-angular-distribution-analysis-particle-xn]] uses `rho2/rho4` statistical-tensor factors rather than Ekstrom-style attenuation factors.
