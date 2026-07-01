---
type: model
title: 三轴转子模型
aliases: [triaxial rotor model, TR model, TR]
created: 2026-07-01
updated: 2026-07-01
status: active
review_status: unreviewed
model_family: collective-rotor-model
degrees_of_freedom: [rotation]
parameters: [three-moments-of-inertia]
tags: [triaxiality, wobbling]
---

# 三轴转子模型（Triaxial Rotor Model）

## Purpose

描述具有三个不同主轴转动惯量的集体转动，是 wobbling 拓扑的基础模型。

## Hamiltonian or Core Formalism

`H_TR=Σ_i J_i^2/(2ℑ_i)`。[[frauendorf-2024-wobbling-review]] 采用 `ℑ_m>ℑ_s>ℑ_l` 的物理排序。

## Degrees of Freedom

固定内禀三轴形状的集体转动。

## Assumptions

形状与转动惯量给定；不含显式准粒子。

## Inputs and Parameters

三个主轴转动惯量或等价的不对称参数。

## Predicted Observables

wobbling、flip 和不同轴周围的进动轨道。

## Strengths

以最小自由度给出清晰的角动量拓扑。

## Known Limitations

不能单独描述奇 A 准粒子、γ-softness 或微观组态。

## Related Models

[[davydov-triaxial-rotor-model]]、[[particle-rotor-model]]

## Sources

- [[frauendorf-2024-wobbling-review]]

## Evolution Log

- 2026-07-01：建立 wobbling 拓扑基础。

