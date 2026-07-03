---
type: source
title: "Search for the origin of wobbling motion in the A≈130 region: The case of 131Xe"
aliases: []
created: 2026-07-01
updated: 2026-07-02
status: active
review_status: human-reviewed
source_type: journal-article-experiment-and-model
reading_depth: deep-read
title_original: "Search for the origin of wobbling motion in the A ≈ 130 region: The case of 131Xe"
authors: [S. Chakraborty, et al.]
journal: Physical Review C
year: 2023
volume: 107
pages: 064318
doi: 10.1103/PhysRevC.107.064318
arxiv: 2311.09713
language: en
canonical_source: doi:10.1103/PhysRevC.107.064318
zotero_item_key: 5WSF5D6P
citation_key: chakraborty_2023_Searchorigina
zotero_uri: zotero://select/library/items/5WSF5D6P
library_file: "E:/zetore reference/高自旋/三轴/进动/理论/2023_Chakraborty et al_Search for the origin of wobbling motion in the A ≈ 130 region.pdf"
raw_file: "raw/papers/2023_Chakraborty et al_Search for the origin of wobbling motion in the A ≈ 130 region.pdf"
raw_sha256: 9A871D56CD2752EED9E09F1F8FC60686CAE3C23FE63EFC2255846F2E38AC72A1
nuclei: [131xe, 133ba, 135ce]
reactions: [130te-alpha-3n-131xe]
experiments: [vecc-131xe-alpha-38mev]
models: [triaxial-particle-rotor-model, triaxial-projected-shell-model]
observables: [multipole-mixing-ratio, signature-splitting, bm1-be2-ratio]
methods: [dco-ratio, linear-polarization-asymmetry, gamma-gamma-coincidence]
tags: [a130, wobbling, signature-partner, triaxiality, in-beam-spectroscopy]
---

# Chakraborty 等（2023）：`131Xe` 中 wobbling 起源与 signature partner

## Bibliographic Record

Physical Review C 107, 064318 (2023)，DOI `10.1103/PhysRevC.107.064318`。本地 PDF 为 8 页 arXiv 版本。

## Scope and Reading Depth

全文精读；视觉核对 Fig.1 能级纲图、Table I、Figs.4-5 的 mixing ratio 约束和 Fig.11 的 TPSM/TPRM 比较。

## Summary

作者重新分析 `130Te(4He,3nγ)131Xe` 数据，建立一条以 9/2-、13/2-、17/2-、21/2- 为成员的新负宇称序列，并研究其与 νh11/2 yrast 带之间的联系。连接跃迁的 DCO 与角分布表明 E2/M1 mixing 很小，主要是 M1；因此该序列被解释为 νh11/2 带的不利 signature partner，而非 wobbling 带。TPRM 在调整到 `ε2=0.13, γ=33°` 后再现实验能级与 signature splitting。作者同时指出 `131Xe` 可具有三轴形变，但本工作没有发现 wobbling 的实验信号，三轴形变本身并不保证 wobbling 出现。

## Experimental or Theoretical Setup

