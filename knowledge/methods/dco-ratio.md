---
type: method
title: DCO 比值分析
aliases: [DCO ratio, RDCO, directional correlation from oriented states]
created: 2026-07-01
updated: 2026-07-03
status: active
review_status: unreviewed
method_type: gamma-ray-angular-correlation
tags: [multipolarity, gamma-spectroscopy]
---

# DCO 比值分析（Directional Correlation from Oriented States）

## Purpose

利用不同探测角度的符合强度比约束 γ 跃迁多极性和 mixing ratio。

## Inputs and Assumptions

探测器角度组、门跃迁多极性、alignment 和效率校正。

## Procedure

在已知 stretched E2 等门上构造非对称矩阵，比较实验 R_DCO 与给定几何下的理论值。

## What It Can Establish

区分主要 dipole/quadrupole 特征，并与 ANGCOR 等计算联合约束 δ。

## What It Cannot Establish Alone

有限角度和弱跃迁时不能唯一给出 δ 符号或排除全部解。

## Conventions and Systematics

R_DCO 的“dipole≈0.5 / quadrupole≈1”等经验值只对特定门和几何有效。

不要把 DCO 与 [[two-point-angular-correlation-ratio]] 混写：后者可设计为对 gating transition 多极性不敏感，但其经验标定仍依赖具体阵列。

## Examples

[[chakraborty-2023-131xe-wobbling-origin]] 使用 40°、90°、125° INGA 数据约束 671、882、1055 keV 等跃迁。

[[domscheit-1999-triaxial-superdeformation-163lu]] 用 Euroball forward/backward 对 near-90° Clover 构造 DCO 矩阵，并在 Table 1 报告 SD1 衰变跃迁的 `R_DCO`。该表没有为每一行单列多极性栏，数值必须结合门条件、能级差和正文指认使用。

## Sources

- [[chakraborty-2023-131xe-wobbling-origin]]
- [[domscheit-1999-triaxial-superdeformation-163lu]]

## Evolution Log

- 2026-07-01：由 `131Xe` 实验建立。
- 2026-07-03：加入早期 Euroball 几何实例及“不跨阵列套用经验阈值”的限制。
