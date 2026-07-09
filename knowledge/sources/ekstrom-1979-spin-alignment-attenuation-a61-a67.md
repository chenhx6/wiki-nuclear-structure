---
type: source
title: "Spin-Alignment Attenuation Factors in Mass 61-67 Nuclei Populated by (alpha, n) and (alpha, p) Reactions"
aliases: [Ekstrom 1979 spin-alignment attenuation, Ekström 1979 spin-alignment attenuation, Ekstrom 1979 MANDY alignment uncertainty, Ekstrom 1979 Gaussian limitation]
created: 2026-07-09
updated: 2026-07-09
status: ai-draft
review_status: human-reviewed
source_type: experiment-method-article
reading_depth: deep-read
title_original: "Spin-Alignment Attenuation Factors in Mass 61-67 Nuclei Populated by (alpha, n) and (alpha, p) Reactions"
authors: [L. P. Ekstrom, A. M. Al-Naser, P. R. G. Lornie, P. J. Twin]
journal: Nuclear Instruments and Methods
year: 1979
volume: 158
pages: 243--248
doi: 10.1016/S0029-554X(79)92465-0
language: en
canonical_source: doi:10.1016/S0029-554X(79)92465-0
citation_key: ekstrom_1979_Spinalignmentattenuation
raw_file: "raw/papers/1979_Ekström et al_Spin-alignment attenuation factors in mass 61–67 nuclei populated by (α, n) and (α, p) reactions.pdf"
raw_sha256: 85D1B5A34247C74FF2F0FF5B8C96BEBDC018BB4F164CDB66192EBFEF8149119A
nuclei: [61ni, 63zn, 64zn, 65zn, 67zn, 67ga]
reactions: ["(alpha,n) A=61-67 near-threshold reactions", "(alpha,p) A=61-67 near-threshold reactions"]
models: [compound-nucleus-reaction-model]
observables: [angular-distribution-coefficient, spin-alignment-attenuation-factor, multipole-mixing-ratio]
methods: [angular-distribution]
tags: [spin-alignment, attenuation-factor, mandy, compound-nucleus-reaction, gaussian-hypothesis, pado-support]
---

# Ekstrom et al. (1979): Spin-Alignment Attenuation Factors in `A=61-67`

## Bibliographic Record

L. P. Ekstrom, A. M. Al-Naser, P. R. G. Lornie and P. J. Twin, *Nuclear Instruments and Methods* **158**, 243--248 (1979), DOI `10.1016/S0029-554X(79)92465-0`, citation key `ekstrom_1979_Spinalignmentattenuation`.

The raw PDF uniquely matches the title, journal, year and DOI. Local file size is `174991` bytes; local timestamp `2026-07-01 16:33:16`; SHA-256 is recorded above.

## Scope and Reading Depth

全文 6 页已通读，依据 PDF 文本层核对了摘要、引言、数据筛选与化简、CNR/MANDY 对齐预测、光学模型参数敏感性、误差处方、gamma feeding 边界，以及 Sec.4.2 / Fig.6 中对 Gaussian magnetic-substate population 假设的讨论。

这是一个 `experiment-ingest + method-ingest + project-ingest` 来源。它是 `sigma-over-i` 项目的核心方法边界文献，但不是直接的 P-ADO 文献，也不定义用户代码中的 `sigma/I` 记号。

## Summary

本文汇编了 `A=61-67` 核区 39 条 pure-`E2` gamma angular distributions，并将其化简为 spin-alignment attenuation factors `alpha2` 和 `alpha4`。作者随后用 statistical compound nucleus reaction (CNR) theory 的 MANDY 计算结果与实验进行比较，检查预测对光学模型参数的敏感性，并给出预测对齐量应采用的误差尺度。

对当前项目最重要的是三点。第一，作者在引言中明确说，仅靠角分布本身几乎不能给出 spin/parity 或 mixing-ratio 信息，必须额外约束 alignment，或加入其他观测量。第二，作者给出了 CNR/MANDY alignment prediction 的误差处方，其中图 4 上方与文末公式 (6) 明确写出 `Δalpha2^MANDY = max{0.15 alpha2^MANDY, 0.04}`，并警告误差若给得过小，会导致错误的 spin/parity 或 mixing-ratio assignment。第三，作者指出简单 Gaussian magnetic-substate population 假设对这组数据过于受限，而且对高于阈值较远的能级，若 gamma feeding 显著，直接套用 direct-population 风格的对齐预测会偏低。

## Experimental or Theoretical Setup

