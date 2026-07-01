---
type: model
title: 推转 Nilsson-Strutinsky 模型
aliases: [cranked Nilsson-Strutinsky, CNS, cranked Nilsson-Strutinsky model]
created: 2026-07-01
updated: 2026-07-01
status: active
review_status: unreviewed
model_family: rotating-macroscopic-microscopic
degrees_of_freedom: [single-particle-occupation, deformation, rotational-frequency]
parameters: [epsilon2, gamma, epsilon4, configuration]
tags: [high-spin, configuration, triaxiality]
---

# 推转 Nilsson-Strutinsky 模型（CNS）

## Purpose

在给定准粒子占据下计算高自旋组态的能量、形变极小值和随自旋的演化，用于实验带的组态匹配。

## Hamiltonian or Core Formalism

Nilsson 单粒子场加推转项，并用 Strutinsky 壳修正构造总能面；具体实现和组态记号依来源定义。

## Degrees of Freedom

单粒子占据、`ε2`、γ、较高阶形变与转动频率/自旋。

## Assumptions

[[ayangeakaa-2016-133ce-in-beam]] 的应用忽略配对，因而主要面向中高自旋。

## Inputs and Parameters

质子、 neutron 各 j 壳占据和形变搜索空间。正负 γ 极小值的轴约定必须随论文记录。

## Predicted Observables

相对转动参考的带能量、alignment、组态交叉及形变随自旋变化。

## Strengths

适合同时比较大量高自旋带并识别候选组态或形状变化。

## Known Limitations

忽略配对会降低低自旋可靠性；不同组态可能给出相近能量；能量匹配不能单独确定组态或证明手征性。

## Related Models

[[cranked-shell-model]]、[[tilted-axis-cranking]], [[covariant-density-functional-theory]]

## Sources

- [[ayangeakaa-2016-133ce-in-beam]]

## Evolution Log

- 2026-07-01：由 `133Ce` 多带 CNS 分析建立。

