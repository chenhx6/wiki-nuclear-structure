---
type: observable
title: Chiral-band energy-spacing parameter
aliases: [chiral energy staggering parameter, rotational energy-spacing parameter]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: unreviewed
observable_kind: energy-systematics
symbol: S_chiral(I)
units: energy
tags: [chirality, rotational-bands, energy-staggering]
---

# 手征候选带能量间距参数（Chiral-Band Energy-Spacing Parameter）

## Definition

用于比较 `Delta I=1` 带相邻能级间距随自旋变化的能谱量。它由能级能量直接构造，是手征候选带常用的 energy-spectrum fingerprint 之一。

## Formula and Conventions

Meng 2010、Ayangeakaa 2013 与 Liu 2016 原文使用 `S(I)=[E(I)-E(I-1)]/(2I)`。本 Wiki 用 `S_chiral(I)` 与 [[signature-splitting]] 中另一种同名 `S(I)` 公式区分。跨来源使用前必须核对公式、能量零点、自旋单位及作者采用的 band sequence。

## How It Is Obtained

由已指认 spin sequence 的能级能量直接计算；因此继承能级归属和 spin/parity assignment 的不确定性。

## Diagnostic Use

候选 chiral partners 常比较两带 `S(I)` 是否相近、是否近似恒定或随自旋平滑。Ayangeakaa 2013 把 close excitation energies、近恒定 `S(I)` 与相似 `B(M1)/B(E2)` 行为联合用作 `133Ce` 两对候选带的 fingerprints；Liu 2016 则比较 `78Br` 两对带的实验与 TPRM `S(I)` 幅度和趋势。

## Model Dependence

[[meng-2010-open-problems-nuclear-chirality]] 强调 spin alignment 与 `S(I)` 都从能谱提取，因而继承能谱 fingerprint 的不确定性；理想 chiral partners 预期具有相同或很相近的 alignment、moment of inertia 与 electromagnetic transition probabilities，但不存在由 `S(I)` 单独提供的 model-independent 手征判据。

## Failure Modes and Ambiguities

相似 `S(I)` 可由其它相近转动结构产生，不能单独证明 chirality 或 MχD。

## Examples

- `133Ce` Bands 2–3 与 5–6：Ayangeakaa 2013 Fig.2，实验与 TPRM 对照。
- `78Br` Bands 1–2 与 3–4：Liu 2016 Fig.4，实验与 TPRM 对照；Band 3 的偏差被作者联系到模型忽略的 `f5/2-p3/2` mixing。

## Sources

- [[meng-2010-open-problems-nuclear-chirality]]
- [[ayangeakaa-2013-evidence-multiple-chiral-doublet-bands-133ce]]
- [[liu-2016-octupole-correlations-multiple-chiral-doublet-bands-78br]]

## Evolution Log

- 2026-07-13：建立定义、公式与非唯一性边界。
- 2026-07-13：经用户审核，补充 `133Ce`/`78Br` 的实验—TPRM 用法及 `S(I)` 继承能谱不确定性的边界。
