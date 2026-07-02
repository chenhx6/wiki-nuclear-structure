---
type: observable
title: 转动惯量
aliases: [moments of inertia, kinematic moment of inertia, dynamic moment of inertia, J1, J2]
created: 2026-07-02
updated: 2026-07-02
status: active
review_status: unreviewed
observable_kind: rotational-response
symbol: "J^(1), J^(2)"
units: "hbar^2/MeV"
tags: [rotation, backbending, band-crossing, alignment]
---

# 转动惯量（Moments of Inertia）

## Definition

运动学转动惯量 \(J^{(1)}\) 描述角动量与转动频率的比值，动力学转动惯量 \(J^{(2)}\) 描述角动量随转动频率的变化率。离散能级分析中需使用论文明确给出的有限差分约定。

## How It Is Obtained

由同一能带中已定自旋的相邻 γ 跃迁能量构造转动频率，再按原文约定计算 \(J^{(1)}\) 与 \(J^{(2)}\)。[[de-voigt-dudek-szymanski-1983-high-spin-phenomena]] 在 pp.974-975 给出连续形式和 aligned-angular-momentum 参照。

## Diagnostic Use

用于识别转动响应、[[backbending]]、band crossing、[[angular-momentum-alignment]] 与可能的配对变化。

## Model Dependence

数值依赖自旋指认、频率/有限差分定义、参考转子和带成员选择。刚体值只是参照，不自动代表真实刚性形变。

## Failure Modes and Ambiguities

\(J^{(2)}\) 对带交叉和二阶差分很敏感。综述在 pp.996-997 明确警告，带交叉与 alignment 可混淆对 pairing collapse 的推断。

## Sources

- [[de-voigt-dudek-szymanski-1983-high-spin-phenomena]]
