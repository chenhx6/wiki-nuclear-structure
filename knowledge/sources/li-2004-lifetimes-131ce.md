---
type: source
title: "Lifetimes of Excited Levels in 131Ce"
aliases: [Li 2004 131Ce lifetimes, Guang-Sheng Li 2004]
created: 2026-07-28
updated: 2026-07-28
status: ai-draft
review_status: unreviewed
source_type: journal-article-experiment
reading_depth: deep-read
title_original: "Lifetimes of Excited Levels in 131Ce"
authors: [Li Guang-Sheng, Meng Rui, Zhu Li-Hua, Zhang Zhen-Long, Wang Yue, Wang Zhi-Min, Wen Shu-Xian, Lu Jing-Bin, Zhao Guang-Yi, Li Xian-Feng, Wen Li-Jun, Zheng Yong-Nan, Zheng Yong, Liu Yun-Zuo, Yuan Guan-Jun, Yang Chun-Xiang]
journal: Chinese Physics Letters
year: 2004
volume: 21
pages: 461-463
doi:
language: en
canonical_source: journal:Chinese Physics Letters:21:461-463
citation_key: guang-sheng_2004_LifetimesExcited
raw_file: "raw/papers/2004_Lifetimes of Excited Levels in 131Ce.pdf"
raw_sha256: 100A06FC1BB6D7061A153552529C9245F123248F213A93F022B202AF97DCDCC5
nuclei: [131ce]
reactions: [116Sn(19F,p3n)131Ce]
observables: [transition-quadrupole-moment]
methods: [doppler-shift-attenuation]
tags: [131ce, lifetime, qt, dsam, positive-parity, negative-parity]
---

# Li 等（2004）：`131Ce` 激发态寿命

## Bibliographic Record

Li Guang-Sheng 等，*Chinese Physics Letters* **21**, 461–463 (2004)；citation key `guang-sheng_2004_LifetimesExcited`。DOI 未在所给论文或 BibTeX 中确认。

## Scope and Reading Depth

全文 3 页逐页视觉复核。PDF 文本层损坏，全部数值均以页面图像和 Table 1 为准；未用 2016 年论文的转载值反向补写原文。

## Summary

论文用 DSAM 测量 `131Ce` 正、负宇称 yrast 序列的寿命并提取 `B(E2)` 和 `Q_t`。负宇称序列平均 `Q_t=3.09(61) eb`，正宇称序列平均 `Q_t=4.56(145) eb`；作者将差异与 `νh11/2`、`νg7/2` 轨道的形状驱动倾向联系。该组态—形变联系是作者解释，且寿命提取依赖 side feeding 和转子假设。

## Experimental Setup

- 95 MeV `116Sn(19F,p3n)131Ce`，HI-13 tandem / CIAE。
- `1.05 mg/cm²` `116Sn` 靶与 `22.7 mg/cm²` Pb backing。
- 11 个 BGO-suppressed HPGe：3 个 `90°`、4 个 `48°`、4 个 `132°`。
- 用 Doppler-shift attenuation 分析；Figure 1 给出本工作使用的部分纲图。

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| LI04-1 | 负宇称序列的 `19/2−,23/2−,27/2−,31/2−` 分别为 `τ>4.0, 1.44(54), 1.23(23), <1.04 ps`。 | experimental-fact | direct-visual | PDF p.3, Table 1 | false |
| LI04-2 | 原表相应 `Q_t` 为 `<3.81, 3.55(67), 2.72(26), >2.31 eb`。 | derived-observable | direct-visual | PDF p.3, Table 1 | false |
| LI04-3 | 正宇称序列的 `13/2+,17/2+,21/2+,25/2+` 为 `τ=1.46(56),1.32(10),0.60(26),<2.19 ps`，`Q_t=7.04(135),3.80(14),4.06(88),>3.36 eb`。 | derived-observable | direct-visual | PDF p.3, Table 1 | false |
| LI04-4 | 作者给出负、正宇称带平均 `Q_t=3.09(61)` 与 `4.56(145) eb`。 | derived-observable | direct-visual | PDF p.3, paragraph below Table 1 | false |
| LI04-5 | 作者把负宇称带较低集体性与 `[514]9/2− (h11/2)` 的 oblate-driving 倾向、正宇称带与 `[404]7/2+ (g7/2)` 的 prolate-driving 倾向联系。 | author-interpretation | direct-visual | PDF p.3, discussion | true |

## Data Lineage and Band Identity

Figure 1 的负宇称 510–642–750–827–892 keV 序列与 thesis Band 1/2016 yrast band 高度一致。正宇称 610–725–796–649 keV 序列是另一条带，不因同属 yrast 讨论而与 Band 1 合并。

Li 2004 与 Singh 2016 的当前实验结果来自两次独立实验，可分别保留和比较。Singh 2016 Table 1 转载或按其约定重算的 Li 2004 行仍属于 Li 的原始测量谱系，只用于 cross-check，不能算作第三份独立证据。两次实验不通过简单加权平均裁决“谁正确”；Singh 可作为较新的工作基线，但年代本身不证明其必然更准确。

## Interpretation Boundaries

- PDF 文本层损坏，但 LI04-1–4 的 Table 1 转录已由用户完成 claim-level 视觉审核；页面整体仍为 `unreviewed`，LI04-5 仍待审。
- `Q_t` 与平均值依赖转子系数、branching、internal conversion 和 side-feeding 处理。
- 轨道的形状驱动倾向支持竞争解释排序，但不直接证明静态 shape coexistence。

## Competing Interpretations and Limitations

正负宇称序列的平均矩差异可由轨道形状驱动、组态依赖的芯极化或提取约定共同影响。现有点数、限值和较大误差不能唯一选择静态共存形状；文本层损坏还要求正式使用前复核原表。

## Human Review Triage

### P0

- LI04-1–4：用户已对照 PDF p.3 接受 Table 1 的视觉转录，本轮 claim-level P0 已解决。
- Li 2004 与 Singh 2016 的当前结果是独立实验；只有 Singh 表内转载/重算的 Li 行不得作为额外独立测量重复计权。

### P1

- 正、负宇称序列的 `Q_t` 差异提示组态依赖的芯响应；现有误差和不同提取约定不足以单独证明两个稳定形状共存。

## Related Knowledge

- [[131ce]]
- [[transition-quadrupole-moment]]
- [[singh-2016-lifetime-131ce-133pr]]
- [[alwaleedi-2013-band-structures-131ce]]

## Extracted Pages

- Nucleus: [[131ce]]。
- Observable: [[transition-quadrupole-moment]]。
- Project: [[131ce-collective-mode-discrimination]]。
