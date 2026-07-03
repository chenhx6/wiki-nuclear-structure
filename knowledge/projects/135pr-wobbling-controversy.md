---
type: project
title: "135Pr low-spin wobbling controversy"
aliases: [135Pr wobbling controversy, 135Pr low-spin bands evidence map]
created: 2026-07-03
updated: 2026-07-03
status: active
review_status: unreviewed
project_stage: supporting-evidence-seed
confidentiality: private
nuclei: [135pr]
tags: [135pr, wobbling, controversy, evidence-map, project]
---

# `135Pr` Low-Spin Wobbling Controversy

## Project Purpose

这是争议型研究工作台，用于跟踪 `135Pr` low-spin bands 是否应解释为 wobbling bands。本轮只建立 Matta 2015 的支持方证据链，不裁决支持方、反对方或替代解释谁正确。

## Research Question

Matta 2015 中的 [[135pr-yrast-band]] 与 [[135pr-side-band]] 是否满足 transverse-wobbling 的实验与模型判据？这些判据在后续独立分析中是否保持稳健？

## Current Hypotheses

- H1：Matta 2015 的 yrast/side-band pair 可解释为 `n_w=0/1` transverse-wobbling bands；
- H2：相同能级与连接跃迁可能存在 signature-partner、组态混合或其他非 wobbling 解释；
- 当前状态：只录入 H1 的原始支持来源，不比较证据权重。

## Evidence Available

### Supporting Source for Transverse-Wobbling Interpretation

[[matta-2015-transverse-wobbling-135pr]] 是本轮核心支持 source。

| Evidence note | Evidence class | Locator | 当前作用 |
|---|---|---|---|
| Fig.1 的 yrast 与 side-band 通过 ΔI=1 transitions 相连 | observed fact | Fig.1, pp.2-3 | 建立待解释的 band pair |
| 747.0、812.8、754.6 keV 的大 `|δ|` 与 60.6%-85.0% E2 fractions | observed fact | Fig.2, Table I | 支持连接跃迁有显著 E2 成分 |
| 747.0、812.8 keV 的正 polarization asymmetry | observed fact | Fig.3, Table I | 独立支持主要 electric character |
| 593.9 keV signature-partner link 的小 `|δ|`、负 asymmetry 与 2.5% E2 fraction | observed fact / comparison | Figs.2-3, Table I | 提供主要 M1 的同核素对照 |
| ΔI=1、E2-dominated interband transitions 区分 wobbling 与普通 signature partners | experimental criterion | p.3 | Matta 2015 采用的核心判据 |
| Eq.1/Fig.5 的 `E_wob(I)` 在低自旋区下降 | observed fact / criterion | Eq.1, Fig.5 inset | Matta 2015 用于 transverse 分类 |
| zero-/one-phonon 与 transverse-wobbling 指认 | author interpretation | pp.2-5 | 支持方结论，不是裸观测 |
| TAC/QTR 对能量、组态、转动惯量和 transition ratios 的比较 | model result | Figs.4-5, Table I | 提供模型一致性及定量偏差 |

### Opposition and Alternative Interpretations

本轮不摄入反对方结论。`raw/papers/2022_Lv et al_Evidence against the wobbling nature of low-spin bands in 135Pr.pdf`、`raw/papers/2022_Guo et al_Probing the nature of the conjectured low-spin wobbling bands in atomic nuclei3.pdf` 和相关后续工作仅列为 future ingest candidates；在建立 source 页前不概述其结论。

### Evidence Gaps

- PRL 未公开完整逐门 coincidence、DCO、angular-distribution 与 asymmetry 分析；
- 702.7 keV 的 DCO ratio 数值未列出；
- 710.2 keV 缺直接 mixing ratio 和 polarization；
- Table I 的 E2 fractions/相对 probability ratios 不是绝对寿命测量；
- 需要把后续反对方对同一 transitions 和 mixing ratios 的重分析并列到同一矩阵；
- 需要区分“数据是否成立”“mixing-ratio 提取是否稳健”“这些量是否足以证明 wobbling”三个问题。

## Analysis Status

已建立 Matta 2015 的 supporting evidence container，尚未摄入反方 source，未形成裁决性 synthesis。

## Data-Analysis Bridge

当前没有用户数据处理结果。后续如加入重新拟合的 angular distribution、polarization、DCO、mixing ratio 或 band assignment，应记录输入谱、门条件、响应函数、误差和与 Table I 的逐项差异。

## Decisions

- Matta 2015 标记为 `supporting source for transverse-wobbling interpretation`；
- source 中 observed facts、experimental criteria、author interpretation 和 model results 分层；
- project 不把支持方术语写成最终事实，不预设后续反方结论。

## Risks and Blockers

- 当前证据矩阵只有支持方 source，来源不平衡；
- mixing ratio 与 E2 fraction 对角分布拟合、弱跃迁统计和约定敏感；
- TAC/QTR 参数拟合与 band assignment 之间存在相互依赖；
- 在反方 source 摄入前，不能进行公平的解释比较。

## Next Actions

1. 摄入 2022 Lv et al. 反对 wobbling 的原始论文。
2. 摄入 2022 Guo et al. 对低自旋 wobbling 候选的理论/判据分析。
3. 将双方对同一 transitions、mixing ratios、polarization 和 band assignment 的陈述并列表格。
4. 完成双方 source 后再决定是否建立独立 synthesis；本 project 本身不裁决。

## Related Sources and Pages

- [[135pr]]
- [[matta-2015-transverse-wobbling-135pr]]
- [[wobbling-motion]]、[[transverse-wobbling]]、[[signature-partner-bands]]
- [[multipole-mixing-ratio]]、[[interband-e2-strengths]]、[[wobbling-energy]]
- [[dco-ratio]]、[[linear-polarization-asymmetry]]
- [[tilted-axis-cranking]]、[[triaxial-particle-rotor-model]]
