---
type: model
title: Davydov 刚性三轴转子模型
aliases: [Davydov model, Davydov-Filippov model, rigid triaxial rotor]
created: 2026-07-01
updated: 2026-07-01
status: active
review_status: unreviewed
model_family: collective-rotor-model
degrees_of_freedom: [rotation]
parameters: [gamma, moments-of-inertia]
tags: [gamma-rigidity, triaxiality]
---

# Davydov 刚性三轴转子模型（Davydov Triaxial Rotor）

## Purpose

用固定 γ 的刚性转子描述三轴集体转动，是 [[gamma-rigid-deformation]] 的理想化极限。

## Hamiltonian or Core Formalism

三个主轴具有不同转动惯量；`γ=30°` 常与平均 γ 为 30° 的 γ-unstable 极限比较。

## Degrees of Freedom

固定内禀形状上的集体转动。

## Assumptions

γ 波函数局域，不显式包含 γ 软涨落；轴排序和 γ 约定必须说明。

## Inputs and Parameters

γ 与三个转动惯量。

## Predicted Observables

γ 带出现 `(2+,3+)`、`(4+,5+)` 等 couplets，[[gamma-band-energy-staggering]] 与 γ-unstable 极限相位相反。

## Strengths

提供清晰的刚性三轴参照。

## Known Limitations

拟合成功不能独立证明真实势能面 γ-rigid。

## Related Models

[[gamma-unstable-model]]、[[triaxial-rotor-model]]

## Sources

- [[zamfir-casten-1991-gamma-softness-triaxiality]]

## Evolution Log

- 2026-07-01：由 1991 判据论文建立。

