---
type: source
title: "Lifetime measurements in the yrast band of the gamma-soft nuclei 131Ce and 133Pr"
aliases: [Singh 2016 131Ce lifetime]
created: 2026-07-28
updated: 2026-07-28
status: ai-draft
review_status: unreviewed
source_type: journal-article-experiment
reading_depth: deep-read
title_original: "Lifetime measurements in the yrast band of the gamma-soft nuclei 131Ce and 133Pr"
authors: [R. P. Singh, P. Joshi, S. K. Chamoli, S. Muralithar, G. Mukherjee, R. K. Bhowmik, S. C. Pancholi]
journal: Pramana - Journal of Physics
year: 2016
volume: 87
pages: 7
doi: 10.1007/s12043-016-1218-6
language: en
canonical_source: doi:10.1007/s12043-016-1218-6
citation_key: singh_2016_Lifetimemeasurements
raw_file: "raw/papers/2016_Singh et al_Lifetime measurements in the yrast band of the gamma-soft nuclei 131Ce and 133Pr.pdf"
raw_sha256: 95E0831B9864A58FD1A896A1B20E227D88D9B7AA5DE56C738C3792441CAA1A30
nuclei: [131ce, 133pr]
reactions: [119Sn(16O,4n)131Ce]
models: [total-routhian-surface]
observables: [transition-quadrupole-moment]
methods: [recoil-distance-doppler-shift, doppler-shift-attenuation]
tags: [131ce, lifetime, qt, gamma-soft, dsam, rdds]
---

# Singh 等（2016）：`131Ce/133Pr` yrast 带寿命

## Bibliographic Record

R. P. Singh 等，*Pramana – Journal of Physics* **87**, 7 (2016)，DOI `10.1007/s12043-016-1218-6`；citation key `singh_2016_Lifetimemeasurements`。

## Scope and Reading Depth

全文 11 页逐页阅读并视觉复核。重点覆盖实验设置、Table 1、Figures 1–12、Eqs. (1)–(5)、side feeding、`K`/Clebsch–Gordan 处理和 TRS 解释。

## Summary

论文用 plunger 与 DSAM 测得 `131Ce` 负宇称 `νh11/2` yrast 带的 4 个寿命和 3 个限值，并给出 `Q_t`。直接实验结果支持该带从低自旋约 `3 eb` 向较高自旋约 `2.5 eb` 的温和下降；作者结合 TRS 把它解释为 γ-soft、随频率向强非轴区域演化的芯背景。后者是模型辅助解释，不是寿命直接测得的 γ 值。

## Experimental Setup

- `119Sn(16O,4n)131Ce`；plunger 实验 86 MeV，DSAM 实验 90 MeV。
- IUAC GDA：12 个 Compton-suppressed HPGe，位于 `50°/98°/144°`。
- 分析对象为 `νh11/2` 负宇称 decoupled yrast band；寿命由距离相关强度与 Doppler 线形获得。
- Eq. (1) 用 `Eγ^5`、Clebsch–Gordan 系数和 `Q_t²` 连接 E2 跃迁率；作者还检验了非轴/K-mixing 修正，指出 `K=1/2` 简化只改变数个百分点。

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| SI16-1 | 本文对 `131Ce` 负宇称 yrast 带报告 4 个有限寿命和 3 个单侧限值。 | experimental-fact | direct | PDF p.5, Table 1 | false |
| SI16-2 | 当前工作给出 `15/2−, 27/2−, 31/2−, 35/2−` 的 `Q_t=2.93(+0.60/−0.30), 2.26(+0.37/−0.23), 2.66(+0.13/−0.12), 2.43(+0.22/−0.20) eb`。 | derived-observable | direct | PDF p.5, Table 1 | true |
| SI16-3 | `19/2−, 23/2−, 39/2−` 分别给出 `τ<7.31 ps`, `τ>1.3 ps`, `τ<0.54 ps`，对应 `Q_t>1.90 eb`, `<2.85 eb`, `>2.29 eb`。 | derived-observable | direct | PDF p.5, Table 1 | true |
| SI16-4 | 论文 Table 1 同时转载并按本工作约定比较 Li 2004 等早期值；这些不是独立的新测量，统计时不得与原文重复计权。 | evidence-dependency | direct | PDF p.5, Table 1, refs. [31–32] | false |
| SI16-5 | 作者概括 `131Ce` 带起始处平均 `Q_t≈3 eb`，约 `I=12ℏ` 以上降至约 `2.5 eb`。 | author-interpretation | direct | PDF p.6, Fig. 5 and text | true |
| SI16-6 | TRS 在低频给出近 prolate、`β2≈0.21` 的 γ-soft 极小；更高频出现 `γ≈−46°`、`−80°` 等极小。 | model-result | direct | PDF pp.8–10, Figs. 9–12 | true |
| SI16-7 | 作者以 TRS 和 `Q_t` 趋势解释 γ-soft/非轴芯响应；具体 γ 极小并非实验直接测量。 | author-interpretation | direct | PDF pp.8–10, Eqs. (4–5), Conclusions | true |

## Data Lineage and Band Identity

该 yrast 序列与 Alwaleedi thesis Band 1 在负宇称、`νh11/2` 身份以及 510、642、750、827、892 keV 级联上高度对应。当前 crosswalk 记为 `high-confidence provisional`：映射依赖自旋、宇称和多条 `Eγ` 联合一致，而不是仅按 “yrast” 标签。

Li 2004 原实验与 Singh 2016 当前实验是两条独立测量谱系；本文 Table 1 中归于 Li 的转载/再计算行仍是依赖证据，不构成第三条谱系。本 Wiki 保留 Singh 再计算值与 Li 原表值，不把差异静默抹平，也不以简单加权平均裁决两次实验；Singh 可作较新的工作基线，但不能仅凭年份断言正确性。

## Interpretation Boundaries

- `Q_t` 下降约束 E2 集体性，但不能单独决定 γ 刚/软、γ 符号或建立 wobbling/chirality。
- `β2/γ` 来自 TRS 与转子映射；side feeding、K mixing、branching 和 stopping treatment 都是模型/分析依赖。
- lifetime 数据不能恢复 Alwaleedi Figure 5.5 未列表的 gated branching intensities。

## Competing Interpretations and Limitations

下降的 `Q_t` 可来自集体性变化、组态/带交叉响应或分析系统学；四个有限点的斜率不足 1σ。TRS 支持 γ-soft/nonaxial 背景，但不排除其它芯响应，也不提供 wobbling/chirality 的带间电磁矩阵。

## Human Review Triage

### P0

- SI16-4：禁止把本文转载/再算的 Li 2004 行与 Li 原始测量重复计权。
- SI16-7：不得把 TRS 的 `γ≈−80°` 写成直接实验形变测量。

### P1

- SI16-5：`Q_t` 的自旋趋势为 γ-soft/core-response 提供正交约束，但当前点数、限值和系统误差不足以形成高置信形状裁决。

## Related Knowledge

- [[131ce]]
- [[transition-quadrupole-moment]]
- [[alwaleedi-2013-band-structures-131ce]]
- [[131ce-collective-mode-discrimination]]

## Extracted Pages

- Nuclei: [[131ce]]；`133Pr` 本轮不新建页。
- Observables: [[transition-quadrupole-moment]]。
- Project: [[131ce-collective-mode-discrimination]]。
