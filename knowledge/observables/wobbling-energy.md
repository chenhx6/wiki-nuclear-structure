---
type: observable
title: Wobbling 能量
aliases: [wobbling energy, Ewob, E_wob]
created: 2026-07-01
updated: 2026-07-03
status: active
review_status: unreviewed
observable_kind: excitation-energy-difference
symbol: E_wob
units: keV-or-MeV
tags: [wobbling, rotational-band]
---

# Wobbling 能量（Wobbling Energy）

## Definition

候选 n=1 wobbling 带相对 n=0 基带在相近角动量处的激发能量；具体插值公式和自旋对应依论文定义。

## Formula and Conventions

摄入数值前必须复制原文公式，避免奇 A/even-even 与不同 ΔI 序列间误用。

## How It Is Obtained

由候选伙伴带能级与基带相邻自旋能级计算。

## Diagnostic Use

随自旋下降常见于 TW，增加常见于 LW，但 [[frauendorf-2024-wobbling-review]] 强调应以进动锥拓扑和电磁跃迁共同分类。

## Model Dependence

对转动惯量、准粒子取向、带指认和插值方式敏感。

## Failure Modes and Ambiguities

只看升降趋势可把 signature partner 或其他带误判为 wobbling。

## Examples

[[matta-2015-transverse-wobbling-135pr]] 用
`E_wob(I)=E(I,n_w=1)-[E(I-1,n_w=0)+E(I+1,n_w=0)]/2`
计算 `135Pr`，Fig.5 inset 显示实验值在低自旋区下降后回升。该趋势依赖 zero-/one-phonon band assignment，不能脱离电磁跃迁单独裁决。

## Sources

- [[frauendorf-2024-wobbling-review]]
- [[matta-2015-transverse-wobbling-135pr]]

## Evolution Log

- 2026-07-01：建立“趋势不是充分判据”的边界。
- 2026-07-03：加入 Matta 2015 的 Eq.1/Fig.5 原始实验案例。
