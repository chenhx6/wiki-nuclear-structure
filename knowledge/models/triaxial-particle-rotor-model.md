---
type: model
title: 三轴粒子-转子模型
aliases: [triaxial particle rotor model, TPRM, quasiparticle triaxial rotor, QTR]
created: 2026-07-01
updated: 2026-07-04
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

[[lawrie-2020-tilted-precession-wobbling]] 区分完整 QTR/particle-rotor-type 3D solutions 与 wobbling approximation：前者在该文术语中产生 [[tilted-precession-bands]]，后者只有在两个非主转轴的 angular-momentum components 可视为小量、`f(n,I)<<1` 时，才能写成 principal-axis rotation 与 harmonic wobbling phonons 的耦合。

## Inputs and Parameters

- [[chakraborty-2023-131xe-wobbling-origin]] 最终采用 `ε2=0.13, γ=33°, ξ=1` 描述 `131Xe`；
- [[petrache-2020-137nd-multiple-chiral-bands]] 为 `137Nd` D2/D3 与 D5/D6 分别采用约 `(β,γ)=(0.20,20.9°)`、`(0.21,23.5°)`；
- [[ding-2021-131ba-133ce-signature-splitting]] 用 γ=15° 和 10° 分别描述 `131Ba`、`133Ce` 的 S(I)，并扫描 Coriolis attenuation。
- [[matta-2015-transverse-wobbling-135pr]] 的修改 QTR 用 `J_m,J_s,J_l=7.4,5.6,1.8 ħ²/MeV`、`c=0.116` 拟合 `135Pr` zero-/one-phonon 能量。
- [[sensharma-2019-two-phonon-wobbling-135pr]] 沿用 `135Pr` 的 `ε=0.16, γ=26°`、上述三个转动惯量和尺度因子，扩展比较逐级 wobbling-phonon energy 与相对 E2 ratios。
- [[guo-2022-low-spin-wobbling-187au]] 使用 `ε2=0.21, γ=12°`、Harris parameters `J0=25 ħ² MeV^-1, J1=8 ħ⁴ MeV^-3`、irrotational-flow-like γ dependence，并纳入 proton Fermi level 附近 9 个负宇称轨道。
- [[lv-2021-tilted-precession-135nd]] 对 `135Nd` 使用 `β=0.19, γ=25°`、Harris `J0=5 ħ² MeV^-1, J1=71.4 ħ⁴ MeV^-3`、Coriolis attenuation 0.7、`g_s=0.6g_free`、`g_R=0.44` 与 neutron Fermi level 附近 7 个负宇称 orbitals。

## Predicted Observables

有利/不利 signature 带能级、[[signature-splitting]]、[[bm1-be2-ratio]] 和 mixing ratio。

## Strengths

能直接连接组态、三轴形变和实验能带。

## Known Limitations

拟合 γ 不是直接测量；转动惯量和 Coriolis attenuation 可引入模型依赖。

QTR 中近邻轨道混合会与 γ 同时改变 S(I)，因此单个最佳 γ 往往不是唯一反演。

Lawrie 2020 指出，QTR 对能带能量或大 E2 connecting transitions 的再现本身不能证明 transverse wobbling。对典型 transverse one-quasiparticle coupling，wobbling approximation 要求最大 MoI 轴——在该文 irrotational-flow convention 中为 intermediate axis（1 轴）——上的 rotational component 也为小量；作者计算的 `f(n,I)` 对 `135Pr/105Pd` 参数并不满足 `<<1`。该结论依赖 frozen-`j`、MoI ordering 和参数集合，仍是理论模型边界，不是实验裁决。

`135Pr` QTR 低估 `B(E2_out)`、高估 `B(M1_out)`，并把 signature-partner excitation 高估约 500 keV；拟合能量后的转动惯量不能作为独立验证。

Sensharma 2019 的 QTR 给出
`E_TW1(I+1)-E_yrast(I) ≈ 2[E_TW2(I+2)-E_TW1(I+1)]`
的强 anharmonicity，并再现较小的 TW2→TW1/TW2→yrast 相对 E2 ratios。这里比较的是 successive wobbling-phonon spacings，不是把某条带的绝对能量直接取两倍；由于参数沿用 Matta 2015，这也不是对 zero-/one-phonon assignment 的独立验证。

[[lv-2022-evidence-against-wobbling-135pr]] 使用 `ε2=0.16, γ=26°`、irrotational-flow moments of inertia 与 unfrozen single-particle angular momentum。Fig.3(d) 仅示意 single-particle-excitation realignment 机制；p.5 正文报告五条计算带均显著受该机制影响并发生 short-to-intermediate-axis realignment，逐带细节位于 supplementary material。Fig.4(c) 的近恒定 `j_parallel` 只支持 `j` 与 `I` 近乎平行、同步演化，不直接显示主轴分量。作者将低激发带解释为 tilted-precession bands；计算仍高估 bands 2、5 的部分高自旋能量。

[[guo-2022-low-spin-wobbling-187au]] 的 QTR 波函数把 `187Au` Bands 1/2 主要联系到 `h9/2` 来源的最低/次低轨道，并较好比较本文/早期 internal-conversion data 的 energies、mixing ratios 与相对 transition ratios；作者据此提出 dominant single-particle excitation。该模型结果与 Sensharma 2020 的 large-`δ`/LW PRM interpretation 竞争，不能写成实验事实。详细程序位于当前未收录的 supplementary material；本文提到 TiP 只是 broader low-spin alternative，不是该 `187Au` QTR calculation 的直接结论。

[[lv-2021-tilted-precession-135nd]] 的 QTR 将 D1、TiP1、TiP2 低自旋主要联系到 `[Ω_l,K_l]=[9/2,9/2]`、`[9/2,13/2]`、`[11/2,15/2]`，并比较 energies 与相对 `B(M1)out/B(E2)in`、`B(E2)out/B(E2)in`。TiP1 高自旋 wave functions 混合且 energies 被高估；Appendix 的 no-pairing calculation 对 TiP1/TiP2 更差，说明低自旋模型比较依赖 pairing。这些是 QTR model results，不是直接观测的 angular-momentum geometry。

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
- [[guo-2022-low-spin-wobbling-187au]]
- [[lawrie-2020-tilted-precession-wobbling]]
- [[lv-2021-tilted-precession-135nd]]

## Evolution Log

- 2026-07-01：由 `131Xe` 试摄入建立。
- 2026-07-01：加入 `137Nd` 手征几何与 N=75 signature-splitting 的参数敏感性。
- 2026-07-03：加入 Matta 2015 的 `135Pr` QTR 能量/跃迁比较及定量偏差。
- 2026-07-03：加入 Sensharma 2019 的 TW2 anharmonicity/E2-ratio 比较及参数继承边界。
- 2026-07-03：加入 Lv 2022 的 standard-input QTR realignment/TiP counter-interpretation。
- 2026-07-04：加入 Guo 2022 的 `187Au` multi-orbital QTR single-particle reinterpretation 与 supplementary-material 边界。
- 2026-07-04：加入 Lawrie 2020 对完整 3D QTR/TiP 与 harmonic wobbling approximation 的理论边界。
- 2026-07-04：加入 Lv 2021 `135Nd` QTR parameters、wave-function assignment、transition ratios 与 pairing comparison。