- 输入数据集是 `A=61-67` 区域 39 条 pure-`E2` 角分布，作者只保留 `Ji`、`Jf` 已知、`|Ji-Jf|=2` 且宇称相同的跃迁，以避免 `delta` 不确定性。
- Table 2 汇总的反应包括 `58Fe(alpha,n)61Ni`、`60Ni(alpha,n)63Zn`、`61Ni(alpha,n)64Zn`、`62Ni(alpha,n)65Zn`、`64Ni(alpha,n)67Zn` 和 `64Zn(alpha,p)67Ga`。
- 角分布系数 `A2`、`A4` 先经有限立体角修正，再化简为 attenuation factors `alpha2`、`alpha4`。
- 理论比较使用 MANDY 程序：先由 Hauser-Feshbach 风格的 transmission probabilities 计算 magnetic-substate population parameters，再转成 alignment coefficients。Table 3 给出 `62Ni(alpha,n)65Zn` 的一组显式光学模型参数。

## Figure and Table Digest

- Table 1 是 39 条 pure-`E2` transitions 的主汇编表，给出各核素、跃迁、实验角分布系数以及化简后的 `alpha2/alpha4`。
- Table 2 是反应与核素列表，明确本文的证据范围集中在 `A=61-67` 的近阈值 `(alpha,n)` / `(alpha,p)` 体系。
- Table 3 给出 `62Ni(alpha,n)65Zn` 的一组 optical-model 参数，服务于 Fig.2 的敏感性比较。
- Fig.2 比较 MANDY 预测对不同 optical-model 参数的敏感性，重点不是“拟合成功”，而是说明 alignment prediction 对哪些输入最脆弱。
- Fig.3 和 Fig.4 把实验 `alpha2` 与 MANDY 预测直接对照；图 4 上方同时给出 `Δalpha2^MANDY = max{0.15 alpha2^MANDY, 0.04}` 的经验误差处方。
- Fig.5 说明当 levels 高于阈值较远时，gamma feeding 会让 direct-population 风格的 MANDY 估计偏低。
- Fig.6 不是简单地说“实验点都在 Gaussian 曲线某一侧”，而是用汇编的 `(alpha2, alpha4)` 点说明：多数实验点落在数学边界与 Gaussian family 围成的允许区域内，simple Gaussian family 本身过于受限，因此作者转向更一般的 `X`-family 形状。

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| EK79-1 | 本文汇编了 `A=61-67` 核区 39 条 pure-`E2` gamma angular distributions，并将其化简为 spin-alignment attenuation factors `alpha2` 和 `alpha4`。 | observed-fact | direct | Abstract; p.243 Sec.2; Table 1; p.248 Summary | false |
| EK79-2 | 作者在引言中明确指出：对 `(alpha,n)` / `(alpha,p)` 反应后的 gamma angular distributions，若仅有角分布本身，则对 spin/parity 和 mixing ratio 几乎不给信息；必须额外约束初态 alignment，测量线偏振，或把 CNR alignment prediction 作为额外 observable。 | experimental-criterion | direct | p.243 Introduction, first paragraph | false |
| EK79-3 | spin-alignment attenuation factor 定义为 `alpha_k(Ji)=p_k(Ji)/p_k^ca(Ji)`；当 `Ji`、`Jf`、多极性和 `delta` 已知时，可由归一化 `A2/A4` 反推 `alpha2/alpha4`。本文选 pure-`E2` transitions 正是为了避免 `delta` 不确定度。 | method-formalism | direct | p.243 Eq.(1) and Eq.(2); p.243 Sec.2 | false |
| EK79-4 | MANDY 通过 CNR transmission probabilities 计算 magnetic-substate population parameters 再转成 alignment coefficients；对示例 `62Ni(alpha,n)65Zn`，预测对 outgoing-neutron optical-model 中的 `r0` 和 `V` 最敏感，而对入射 alpha 参数及其余 neutron/proton 参数不敏感。 | model-calculation | direct | p.245 Sec.3.1; p.245--246 Sec.3.2, Fig.2 and Table 3 | false |
| EK79-5 | 作者将实验 `alpha2` 与 MANDY 预测比较后，提出 `alpha2` 预测应采用误差处方 `Delta alpha2^MANDY = max{0.15 alpha2^MANDY, 0.04}`。 | experimental-practice | direct | p.246 Sec.4.1, text below Fig.3 and Fig.4; p.248 Eq.(6) in Summary | false |
| EK79-6 | 作者强调若给 CNR/MANDY alignment prediction 赋予过小误差，会导致错误的 spin/parity 或 multipole-mixing-ratio assignment；因此本文建议采用比先前工作更大的 prediction error。 | author-interpretation | direct | p.243 Introduction; p.246 Sec.4.1; p.248 Summary | false |
| EK79-7 | 对高于阈值较远的 levels，作者强调不应直接使用 MANDY alignment estimate，因为来自更高激发态的 gamma feeding 可能显著，而 gamma feeding 通常比粒子更能保持 alignment；忽略这一点会使 MANDY prediction 偏低。 | method-boundary | direct | p.247 Sec.4.1, paragraph around Fig.5; p.248 Summary | false |
| EK79-8 | 汇编数据支持经验规则 `0 <= alpha4 <= alpha2`。 | observed-fact | direct | p.247 Sec.4.2; Fig.6; p.248 Summary | false |
| EK79-9 | 作者指出简单 Gaussian magnetic-substate population family 过于受限：Fig.6 中多数实验点位于 Gaussian dot-line 与数学边界围成的允许区域内，而不是都沿着 simple Gaussian family 分布；作者因此提出修正分布 `p(m) proportional to exp[-(abs(m)/(beta J))^X]`，其中 `0 < X <= 2`，以覆盖 Gaussian 与更广泛形状。 | author-interpretation | direct | p.247 Sec.4.2, Eq.(5), Fig.6; p.248 Summary | false |

