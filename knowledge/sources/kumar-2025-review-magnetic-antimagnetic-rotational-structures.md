---
type: source
title: "Review of Magnetic- and Antimagnetic-Rotational Structures in Nuclei"
aliases: [Kumar 2025 magnetic antimagnetic rotation review]
created: 2026-07-15
updated: 2026-07-16
status: ai-draft
review_status: unreviewed
source_type: journal-article-review
reading_depth: deep-read
title_original: "Review of magnetic- and antimagnetic-rotational structures in nuclei"
authors: [Sushil Kumar, Sukhjeet Singh, Balraj Singh, Amita, Ashok Kumar Jain]
journal: Atomic Data and Nuclear Data Tables
year: 2025
volume: 165
pages: 101735
doi: 10.1016/j.adt.2025.101735
language: en
canonical_source: doi:10.1016/j.adt.2025.101735
zotero_item_key:
citation_key: kumar_2025_Reviewmagnetic
zotero_uri:
library_file:
raw_file: "raw/papers/2025_Kumar et al_Review of magnetic- and antimagnetic-rotational structures in nuclei.pdf"
raw_sha256: 3E7EECF9CB084AA24174A41886A0B2372B00322C3343AB2825D1F142BD76567E
nuclei: []
reactions: []
experiments: []
models: [tilted-axis-cranking, particle-rotor-model, cranked-shell-model]
observables: [bm1-be2-ratio, b-m1, b-e2, moments-of-inertia, level-lifetimes]
methods: [in-beam-gamma-spectroscopy, lifetime-measurement, angular-correlation]
tags: [magnetic-rotation, antimagnetic-rotation, shears, review, high-spin]
---

# Kumar 等（2025）：磁转动与反磁转动结构综述

## Bibliographic Record

Atomic Data and Nuclear Data Tables 165 (2025) 101735. DOI `10.1016/j.adt.2025.101735`; BibTeX key `kumar_2025_Reviewmagnetic`。

## Scope and Reading Depth

全文 deep-read，覆盖 MR/AMR 一般性质、shears 几何、TAC/PRM 等模型背景、判据、数据表说明、歧义排除案例和结论。文献汇编截止 2025-03-31，整理 117 个核中的 228 个 magnetic-rotational（MR/shears）结构和 28 个核中的 40 个 antimagnetic-rotational（AMR）结构。表中数值主要来自原始论文、ENSDF、XUNDL 和 NSR；本文不是这些实验的原始观测来源。

## Summary

综述把 MR 与 AMR 作为弱形变或近球形背景中的高 `j` 角动量耦合问题来整理。MR 的典型图像是粒子-空穴 shears blades 逐渐闭合，产生强 M1、弱 E2 和随自旋下降的 `B(M1)`；AMR 则由两组相反磁矩的 shears 近似抵消，通常表现为 `Delta I=2`、很弱且随自旋下降的 E2。作者同时强调，许多文献中的 MR/AMR 标签仍是 tentative，缺少寿命、`B(M1)`/`B(E2)` 或细致模型时不能作 firm assignment。

## Experimental or Theoretical Setup

- Review/compendium；无新的反应、探测器或 level scheme 数据集。
- 汇总原始来源提供的 gamma 能量、能级、自旋宇称、寿命、`B(M1)`、`B(E2)`、比值和可能组态。
- 用 TAC、CSM、CNS、PRM 及相关模型解释候选带，但模型标签与实验观测分开记录。

## Key Results

