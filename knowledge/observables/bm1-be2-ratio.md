---
type: observable
title: B(M1)/B(E2) 比值
aliases: [B(M1)/B(E2), magnetic-to-electric transition ratio]
created: 2026-07-01
updated: 2026-07-27
status: active
review_status: unreviewed
observable_kind: reduced-transition-probability-ratio
symbol: B(M1)/B(E2)
units: source-dependent
tags: [electromagnetic-transition, band-structure]
---

# B(M1)/B(E2) 比值

## Definition

约化磁偶极跃迁概率与约化电四极跃迁概率之比，用于比较同一能级或带结构中的磁、集体四极成分。

## Formula and Conventions

单位和所选 M1/E2 跃迁必须随数值一并记录；不同文献的归一化不能直接混用。

Alwaleedi 2013 由相对分支强度推导该比值时使用 E2/M1 mixing ratio `δ=0`。保留其它输入不变，Equation 5.6 给出

`R(δ) = R(0) / (1 + δ²)`。

因此在 `|δ|≤0.5` 时，δ=0 近似相对真实 `R(δ)` 最多高估 25%；若以 `R(0)` 为分母，差值最多为 20%。δ 的符号不影响这一幅值修正，但对偏振、相位和完整多极混合判断仍有意义。引用由该方法得到的数值时必须显式写出 δ=0 假设。

## How It Is Obtained

由分支比、mixing ratio、跃迁能量和必要的寿命/内转换信息推导，或由模型计算。由 branching intensity 单独反演时，未知 δ 是显式系统假设，而不是可以省略的细节。

## Diagnostic Use

可检验组态和 signature partner 模型描述。

## Model Dependence

模型值依赖 g 因子、内禀四极矩、波函数和配对。

## Failure Modes and Ambiguities

实验比值与模型比值相等不构成唯一结构证明。不要把 `|δ|≤0.5` 导致的 25% 最大相对高估，与内转换系数反演中约 25% 的实验不确定度混为一谈；两者来源和分母不同。

## Examples

`131Xe` yrare 17/2- 的实验值 1.27(14) 与 TPRM 1.27 一致；yrast 17/2- 的 2.54(4) 明显偏高。

[[lv-2021-tilted-precession-135nd]] 比较 D1 带内及 TiP1→D1 的 `B(M1)out/B(E2)in` ratios 与 QTR。618.3/566.0 keV TiP1→D1 links 的实验 ratios 为 0.28(10)/0.24(14)；其中 566.0 keV 与另一个 566.8 keV connecting transition 应保持区分。Agreement 是模型一致性证据，不构成 TiP 的单独充分判据。

[[nomura-2022-questioning-wobbling-ibfm]] 比较四核的计算与既有实验 `B(M1)out/B(E2)in`。IBFM 常给出比 wobbling 支持数据更强的相对 M1 成分，但不同核/自旋的 agreement 不一致；该比值依赖所选 E2/M1 operators 和波函数，不能单独裁决 band identity。

## Sources

- [[chakraborty-2023-131xe-wobbling-origin]]
- [[lv-2021-tilted-precession-135nd]]
- [[nomura-2022-questioning-wobbling-ibfm]]
- [[alwaleedi-2013-band-structures-131ce]]

## Evolution Log

- 2026-07-01：记录 `131Xe` 两条 13/2- 序列的区分用途。
- 2026-07-04：加入 Lv 2021 `135Nd` TiP1→D1 relative-M1 comparison。
- 2026-07-05：加入 Nomura 2022 的 IBFM relative-M1 comparison 与模型依赖。
- 2026-07-27：固化 Alwaleedi 2013 的 δ=0 假设、`R(δ)` 修正及 25%/20% 误差口径。
