---
type: method
title: 内转换系数分析
aliases: [internal conversion analysis, internal conversion coefficient analysis, ICC analysis, ICE gamma ratio method]
created: 2026-07-12
updated: 2026-07-12
status: ai-draft
review_status: unreviewed
method_type: conversion-coefficient-analysis
tags: [internal-conversion, mixing-ratio, multipolarity, gamma-spectroscopy]
---

# 内转换系数分析（Internal Conversion Coefficient Analysis）

## Purpose

利用实验内转换系数与理论 ICC 表比较，约束跃迁多极性和 multipole mixing ratio `delta`。

## Inputs and Assumptions

- measured electron-to-gamma or X-ray-to-gamma intensity ratios;
- atomic number、transition energy、候选 multipolarities；
- theoretical ICC source，例如 BrIcc；
- 对 mixed transitions 的 `delta` 约定与不确定度。

## Core Relation

对 mixed `(pi L + pi' L')` transitions，ICC 使用

`alpha = [alpha(pi L) + delta^2 alpha(pi' L')] / (1 + delta^2)`.

因此 ICC 对 `delta` 的符号本身不敏感，只对 `delta^2` 敏感。

## Practical Routes

- 直接测量 electron/gamma intensity ratio；
- 当 ICE 数据不完整时，用 X-ray/gamma ratio 与 fluorescence yield 间接求得特定壳层 `alpha`；
- 用 BrIcc 之类的理论表和不确定度处理来比较纯多极与混合多极情形。

## Relation to Mixing-Ratio Extraction

[[rezynkina-2017-graphical-extraction-multipole-mixing-ratios]] 展示了如何把 measured `alpha_exp` 与 pure-multipole theoretical ICC uncertainties 一起传播到 `delta`，并说明最终 `P(delta)` 一般不是 Gaussian。

[[kibedi-2008-evaluation-theoretical-conversion-coefficients-bricc]] 给出 BrIcc 的 mixed-transition ICC 公式、`delta`/transition-energy uncertainty 传播，以及插值与 vacancy-treatment 的边界。

## What It Can Establish

ICC 可以为 multipolarity、spin/parity assignment 和 `delta` 提供独立于角分布 alignment 假设的约束，尤其适合和角分布、DCO、偏振联合使用。

## What It Cannot Establish Alone

- theoretical ICC table、atomic-vacancy treatment、energy interpolation 和 multipolarity 输入都会影响结果；
- 单个 `alpha` 值反演出的 `delta` 置信区间可能非对称；
- 当实验 `alpha` 误差较大时，简单反演可能偏置 `delta` 中心值；
- 对非唯一 multipolarity 标签（如 `D/Q/O`）不能假装已经得到唯一 ICC 结论。

## Sources

- [[kibedi-2008-evaluation-theoretical-conversion-coefficients-bricc]]
- [[rezynkina-2017-graphical-extraction-multipole-mixing-ratios]]
