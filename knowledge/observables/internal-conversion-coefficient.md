---
type: observable
title: 内转换系数
aliases: [internal conversion coefficient, ICC, conversion coefficient, alpha_K, alpha_L, total ICC]
created: 2026-07-12
updated: 2026-07-12
status: ai-draft
review_status: unreviewed
observable_kind: electromagnetic-transition-observable
symbol: alpha
units: dimensionless
tags: [internal-conversion, multipolarity, mixing-ratio]
---

# 内转换系数（Internal Conversion Coefficient）

## Definition

内转换系数 `alpha` 定义为电子发射率与 gamma 发射率之比。可讨论分壳层 `alpha_K`、`alpha_L`，也可讨论总内转换系数 `alpha_T`。

## How It Is Obtained

- 直接由 internal-conversion electron / gamma intensity ratio 得到；
- 或由 X-ray / gamma intensity ratio 与 fluorescence yield 间接得到；
- 对 mixed transitions，需与 pure-multipole theoretical ICC 一起反演 `delta`。

## Mixed-Transition Relation

若跃迁为 mixed `(pi L + pi' L')`，则

`alpha = [alpha(pi L) + delta^2 alpha(pi' L')] / (1 + delta^2)`.

因此 ICC 对 `delta` 的符号不敏感，而对 `delta` 的大小敏感。

## Diagnostic Use

ICC 可帮助区分 multipolarity、支持 spin/parity assignment，并为 `delta` 提供独立于 in-beam alignment 假设的约束。

## Model Dependence

实验 `alpha` 的解释依赖所采用的 theoretical ICC 表、atomic-vacancy treatment、energy interpolation，以及 mixed-transition 时输入的 multipolarity / `delta` 约定。

## Uncertainty and Boundary

- theoretical ICC 依赖 atomic-vacancy treatment、tabulation 和 interpolation；
- mixed-transition ICC 还继承 transition-energy 与 `delta` 的不确定度；
- `alpha_T` 随能量并非总是单调，不适合做不加区分的直接插值；
- 当 experimental ICC 误差较大时，最终 `delta` 区间可显著非对称。

## Failure Modes and Ambiguities

若 multipolarity 本身不唯一、`delta` 不确定度跨过零、或 experimental ICC 误差较大，ICC-based `delta` extraction 可能给出明显非对称区间，甚至需要回到完整概率密度/卷积处理，而不能只靠简单公式反演。

## Examples

[[kibedi-2008-evaluation-theoretical-conversion-coefficients-bricc]] 是当前 Wiki 的 BrIcc / ICC 理论与不确定度主来源。

[[rezynkina-2017-graphical-extraction-multipole-mixing-ratios]] 给出如何把 measured `alpha` 与 theoretical ICC uncertainties 一起传播到 `delta` 的图解方法。

## Related Pages

- [[internal-conversion-analysis]]
- [[multipole-mixing-ratio]]
- [[spin-parity-assignment]]

## Sources

- [[kibedi-2008-evaluation-theoretical-conversion-coefficients-bricc]]
- [[rezynkina-2017-graphical-extraction-multipole-mixing-ratios]]