| ID | Claim | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| KU25-1 | 作者的汇编范围是 117 个核中的 228 个 MR/shears 结构和 28 个核中的 40 个 AMR 结构；截止日期为 2025-03-31。 | review-background | direct | PDF pp.1-2, Abstract and Introduction | true |
| KU25-2 | 多数 MR 候选呈近似 `I(I+1)` 的能级趋势、强 `Delta I=1` M1 带内跃迁、弱 E2 crossover 和较大的 `B(M1)/B(E2)`；这些是统计性特征，不是单独充分判据。 | review-background / experimental-criteria | direct | PDF pp.2-3, Sec.2 and Table 1 | true |
| KU25-3 | 综述列出 MR 常用的经验范围：`B(M1)` 约为 `2-10 mu_N^2`、`B(E2)` 可低至 `1-0.01 (eb)^2`，以及 `J^(2)/B(E2)` 通常大于约 `150 MeV^-1(eb)^-2`；具体适用性取决于核素和数据质量。 | review-background / experimental-criteria | direct | PDF pp.2-3, Sec.2, Eq.(1), Table 1 | true |
| KU25-4 | shears 机制把高 `j` 质子粒子与中子空穴角动量看作两把 blade；随自旋增加，夹角减小、垂直磁矩 `mu_perp` 减小，因此 `B(M1)` 的下降趋势是重要但模型依赖的 MR 证据。 | review-background / model-result | direct | PDF pp.2-4, Sec.3 and Fig.1 | true |
| KU25-5 | AMR 由两组 shears 的横向磁矩近似相消；常见结构是 `Delta I=2` 序列、弱 E2，且 `B(E2)` 随自旋下降。作者给出的 `J^(2)/B(E2)` 大于约 `100 MeV^-1(eb)^-2` 是经验筛选条件，而非普适定律。 | review-background / experimental-criteria | direct | PDF pp.4-5, Sec.3, Fig.4 and AMR discussion | true |
| KU25-6 | 作者总结 MR/AMR 需要粒子-空穴耦合、较大的 active `j` 和足够小的芯形变，以避免普通集体转动压过 shears 机制；这些是配置与模型前提。 | review-background / model-formalism | direct | PDF p.3, MR conditions; p.4, AMR conditions | true |
| KU25-7 | 综述指出约只有三成 MR 表和少数 AMR 结构有寿命、`B(M1)`、`B(E2)` 和详细模型的联合信息；缺少这些信息时，规则能级序列也可能是 collective、signature-partner 或其他激发。 | author-synthesis / evidence-gap | direct | PDF pp.4-6, Conclusions and data-availability discussion | true |
| KU25-8 | 作者因实验数据或模型不足排除了若干文献中的 MR-like 候选，并保留 established、likely、tentative 等不同等级；这说明“dipole band”或 M1 假设不能自动升级为 MR。 | review-background / evidence-policy | direct | PDF p.5, Sec.5 and table policies | true |
| KU25-9 | 综述中的表格数据原则上取自原始 publications，部分缺失能级来自 ENSDF/XUNDL 或作者推断；因此表格可用于候选筛选，但进入 paper evidence gate 仍需回到原始 source。 | method-formalism / review-background | direct | PDF pp.5-6, Policies and Explanation of Table | true |
| KU25-10 | 对当前 wobbling 研究，MR/AMR 证据链提供一个竞争解释框架：M1/E2、`J^(2)`、寿命和配置几何可帮助区分 shears、普通集体转动、signature partner 与 wobbling，但本综述不裁决任何 A≈130 争议。 | Wiki synthesis / project note | direct | Cross-source comparison; Secs.2-6 | true |

## Analytical Reconstruction

作者先用大样本汇编建立 MR/AMR 的候选筛选，再用 shears 角动量几何解释 `B(M1)`、`B(E2)` 和能级趋势，最后以寿命和详细模型的缺失率说明 assignment 的不确定性。证据链的关键不是某个比值的阈值，而是配置、multipolarity、寿命和模型几何是否相互一致。

## Competing Interpretations and Limitations

- 本文的核素和带表格是 review/background；具体 gamma、寿命和组态不可当作本文原始实验结果。
- 强 M1、弱 E2、规则能级或大的 `J^(2)/B(E2)` 都可能在配置混合、signature partners、普通集体/倾斜转动或数据缺失时出现。
- 表中 tentative/probable/configuration-from-model 标记必须保留；缺寿命时不应写成 firm MR/AMR。
- MR/AMR 与 wobbling、chirality、tilted precession 的角动量图像有交叉，但物理自由度和判据不同，不能只凭“倾斜”一词合并。

## Related Concepts, Models and Projects

- Concepts: [[magnetic-rotation]], [[antimagnetic-rotation]], [[shears-mechanism]], [[band-termination]], [[angular-momentum-alignment]]
- Models: [[tilted-axis-cranking]], [[cranked-shell-model]], [[particle-rotor-model]]
- Project context: [[low-spin-wobbling-controversies]]

## Project Relation

为现有 wobbling project 增加 MR/AMR 竞争解释的 review 背景，特别是“寿命和 `B(M1)/B(E2)` 缺失会限制 firm assignment”的证据门槛。该页不把表中任何核素自动加入 wobbling 或 MR evidence matrix。

## Human Review Triage

### P0 Focus

1. **KU25-2--KU25-5, PDF pp.2-5, review-background/experimental-criteria.** 核对 MR/AMR 的 Delta-I、M1/E2、`B(M1)`/`B(E2)` 和 `J^(2)/B(E2)` 表述，确认阈值没有被写成普适定律。
2. **KU25-7/KU25-8, PDF pp.4-6, evidence-gap/review-background.** 核对“约三成”联合寿命/模型覆盖和 ambiguous-candidate 排除逻辑。
3. **KU25-9, PDF pp.5-6, method-formalism.** 核对表格数据来源政策，避免把 ENSDF/XUNDL 或作者推断当作原始实验定位。

### Remaining P0

- **KU25-1/KU25-6/KU25-10**：核对综述范围、shears 前提和与 wobbling project 的迁移边界。

### P1

- 若未来需要某一 MR/AMR 核素的数值或 configuration，应从本页表格追溯到表中原始引用并单独摄入。

## Extracted Pages

- Concepts: [[magnetic-rotation]], [[antimagnetic-rotation]], [[shears-mechanism]], [[band-termination]], [[angular-momentum-alignment]]
- Models: [[tilted-axis-cranking]], [[cranked-shell-model]], [[particle-rotor-model]]
- Project: [[low-spin-wobbling-controversies]]

## Review Status

Page and all KU25 claims remain unreviewed with `needs_review: true`. Human review is deferred until use: perform targeted claim review when this content is used for paper writing, a key project decision, synthesis finalization or a paper-level evidence pool.