- 反应：`130Te(4He,3nγ)131Xe`；
- 束流：38 MeV α，VECC K-130 cyclotron；
- 靶：2 mg/cm² enriched `130Te`，600 µg/cm² Mylar backing；
- 阵列：7 个 Compton-suppressed INGA clover HPGe，40°、90°、125°；
- DAQ：Pixie-16，250 MHz，12 bit；
- 排序与分析：IUCPIX、INGASORT、RADWARE；
- 理论：TPSM 对照与本文 TPRM。

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| C23-1 | 新序列包含 705、816、930 keV 带内跃迁，并通过 177、882、1055、1176 keV 跃迁连接到 yrast 负宇称带。 | experimental-fact | direct | PDF pp.2-3, Fig.1, Fig.2 | false |
| C23-2 | 671、882、1055、1176 keV 为 dipole，705、766、816、930 keV 为 quadrupole；1055 keV 的 δ 接近 0，671/882 keV 的 δ 分别约 0.03(3)/0.09(8)。 | experimental-fact | direct | PDF pp.3-4, Table I, Figs.4-5 | false |
| C23-3 | 连接跃迁的 E2 成分很小，作者据此排除所建序列的 wobbling 性质，并将其解释为 νh11/2 的不利 signature partner。 | author-interpretation | direct | PDF pp.4-6 | false |
| C23-4 | TPRM 采用 `ε2=0.13, γ=33°, ξ=1` 后较好再现有利/不利 signature partners；这是模型拟合结果。 | model-result | direct | PDF p.7, Fig.11 | false |
| C23-5 | yrare 17/2- 态实验 `B(M1)/B(E2)=1.27(14)` 与 TPRM 1.27 一致；yrast 17/2- 的实验值 2.54(4) 约为模型值两倍。 | experimental-fact | direct | PDF p.7 | false |
| C23-6 | yrare 13/2- 上的带被认为是更合适的不利 signature partner；yrast 13/2- 序列的起源仍是开放问题。 | author-interpretation | direct | PDF p.7 | false |
| C23-7 | 作者结论：本工作未发现 wobbling 实验信号；三轴形变本身可能不足以保证 wobbling。 | author-interpretation | direct | PDF p.8, Summary | false |

## Nuclear Structure Information

### `131Xe` 负宇称相关序列

- favored νh11/2 序列：11/2- 164 keV、15/2- 806 keV、19/2- 1616 keV、23/2- 2518 keV、27/2- 3181 keV、29/2- 4061 keV；
- 新建的 yrare 序列：9/2- 341 keV、13/2- 1046 keV、17/2- 1862 keV、21/2- 2792 keV；作者指认为 unfavoured signature partner；
- 另一条 yrast 13/2- 835 keV 起始序列延伸到 17/2- 1601 keV 等态，其物理起源在本文中未解决。

## Authors' Interpretation

低 E2 admixture 是区分普通 signature partner 与 wobbling band 的关键。较大的 signature splitting 可支持 γ deformation，但不能单独证明 wobbling。

## Model Results

- TPSM 能再现 signature splitting，但部分相邻能级差偏离实验；
- TPRM 对 γ 参数高度敏感，调整参数后再现能级；
- 模型成功不等于模型参数代表唯一势能面。

## Competing Interpretations and Limitations

- 部分 mixing ratio 由弱跃迁和有限角度 DCO 约束，需复核完整误差传播；
- TPRM 的 γ=33° 是模型输入/拟合，不是直接测量的刚性 γ；
- 对 135Ce wobbling 的讨论是预测性案例，不是本文的新实验确认；
- 本地 Zotero 数据库中还存在一个以 PDF 文件名为标题的附件条目，正式 Zotero item 使用 key `5WSF5D6P`。

## Extracted Pages

- Nuclei: [[131xe]]
- Bands: [[131xe-nu-h11-2-favored-sequence]], [[131xe-negative-parity-yrare-sequence]], [[131xe-negative-parity-yrast-13-2-sequence]]
- Experiment: [[vecc-131xe-alpha-38mev]]
- Concepts: [[wobbling-motion]], [[signature-partner-bands]], [[triaxial-deformation]]
- Models: [[triaxial-particle-rotor-model]], [[triaxial-projected-shell-model]]
- Observables: [[multipole-mixing-ratio]], [[signature-splitting]], [[bm1-be2-ratio]]
- Methods: [[dco-ratio]], [[linear-polarization-asymmetry]], [[gamma-gamma-coincidence]]
- Synthesis: [[wobbling-vs-signature-partner]]

## Personal Notes

这篇文献非常适合做“反证模板”：它并不否定 `131Xe` 三轴性，而是把“存在三轴形变”和“观测到 wobbling”明确拆开。
