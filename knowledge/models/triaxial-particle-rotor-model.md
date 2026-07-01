---
type: model
title: 三轴粒子-转子模型
aliases: [triaxial particle rotor model, TPRM, quasiparticle triaxial rotor, QTR]
created: 2026-07-01
updated: 2026-07-01
status: active
review_status: unreviewed
model_family: core-particle-coupling
degrees_of_freedom: [triaxial-rotor, quasiparticle]
parameters: [epsilon2, gamma, moments-of-inertia, pairing, coriolis-attenuation]
tags: [triaxiality, odd-a, wobbling]
---

# 三轴粒子-转子模型（Triaxial Particle-Rotor Model）

## Purpose

描述奇 A 核中准粒子与三轴偶偶芯的耦合、signature splitting 和 wobbling 候选结构。

## Hamiltonian or Core Formalism

`H=H_core+H_sp+H_pair`；芯项按三个主轴的转动惯量写成 `Σ A_k(I_k-j_k)^2`。

## Degrees of Freedom

三轴芯转动、单粒子轨道、配对和 Coriolis 耦合。

## Assumptions

芯形变与转动惯量作为输入；模型参数可通过能级拟合调整。

## Inputs and Parameters

[[chakraborty-2023-131xe-wobbling-origin]] 最终采用 `ε2=0.13, γ=33°, ξ=1` 描述 `131Xe`。

## Predicted Observables

有利/不利 signature 带能级、[[signature-splitting]]、[[bm1-be2-ratio]] 和 mixing ratio。

## Strengths

能直接连接组态、三轴形变和实验能带。

## Known Limitations

拟合 γ 不是直接测量；转动惯量和 Coriolis attenuation 可引入模型依赖。

## Related Models

[[particle-rotor-model]]、[[triaxial-projected-shell-model]]

## Sources

- [[chakraborty-2023-131xe-wobbling-origin]]
- [[frauendorf-2024-wobbling-review]]

## Evolution Log

- 2026-07-01：由 `131Xe` 试摄入建立。

