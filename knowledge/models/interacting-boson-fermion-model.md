---
type: model
title: 相互作用玻色子-费米子模型
aliases: [interacting boson-fermion model, IBFM, interacting boson fermion model]
created: 2026-07-05
updated: 2026-07-05
status: ai-draft
review_status: unreviewed
model_family: algebraic-particle-core-model
degrees_of_freedom: [s-boson, d-boson, odd-fermion]
parameters: [ibm-core-parameters, single-particle-energy, occupation-probability, boson-fermion-couplings, effective-charges, g-factors]
tags: [odd-mass-nuclei, particle-core-coupling, gamma-softness, low-spin-bands]
---

# 相互作用玻色子-费米子模型（Interacting Boson-Fermion Model）

## Purpose

以 [[interacting-boson-model]] 描述偶偶集体芯，并显式耦合一个未配对奇核子，用于奇 A 核的低能谱、波函数和电磁跃迁。

## Hamiltonian or Core Formalism

[[nomura-2022-questioning-wobbling-ibfm]] 使用

`H = H_B + H_F + V_BF`，

其中 `H_B` 是 proton-neutron IBM（IBM-2）偶偶芯，`H_F` 是单粒子项，`V_BF` 包含 quadrupole dynamical、exchange 和 monopole interactions。偶偶芯参数通过 EDF 约束平均场 `(β,γ)` PES 到 IBM 相干态 PES 的映射得到；boson-fermion coupling strengths 再按奇 A 低能谱拟合。

## Degrees of Freedom

- 偶偶芯的质子/中子 `s,d` 玻色子；
- 指定主壳和宇称空间中的一个奇质子或奇中子；
- 奇粒子与芯之间的动力学四极、交换和单极耦合；
- E2/M1 算符的 boson 与 fermion contributions。

## Assumptions

- 低能偶偶芯可由 `s,d` 集体玻色子描述；
- Nomura 2022 的实现只保留 `1h11/2` 奇粒子轨道；
- 质子、 中子玻色子取相同 `(β,γ)` 形变，避免四维 PES 映射；
- 所采用 IBM-2 芯哈密顿量是一般形式的截断，没有加入可能影响 M1 的 Majorana terms；
- 将计算 B1/B2 与 observed bands 对应是模型比较步骤，不是实验带身份事实。

## Inputs and Parameters

EDF/HFB 或 RHB 给出的 PES、球形单粒子能和占据率；IBM-2 芯参数；逐核拟合的 boson-fermion coupling strengths；E2 effective charges 与 M1 `g` factors。

## Predicted Observables

奇 A 能级与低能 bands、E2/M1 mixing ratios、`B(E2)out/B(E2)in`、`B(M1)out/B(E2)in`，以及 E2/M1 matrix elements 的 boson/fermion 分解。

## Strengths

能在同一 laboratory-frame particle-core framework 中连接 EDF 形变背景、偶偶芯集体性、奇粒子耦合和电磁跃迁，不必预先把低能非 yrast band 指认为 wobbling phonon。

## Known Limitations

计算结果依赖模型空间、PES 映射、逐核拟合耦合、effective charges 与 `g` factors。省略轨道或 Majorana/higher-order terms 可能特别影响 M1；能量再现不能替代 connecting-transition 的实验判据。IBFM alternative interpretation 也不自动等同于 signature partner 或 tilted precession。

## Related Models

- [[interacting-boson-model]]
- [[particle-rotor-model]]
- [[triaxial-particle-rotor-model]]
- [[gamma-unstable-model]]

## Sources

- [[nomura-2017-odd-mass-gamma-soft-shape-transitions]]
- [[nomura-2022-questioning-wobbling-ibfm]]

## Evolution Log

- 2026-07-05：基于 Nomura 2022 建立独立 IBFM model 页，记录其 low-spin wobbling alternative interpretation 的模型结构与边界。
