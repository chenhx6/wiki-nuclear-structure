---
type: model
title: 粒子-转子模型
aliases: [particle rotor model, PRM, particle-plus-rotor model, PTR]
created: 2026-07-01
updated: 2026-07-01
status: active
review_status: unreviewed
model_family: core-particle-coupling
degrees_of_freedom: [rotor, valence-particles]
parameters: [deformation, moments-of-inertia, single-particle-levels, pairing]
tags: [collective-model, triaxiality]
---

# 粒子-转子模型（Particle-Rotor Model）

## Purpose

把一个或多个价粒子/空穴与集体转子耦合，量子化描述能带、角动量几何和跃迁。

## Hamiltonian or Core Formalism

转子动能与单粒子哈密顿量耦合；可恢复平均场中破缺的对称性与左右手态隧穿。

## Degrees of Freedom

转子主轴角动量和价粒子角动量。

## Assumptions

芯常被视为给定形状和转动惯量的转子；芯-粒子交换与微观组态截断可能不完整。

## Inputs and Parameters

β/γ、转动惯量、单粒子组态、配对和电磁矩。

## Predicted Observables

能带、signature splitting、B(E2)、B(M1)、角动量取向和隧穿劈裂。

## Strengths

比 TAC 更完整地处理量子数恢复和带间跃迁。

## Known Limitations

转动惯量可调带来歧义；软芯和价粒子之间的 Pauli/交换效应可能需要微观模型。

## Related Models

[[tilted-axis-cranking]]、[[triaxial-particle-rotor-model]]、[[triaxial-projected-shell-model]]

## Sources

- [[frauendorf-meng-1997-tilted-rotation-chirality]]
- [[frauendorf-2024-wobbling-review]]

## Evolution Log

- 2026-07-01：建立手征与 wobbling 两类用途。

