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

## Reference-Guide Boundary

[[summary-2013-bases-spin-parity-assignments]] records DCO-ratio practice as part of a spin/parity-assignment guide for high-spin work. Its quoted typical orientation parameter is `σ/I = 0.3`. For the sigma-over-I project this is useful background evidence that practical assignment workflows often assume a typical orientation scale, but it is not enough to justify one universal default across different reactions and fitting contexts.

## Examples

[[chakraborty-2023-131xe-wobbling-origin]] 使用 40°、90°、125° INGA 数据约束 671、882、1055 keV 等跃迁。

[[domscheit-1999-triaxial-superdeformation-163lu]] 用 Euroball forward/backward 对 near-90° Clover 构造 DCO 矩阵，并在 Table 1 报告 SD1 衰变跃迁的 `R_DCO`。该表没有为每一行单列多极性栏，数值必须结合门条件、能级差和正文指认使用。

[[matta-2015-transverse-wobbling-135pr]] 称 702.7 keV `135Pr` signature-partner link 的 DCO ratio 支持 pure dipole，但 PRL 未列出具体比值；该赋值需在人工审阅时保留信息缺口。

[[lv-2021-tilted-precession-135nd]] 以 157.6° tapered 对 75.5°、104.5° clover 非对称矩阵提取 `R_DCO`。其阵列标定在 stretched-quadrupole gate 下给出 quadrupole/dipole 约 1/0.46，在 stretched-dipole gate 下给出 dipole/quadrupole 约 1/2.1；这些经验值只适用于该 geometry 与 gate convention。

## Sources

- [[chakraborty-2023-131xe-wobbling-origin]]
- [[domscheit-1999-triaxial-superdeformation-163lu]]
- [[matta-2015-transverse-wobbling-135pr]]
- [[lv-2021-tilted-precession-135nd]]
- [[summary-2013-bases-spin-parity-assignments]]

## Evolution Log

- 2026-07-01：由 `131Xe` 实验建立。
- 2026-07-03：加入早期 Euroball 几何实例及“不跨阵列套用经验阈值”的限制。
- 2026-07-03：加入 Matta 2015 的“正文给出结论但未列具体 DCO 数值”案例。
- 2026-07-04：加入 Lv 2021 JUROGAM II `135Nd` 双 gate convention 与经验值。
