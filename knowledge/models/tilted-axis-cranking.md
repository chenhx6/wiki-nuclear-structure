---
type: model
title: 倾斜轴推转
aliases: [tilted axis cranking, TAC, tilted-axis cranking]
created: 2026-07-01
updated: 2026-07-03
status: active
review_status: unreviewed
model_family: rotating-mean-field
degrees_of_freedom: [intrinsic-shape, rotational-frequency, angular-momentum-orientation]
parameters: [deformation, rotational-frequency]
tags: [high-spin, triaxiality, chirality]
---

# 倾斜轴推转（Tilted Axis Cranking）

## Purpose

自洽或半自洽求解旋转平均场与角动量相对内禀主轴的取向。

## Hamiltonian or Core Formalism

通过最小化 Routhian `H-ω·J` 并要求 ω 与 J 平行确定取向。

## Degrees of Freedom

转动频率、形变和角动量方向；可得到 principal-axis、planar 或 aplanar 解。

## Assumptions

平均场近似自发破缺量子对称性；量子隧穿和带间跃迁通常不由单一 TAC 解给出。

## Inputs and Parameters

单粒子场、形变、配对和转动频率。

[[ayangeakaa-2016-133ce-in-beam]] 对 `133Ce` D3 使用 PC-PK1 TAC-CDFT，并在该计算中忽略 pairing。

[[matta-2015-transverse-wobbling-135pr]] 对 `135Pr` 1qp yrast 使用 `Δp=1.1 MeV`、`Δn=1.0 MeV` 并固定 `ε=0.16, γ=26°`；另计算 3qp 和 5qp 组态。

## Predicted Observables

带能量、角动量取向、带内跃迁及 planar/aplanar 几何。

## Strengths

直观揭示 [[chiral-doublet-bands]] 的左右手几何来源。

## Known Limitations

[[frauendorf-meng-1997-tilted-rotation-chirality]] 指出 TAC 不能计算带间跃迁，也不恢复左右手态之间的隧穿。

`133Ce` D3 的 TAC-CDFT 只在中等自旋收敛，且作者没有对全部偶极带实施同等计算。

`135Pr` 的形变与组态来自平均场计算；TAC 可比较能量和取向，但不独立建立 one-phonon wobbling 的量子带间跃迁。

## Related Models

[[particle-rotor-model]]

## Sources

- [[frauendorf-meng-1997-tilted-rotation-chirality]]
- [[ayangeakaa-2016-133ce-in-beam]]
- [[matta-2015-transverse-wobbling-135pr]]

## Evolution Log

- 2026-07-01：建立 planar/aplanar 与手征用途。
- 2026-07-01：加入 TAC-CDFT 的 `133Ce` 实例和收敛边界。
- 2026-07-03：加入 Matta 2015 的 `135Pr` 1qp/3qp/5qp TAC 比较。
