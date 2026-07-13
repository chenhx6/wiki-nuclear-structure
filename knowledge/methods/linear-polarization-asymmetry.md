---
type: method
title: 线偏振不对称分析
aliases: [linear polarization asymmetry, polarization asymmetry, Delta asym]
created: 2026-07-01
updated: 2026-07-12
status: active
review_status: unreviewed
method_type: gamma-ray-polarimetry
tags: [multipolarity, electric-magnetic-character]
---

# 线偏振不对称分析（Linear Polarization Asymmetry）

## Purpose

利用分段 HPGe/Clover 的 Compton 散射方位分布判断跃迁的电或磁性质。

## Inputs and Assumptions

探测器偏振灵敏度、非对称校正、符合门和足够统计。

## Procedure

比较垂直/平行于反应平面的散射计数并构造不对称量。

## What It Can Establish

为电/磁性质提供独立于 DCO 的约束。

## What It Cannot Establish Alone

弱跃迁的不确定度可能过大，不能可靠提取小 E2 admixture。

## Conventions and Systematics

不对称量符号依实验定义，必须引用原文校准。

不要把所有“asymmetry”默认理解为同一种 in-beam clover Compton polarimetry。[[rusev-2009-multipole-mixing-ratios-11b]] 测量的是 linearly polarized photon beam 激发后，发射 gamma rays 在水平/垂直平面的 azimuthal asymmetry；它与 clover Compton scattering asymmetry 共享“偏振相关”这一物理思想，但实验量和系统项不同。

[[lauritsen-2025-gamma-angular-formalism-tracking-arrays]] treats tracking-array linear polarization as a continuous-angle response-function problem. For in-beam single-gamma polarization, its Eq.35 expands the angular-distribution expression with a `P_pm cos(2 zeta)` term and includes mixed transitions. Its `152Dy` 432-keV example shows why angular distribution, DCO and linear polarization may all be needed to resolve `M1/E2` versus `E1/M2` ambiguity.

## Formalism Boundary

The three new method sources make the detector-layer separation explicit: Jones 2002 defines physical polarization `P`, experimental count asymmetry `A` and detector sensitivity `Q`; Go 2024 extracts a polarization from normalized measured/simulated azimuthal distributions; Longfellow 2026 uses `A0=1/2 Q Pbar` after integrating GRETINA coverage. These are related observables, not interchangeable names for the same quantity.

The special `|P|=1` cases in Jones 2002 require particular alignment and pure transitions. Longfellow's Appendix further shows that the sign of `A0` alone cannot generally identify electric or magnetic character for mixed transitions. Use [[gamma-ray-linear-polarization]], [[experimental-asymmetry]] and [[polarization-sensitivity]] for the separate evidence layers.

## Examples

`131Xe` 论文明确指出弱连接跃迁的偏振误差较大，因此主要依赖角关联/角分布约束 δ。

[[matta-2015-transverse-wobbling-135pr]] 用 INGA clover 得到 747.0、812.8 keV transitions 的正 asymmetry，并以 593.9 keV signature-partner link 的负 asymmetry 作 M1 对照。只有统计足够的 transitions 才报告可靠结果。

[[guo-2022-low-spin-wobbling-187au]] 用 clover 相邻晶体中垂直/平行方向的 Compton scattering，与 `R_ac` 联合约束 376/462 keV links。该文同时强调：偏振通常只利用相邻晶体，统计误差可能很大；选 mixing-ratio branch 时必须使用偏振幅度与可信不确定度，不能只看正负号。

[[rusev-2009-multipole-mixing-ratios-11b]] 则给出另一种边界：即使 measured asymmetry 很干净，predicted asymmetry versus `delta` 仍可能给出两支解。该文对 `11B` 选择较小 `|delta|` branch，是因为大 `|delta|` branch 会对应异常大的 `E2` admixture，而不是因为 asymmetry 本身已经唯一选解。

[[liu-2016-octupole-correlations-multiple-chiral-doublet-bands-78br]] 用两个 90° AFRODITE clovers 作 Compton polarimeters，并与 [[angular-distribution]] 中的 ADO ratio 联合约束 `78Br` linking transitions；其 Fig.3 采用正值为 electric、负值为 magnetic 的本文约定。

## Sources

- [[chakraborty-2023-131xe-wobbling-origin]]
- [[matta-2015-transverse-wobbling-135pr]]
- [[guo-2022-low-spin-wobbling-187au]]
- [[rusev-2009-multipole-mixing-ratios-11b]]
- [[lauritsen-2025-gamma-angular-formalism-tracking-arrays]]
- [[liu-2016-octupole-correlations-multiple-chiral-doublet-bands-78br]]

## Evolution Log

- 2026-07-01：记录与 DCO 的互补及统计限制。
- 2026-07-03：加入 `135Pr` electric/M1 同核素偏振对照。
- 2026-07-04：加入 Guo 2022 的联合 `P-R_ac` 选解与偏振误差低估风险。
- 2026-07-12：加入 Rusev 2009 的 polarized-photon asymmetry 技术与双解边界。
- 2026-07-13：加入 Liu 2016 AFRODITE ADO+polarization linking-transition 案例。
