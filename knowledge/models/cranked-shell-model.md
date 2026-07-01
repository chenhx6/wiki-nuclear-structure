---
type: model
title: 推转壳模型
aliases: [cranked shell model, CSM]
created: 2026-07-01
updated: 2026-07-01
status: active
review_status: unreviewed
model_family: rotating-shell-model
degrees_of_freedom: [quasiparticle-orbitals, pairing, rotational-frequency, deformation]
parameters: [beta2, gamma, pairing, rotational-frequency]
tags: [signature, coriolis, high-spin]
---

# 推转壳模型（Cranked Shell Model）

## Purpose

研究旋转频率下准粒子 Routhian、alignment、带交叉与 signature splitting。

## Hamiltonian or Core Formalism

形变单粒子场加推转项和 pairing；具体基底、参数化及是否粒子数守恒必须按来源说明。

## Degrees of Freedom

准粒子轨道、signature、pairing、形变和转动频率。

## Assumptions

平均场及给定形变近似；当前 `131Ba/133Ce` 来源用它分析 `νg7/2[404]7/2+` 两支 signature 的 γ 灵敏度。

## Inputs and Parameters

β2、γ、β4、pairing 和轨道占据。

## Predicted Observables

quasiparticle Routhian、alignment、交叉频率与 signature splitting。

## Strengths

可直接展示 γ=0 与非零 γ 时 signature branches 的能量响应。

## Known Limitations

单独改变 γ 不能涵盖近邻低-j 轨道混合的全部效应；模型趋势不能把 S(I) 变成 γ 的唯一反演。

## Related Models

[[cranked-nilsson-strutinsky-model]]、[[triaxial-particle-rotor-model]]

## Sources

- [[ding-2021-131ba-133ce-signature-splitting]]

## Evolution Log

- 2026-07-01：由 N=75 g7/2 signature-splitting 分析建立。

