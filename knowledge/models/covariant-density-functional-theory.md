---
type: model
title: 协变密度泛函理论
aliases: [covariant density functional theory, CDFT, constrained CDFT, TAC-CDFT]
created: 2026-07-01
updated: 2026-07-01
status: active
review_status: unreviewed
model_family: self-consistent-mean-field
degrees_of_freedom: [density, deformation, quasiparticle-configuration, rotational-frequency]
parameters: [energy-density-functional, pairing, constraints]
tags: [mean-field, deformation, chirality, high-spin]
---

# 协变密度泛函理论（CDFT）

## Purpose

自洽求解给定核素或组态的密度、形变和能量；加入转动约束后可研究倾斜轴和角动量取向。

## Hamiltonian or Core Formalism

以协变能量密度泛函为基础。当前来源使用 PC-PK1；约束 CDFT 用于组态形变，TAC-CDFT 还包含 `-ω·J` 推转项。

## Degrees of Freedom

密度、四极形变、单粒子占据、配对及转动频率/方向。

## Assumptions

平均场破缺对称性；具体计算可能冻结组态或忽略 pairing。手征双重带的量子隧穿通常仍需 PRM 等恢复。

## Inputs and Parameters

能量密度泛函、基空间、组态约束、pairing 方案和转动频率。

## Predicted Observables

形变极小值、能量、频率、角动量分量及部分带内电磁量。

## Strengths

形变和角动量取向可在给定泛函内自洽产生，适合为粒子-转子模型提供组态和形变输入。

## Known Limitations

不同泛函、pairing 和组态约束会改变结果；模型 γ 不是直接测量；单一平均场不能自动给出左右手量子隧穿。

## Related Models

[[tilted-axis-cranking]]、[[triaxial-particle-rotor-model]]

## Sources

- [[ayangeakaa-2016-133ce-in-beam]]
- [[petrache-2020-137nd-multiple-chiral-bands]]

## Evolution Log

- 2026-07-01：建立 constrained CDFT 与 TAC-CDFT 的共同入口。

