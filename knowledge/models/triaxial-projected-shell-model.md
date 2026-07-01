---
type: model
title: 三轴投影壳模型
aliases: [triaxial projected shell model, TPSM]
created: 2026-07-01
updated: 2026-07-01
status: active
review_status: unreviewed
model_family: projected-shell-model
degrees_of_freedom: [triaxial-quasiparticle-configurations, angular-momentum-projection]
parameters: [epsilon, epsilon-prime, pairing, quadrupole-interaction]
tags: [triaxiality, wobbling, gamma-softness]
---

# 三轴投影壳模型（Triaxial Projected Shell Model）

## Purpose

从三轴准粒子基底进行角动量投影和组态混合，描述能带、signature partner、wobbling 和 γ-soft 特征。

## Hamiltonian or Core Formalism

通常使用 pairing-plus-quadrupole-quadrupole 哈密顿量，并在投影后的多准粒子基底中对角化。

## Degrees of Freedom

三轴平均场、准粒子组态、角动量投影与组态混合。

## Assumptions

结果依赖基底截断和输入形变；从波函数提取经典角动量图像需要额外工具。

## Inputs and Parameters

ε、ε′/γ、配对与相互作用强度。

## Predicted Observables

能级、B(E2)、B(M1)、signature splitting、wobbling energy 和 SCS 图。

## Strengths

能同时处理芯与价粒子，并可通过组态混合表现 γ-softness。

## Known Limitations

[[frauendorf-2024-wobbling-review]] 指出，虽然模型再现多类数据，如何从截断壳模型结果提炼清晰物理图像仍需发展。

## Related Models

[[triaxial-particle-rotor-model]]、[[random-phase-approximation]]

## Sources

- [[chakraborty-2023-131xe-wobbling-origin]]
- [[frauendorf-2024-wobbling-review]]

## Evolution Log

- 2026-07-01：建立 `131Xe` 与 wobbling 综述中的用途。

