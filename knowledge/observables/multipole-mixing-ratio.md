---
type: observable
title: 多极混合比
aliases: [multipole mixing ratio, E2/M1 mixing ratio, mixing ratio, δ]
created: 2026-07-01
updated: 2026-07-03
status: active
review_status: unreviewed
observable_kind: electromagnetic-transition-observable
symbol: δ
units: dimensionless
tags: [gamma-transition, multipolarity, wobbling]
---

# 多极混合比（Multipole Mixing Ratio）

## Definition

混合多极跃迁中两种辐射振幅之比；本库当前主要关注 ΔI=1 跃迁的 E2/M1 mixing ratio。

## Formula and Conventions

δ 的符号与相位约定必须沿用原文；只比较绝对值时也要说明。

## How It Is Obtained

可由角分布、角关联/DCO 和线偏振与理论响应比较得到。

## Diagnostic Use

较大的集体 E2 成分可支持 wobbling-band 间跃迁；接近纯 M1 更符合普通 signature partner。

## Model Dependence

DCO 几何、alignment 参数、角分布系数和探测器响应进入提取过程。

## Failure Modes and Ambiguities

弱跃迁、有限角度覆盖和系统误差可能产生多解或大不确定度。

## Examples

`131Xe` 的 671、882、1055 keV 连接跃迁 δ 很小，构成反对 wobbling 指认的重要证据。

[[matta-2015-transverse-wobbling-135pr]] 的 Table I 报告 `135Pr` 747.0、812.8、754.6 keV side-to-yrast transitions 分别有 `δ=-1.24(13)`、`-1.54(9)`、`-2.38(37)`；这些值是其 wobbling 支持链的关键待审数据。

## Sources

- [[chakraborty-2023-131xe-wobbling-origin]]
- [[frauendorf-2024-wobbling-review]]
- [[matta-2015-transverse-wobbling-135pr]]

## Evolution Log

- 2026-07-01：由 `131Xe` 判别问题建立。
- 2026-07-03：加入 Matta 2015 的 `135Pr` 大 mixing-ratio 支持案例。
