---
type: source
title: "Lifetime measurements of highly deformed bands in 134,135Nd and 131Ce"
aliases: [Petrache 1998 131Ce HD lifetime]
created: 2026-07-28
updated: 2026-07-28
status: ai-draft
review_status: unreviewed
source_type: journal-article-experiment
reading_depth: deep-read
title_original: "Lifetime measurements of highly deformed bands in 134,135Nd and 131Ce"
authors: [C. M. Petrache, R. Wyss, Zs. Podolyák, D. Bazzacco, G. De Angelis, D. De Acuña, M. De Poli, A. Dewald, E. Farnea, J. Gableske, A. Gadea, S. Lunardi, D. R. Napoli, M. N. Rao, C. Rossi Alvarez, T. Scanferla, C. A. Ur, R. Venturelli, P. von Brentano, L. H. Zhu]
journal: Physical Review C
year: 1998
volume: 57
pages: R10-R14
doi: 10.1103/PhysRevC.57.R10
language: en
canonical_source: doi:10.1103/PhysRevC.57.R10
citation_key: petrache_1998_Lifetimemeasurements
raw_file: "raw/papers/1998_Petrache et al_Lifetime measurements of highly deformed bands in 1 3 4 , 1 3 5 Nd and 131 Ce.pdf"
raw_sha256: 9D2297ED085012D2F8633A5FAECFA7020CBCA96AC06CF2EB5E88D97A24B90E5F
nuclei: [131ce, 134nd, 135nd]
reactions: [110Pd(28Si,alpha3n)131Ce]
models: [cranked-hartree-fock-bogoliubov]
observables: [transition-quadrupole-moment]
methods: [doppler-shift-attenuation]
tags: [131ce, highly-deformed, lifetime, q0, dsam]
---

# Petrache 等（1998）：`131Ce` 高度形变带寿命

## Bibliographic Record

C. M. Petrache 等，*Physical Review C* **57**, R10–R14 (1998)，DOI `10.1103/PhysRevC.57.R10`；citation key `petrache_1998_Lifetimemeasurements`。

## Scope and Reading Depth

全文 5 页逐页阅读并视觉复核，覆盖实验、Table I、DSAM/side-feeding 处理、CHFB 比较与结论。

## Summary

论文用 DSAM 测量 `134,135Nd` 和 `131Ce` 高度形变带。`131Ce` yrast HD 带得到 `Q0=7.3(4) eb`、`β2=0.38(2)`，与模型的随自旋收缩趋势相容。该 HD 序列属于与 normal-deformed thesis Band 1 不同的形变/自旋区，不能按同核素或 “yrast” 标签直接合并。

## Experimental Setup

- 132 MeV `110Pd(28Si,xn yα)`，GASP + ISIS；`131Ce` 经 `α3n` 道布居。
- DSAM 线形拟合包含 side-feeding cascade；提取量依赖 stopping powers、side-feeding 时标与模型参数。
- CHFB 用于给出 `Q0` 随自旋变化和形变收缩的理论比较。

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| PE98-1 | `131Ce` yrast HD 带的实验 `Q0=7.3(4) eb`，side-feeding `Qsf=6(1) eb`。 | derived-observable | direct | PDF p.3, Table I | true |
| PE98-2 | 在无三轴性假设下，作者由该矩估计 `β2=0.38(2)`。 | model-assisted-inference | direct | PDF p.3, Table I and caption | true |
| PE98-3 | CHFB 给出 `131Ce` 理论 `Q0` 从 `I=20.5` 的约 `7.5 eb` 降到 `I=40.5` 的约 `6.7 eb`。 | model-result | direct | PDF p.3, Table I | true |
| PE98-4 | 作者报告该结果与 Clark 等的 `7.4(3) eb` 一致，并高于更早约 `6` 与 `5.5 eb` 的结果。 | author-comparison | direct | PDF pp.3–4, discussion | true |
| PE98-5 | 作者认为数据与 rotation-induced shrinking 相容，但没有发现 `Q0` 对 `i13/2` intruder 轨道数目的简单单调依赖。 | author-interpretation | direct | PDF pp.4–5, Conclusions | true |

## Data Lineage and Band Identity

本页的 `131Ce` HD band 以高形变、独立级联和更高自旋区定义。它只与 thesis/2016 normal-deformed 序列做分层尺度比较；当前没有证据把二者认作同一连续带。

## Interpretation Boundaries

- `β2=0.38(2)` 依赖轴对称映射；`Q0` 是更接近实验拟合的量。
- HD 与 normal-deformed 的 `Q0/Q_t` 不具有完全相同的几何和 K-mixing 约定。
- 同一核中存在高度形变序列提高多极小/shape coexistence 的可行性，但不能证明 thesis Bands 1–7 构成共存伙伴。

## Competing Interpretations and Limitations

大 `Q0` 直接支持强 E2 集体性；`β2`、随自旋收缩和 intruder 轨道作用依赖轴对称映射与 CHFB。HD 序列可能体现独立形变极小，也可能只是在不同自旋/组态区的结构；缺少 HD–ND linking 使两者不能裁决。

## Human Review Triage

### P0

- PE98-1：HD band 必须保持独立身份，不得错误并入 thesis Band 1 或 2016 yrast sequence。

### P1

- PE98-2–5：大 `Q0` 是强形变的定量证据；形状、intruder 计数和随自旋收缩仍有模型依赖。

## Related Knowledge

- [[131ce]]
- [[transition-quadrupole-moment]]
- [[131ce-collective-mode-discrimination]]

## Extracted Pages

- Nucleus: [[131ce]]。
- Observable: [[transition-quadrupole-moment]]。
- Project: [[131ce-collective-mode-discrimination]]。