## Nuclear Structure Information

这不是以核结构本身为主的文章。核素层面的内容主要是 `61Ni`、`63Zn`、`64Zn`、`65Zn`、`67Zn` 和 `67Ga` 中被当作 alignment probe 的 pure-`E2` 跃迁汇编。

## Authors' Interpretation

- CNR/MANDY alignment estimate 只有在赋予现实的 uncertainty 时才有分析价值。
- 对高于阈值较远的能级，忽略 gamma feeding 会让 direct-population 风格的 alignment prediction 失真。
- 对这组汇编数据而言，简单 Gaussian magnetic-substate population 假设过于受限。

## Model Results

- MANDY/CNR 通过 transmission probabilities 预测 alignment。
- 预测对部分 outgoing-particle optical-model 参数最敏感，示例中主要是 `r0` 和 `V`。
- 作者用 `0 < X <= 2` 的 modified Gaussian family 来概括 Fig.6 中允许的 `(alpha2, alpha4)` 区域，其中 Gaussian 只是 `X=2` 的特例；多数实验点落在该 family 与数学边界包围的区域中。

## Competing Interpretations and Limitations

- 数据集局限于 `A=61-67` 的近阈值 `(alpha,n)` 与 `(alpha,p)` 反应，不代表所有 fusion-evaporation 条件。
- 本文不是说 Gaussian 思路永远错误，而是说 simple Gaussian family 对这组汇编数据过于受限；Fig.6 的核心是“实验点多数位于更宽的允许区域内”，不是“所有点都在 Gaussian 曲线某一侧”。
- CNR/MANDY alignment estimate 不是后续用户代码里的 `sigma/I` marginalization，也不是直接的 P-ADO 拟合公式。
- gamma-feeding 警告主要针对高于阈值较远、direct-population 假设容易失效的情形。

## Project Relation

对 [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]] 而言，这篇文章是目前最直接的方法层证据之一：它明确说明角分布解释依赖 alignment 信息，模型给出的 alignment prediction 应带有非平凡误差预算，而且误差若给得过小会直接污染 spin/parity 或 `delta` assignment。

边界同样重要：Ekstrom 1979 既不使用用户的 `sigma/I` 记号，也不应被改写成 P-ADO 的直接 prior 文献。它的价值在于加强这样一条证据链：alignment / population 假设是模型相关、feeding 敏感的，不能被当作静默常数。

## Extracted Pages

- Nuclei:
- Bands:
- Concepts: [[spin-alignment]], [[magnetic-substate-population]], [[side-feeding]]
- Methods: [[angular-distribution]]
- Models: [[compound-nucleus-reaction-model]]
- Observables: [[spin-alignment-attenuation-factor]]
- Projects: [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]]

## Human Review Triage

- P0 focus: `EK79-2`, p.243 Introduction. Check that the source really states angular distributions alone are insufficient for spin/parity or mixing-ratio interpretation unless alignment is otherwise constrained or supplemented.
- P0 focus: `EK79-5` / `EK79-6`, pp.246 and 248 Eq.(6). Check the exact uncertainty prescription `max{0.15 alpha_MANDY, 0.04}` and that the risk language about faulty spin/parity or multipole-mixing assignments is preserved conservatively.
- P0 focus: `EK79-9`, p.247 Sec.4.2 + Eq.(5) + Fig.6. Check that the paper says the Gaussian magnetic-substate population assumption is too restrictive, not that all Gaussian-like assumptions are universally invalid.
- Remaining P0: `EK79-7`, p.247 Fig.5 and surrounding text, for the gamma-feeding / above-threshold limitation of direct MANDY use.
- P1: `EK79-4`, pp.245--246, for the distinction between CNR/MANDY alignment estimates and the optical-model sensitivity study.
- P1: `EK79-8`, p.247 Fig.6, for the `0 <= alpha4 <= alpha2` rule and its status as a compiled-data observation.
- P1: `Project Relation`, whole section, to ensure the Wiki does not turn this source into a direct P-ADO `sigma/I` prior.

## Personal Notes

这篇短文的价值在于把三个层面压在一起讲清楚了：角分布解释为什么需要 alignment 约束、模型预测的 alignment 为什么必须带 uncertainty、以及为什么最简单的 Gaussian substate-population 形状不应被默认当作普适安全选择。对当前项目，这比任何单个数值更重要。
