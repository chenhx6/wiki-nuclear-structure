---
type: model
title: 三轴粒子-转子模型
aliases: [triaxial particle rotor model, TPRM, quasiparticle triaxial rotor, QTR]
created: 2026-07-01
updated: 2026-07-03
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

- [[chakraborty-2023-131xe-wobbling-origin]] 最终采用 `ε2=0.13, γ=33°, ξ=1` 描述 `131Xe`；
- [[petrache-2020-137nd-multiple-chiral-bands]] 为 `137Nd` D2/D3 与 D5/D6 分别采用约 `(β,γ)=(0.20,20.9°)`、`(0.21,23.5°)`；
- [[ding-2021-131ba-133ce-signature-splitting]] 用 γ=15° 和 10° 分别描述 `131Ba`、`133Ce` 的 S(I)，并扫描 Coriolis attenuation。
- [[matta-2015-transverse-wobbling-135pr]] 的修改 QTR 用 `J_m,J_s,J_l=7.4,5.6,1.8 ħ²/MeV`、`c=0.116` 拟合 `135Pr` zero-/one-phonon 能量。
- [[sensharma-2019-two-phonon-wobbling-135pr]] 沿用 `135Pr` 的 `ε=0.16, γ=26°`、上述三个转动惯量和尺度因子，扩展比较逐级 wobbling-phonon energy 与相对 E2 ratios。

## Predicted Observables

有利/不利 signature 带能级、[[signature-splitting]]、[[bm1-be2-ratio]] 和 mixing ratio。

## Strengths

能直接连接组态、三轴形变和实验能带。

## Known Limitations

拟合 γ 不是直接测量；转动惯量和 Coriolis attenuation 可引入模型依赖。

QTR 中近邻轨道混合会与 γ 同时改变 S(I)，因此单个最佳 γ 往往不是唯一反演。

`135Pr` QTR 低估 `B(E2_out)`、高估 `B(M1_out)`，并把 signature-partner excitation 高估约 500 keV；拟合能量后的转动惯量不能作为独立验证。

Sensharma 2019 的 QTR 给出
`E_TW1(I+1)-E_yrast(I) ≈ 2[E_TW2(I+2)-E_TW1(I+1)]`
的强 anharmonicity，并再现较小的 TW2→TW1/TW2→yrast 相对 E2 ratios。这里比较的是 successive wobbling-phonon spacings，不是把某条带的绝对能量直接取两倍；由于参数沿用 Matta 2015，这也不是对 zero-/one-phonon assignment 的独立验证。

[[lv-2022-evidence-against-wobbling-135pr]] 使用 `ε2=0.16, γ=26°`、irrotational-flow moments of inertia 与 unfrozen single-particle angular momentum。Fig.3(d) 仅示意 single-particle-excitation realignment 机制；p.5 正文报告五条计算带均显著受该机制影响并发生 short-to-intermediate-axis realignment，逐带细节位于 supplementary material。Fig.4(c) 的近恒定 `j_parallel` 只支持 `j` 与 `I` 近乎平行、同步演化，不直接显示主轴分量。作者将低激发带解释为 tilted-precession bands；计算仍高估 bands 2、5 的部分高自旋能量。

## Related Models

[[particle-rotor-model]]、[[triaxial-projected-shell-model]]

## Sources

- [[chakraborty-2023-131xe-wobbling-origin]]
- [[frauendorf-2024-wobbling-review]]
- [[petrache-2020-137nd-multiple-chiral-bands]]
- [[ding-2021-131ba-133ce-signature-splitting]]
- [[matta-2015-transverse-wobbling-135pr]]
- [[sensharma-2019-two-phonon-wobbling-135pr]]
- [[lv-2022-evidence-against-wobbling-135pr]]

## Evolution Log

- 2026-07-01：由 `131Xe` 试摄入建立。
- 2026-07-01：加入 `137Nd` 手征几何与 N=75 signature-splitting 的参数敏感性。
- 2026-07-03：加入 Matta 2015 的 `135Pr` QTR 能量/跃迁比较及定量偏差。
- 2026-07-03：加入 Sensharma 2019 的 TW2 anharmonicity/E2-ratio 比较及参数继承边界。
- 2026-07-03：加入 Lv 2022 的 standard-input QTR realignment/TiP counter-interpretation。
