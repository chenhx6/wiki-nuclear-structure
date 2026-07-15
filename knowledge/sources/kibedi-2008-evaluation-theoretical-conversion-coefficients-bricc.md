---
type: source
title: "Evaluation of Theoretical Conversion Coefficients Using BrIcc"
aliases: [Kibedi 2008 BrIcc, BrIcc theoretical conversion coefficients, Kibedi 2008 ICC uncertainties]
created: 2026-07-12
updated: 2026-07-15
status: ai-draft
review_status: human-reviewed
source_type: method-review-article
reading_depth: read
title_original: "Evaluation of Theoretical Conversion Coefficients Using BrIcc"
authors: [T. Kibedi, T. W. Burrows, M. B. Trzhaskovskaya, P. M. Davidson, C. W. Nestor]
journal: Nuclear Instruments and Methods in Physics Research Section A
year: 2008
volume: 589
number: 2
pages: 202--229
doi: 10.1016/j.nima.2008.02.051
language: en
canonical_source: doi:10.1016/j.nima.2008.02.051
citation_key: kibedi_2008_Evaluationtheoretical
raw_file: "raw/papers/2008_Kibédi et al_Evaluation of theoretical conversion coefficients using BrIcc.pdf"
raw_sha256: 5A7B25491864ACD4D2FEA7A599136657DA336A03F902009B423C6C450926CC34
nuclei: []
reactions: []
models: []
observables: [internal-conversion-coefficient, multipole-mixing-ratio]
methods: [internal-conversion-analysis]
tags: [internal-conversion, bricc, uncertainty-propagation, mixing-ratio, ensdf]
---

# Kibedi et al. (2008): BrIcc Theoretical Conversion Coefficients

## Bibliographic Record

T. Kibedi et al., *Nuclear Instruments and Methods in Physics Research Section A* **589**(2), 202--229 (2008), DOI `10.1016/j.nima.2008.02.051`, citation key `kibedi_2008_Evaluationtheoretical`.

The BibTeX key matches uniquely by title, year and DOI. Local file size is `1111858` bytes; local timestamp `2025-03-05 09:51:26`; SHA-256 is recorded above.

## Scope and Reading Depth

The full 28-page article was read with targeted focus on the introduction, the ENSDF/ICC formalism in Secs.2--3, the mixing-ratio uncertainty treatment in Sec.3.4, the BrIccFO/BrIccNH discussion in Sec.4.1, and the interpolation/summary sections in Sec.5--6. Appendix tables were skimmed only as reference data tables rather than page-by-page evidence content.

This is a `review-ingest + theory-ingest` source. It should be used as a method/theory/database anchor for internal-conversion coefficients and their uncertainty handling, not as a primary experimental source for any single nucleus.

## Paper Question and Scientific Motivation

**Author-explicit.** The paper asks how accurate theoretical internal-conversion coefficients can be made accessible in an ENSDF-compatible evaluation tool while retaining the uncertainty and atomic-vacancy treatments needed for multipolarity and mixing-ratio work. The motivation is that experimental ICCs are compared with theory to determine transition multipolarities and mixing ratios, while modern calculations had reached percent-level accuracy that experiments could test (p.202, Abstract and Sec.1).

## Method and Design Logic

**Author-explicit.** The design follows the data-evaluation chain rather than a single-nucleus analysis: define the ENSDF transition inputs; give formulae for pure and mixed transitions; propagate theoretical-table, transition-energy and mixing-ratio uncertainties; compare vacancy treatments against compiled experimental ICCs; then package the adopted tables and interpolation rules in BrIcc (pp.202--207, Secs.1--4.1; pp.211--214, Secs.4.3--6).

## Key Evidence and Reasoning Chain

1. Experimental ICC use requires a theoretical coefficient for a specified `Z`, energy, shell and multipolarity (pp.202--203, Secs.1--3).
2. Mixed-transition ICCs depend on pure components and `delta^2`, so the coefficient cannot determine the sign of `delta` (p.203, Eqs.(1)--(5)).
3. The final uncertainty depends separately on the theoretical table, transition energy and mixing-ratio distribution; zero-crossing or limited `delta` cases are not captured by a single symmetric Gaussian error (pp.203--205, Secs.3.2--3.4, Fig.1).
4. Comparison with compiled experimental coefficients supports the Frozen-Orbitals vacancy treatment as the adopted default, while interpolation and nonunique multipolarity labels impose additional operational boundaries (pp.206--213, Secs.4.1--5.1).
5. Therefore BrIcc is useful as a controlled theory/database input to an ICC analysis, not as independent experimental evidence for a particular nuclear assignment (p.214, Summary; source boundary above).

## Analytical Reconstruction

The table separates source-grounded locators from Agent reconstruction. User review on 2026-07-15 accepted all rows without changing the existing source claims.

| ID | 审核项 | Agent 判断 | Evidence / locator | 审核状态 |
|---|---|---|---|---|
| AR-KB08-1 | Core reconstruction | Treat ICC inference as a forward-model problem: declare candidate multipolarities and the adopted atomic calculation, propagate all input uncertainties through `alpha(delta)`, and only then invert or compare with experiment. This is an Agent reconstruction, not a sentence quoted from the authors. | Eqs.(1)--(5), Secs.3.2--3.4; vacancy and interpolation tests in Secs.4.1 and 5.1 | human-reviewed |
| AR-KB08-2 | Transfer conditions | Transfer is justified only when transition energy, `Z`, shell/total coefficient convention, candidate multipolarities, `delta` convention and uncertainty model are explicit and the selected BrIcc table covers the case. | pp.203--205, Secs.3--3.4; pp.206--213, Secs.4.1 and 5.1 | human-reviewed |
| AR-KB08-3 | Failure conditions | Do not transfer silently for nonunique multipolarity input, an unmodelled third component/E0 admixture, direct interpolation of nonmonotonic total ICC, or a `delta` distribution crossing zero without adequate likelihood treatment. | p.203, Sec.2; pp.204--205, Sec.3.4 and Fig.1; p.211, Sec.4.3 | human-reviewed |
| AR-KB08-4 | Reverse/falsification test | Compare an inferred `delta` against independent angular-distribution/polarization constraints or repeat the forward calculation with the relevant vacancy/table choice; disagreement can localize whether the conflict is experimental, atomic-model or multipolarity-input dependent. | Forward relations in p.203, Eqs.(1)--(5); vacancy comparison in pp.206--207, Sec.4.1.1 | human-reviewed |
| AR-KB08-5 | Research-question decision | Not created: the reviewed reconstruction did not produce an independent research question beyond the stated ICC inference and reverse-test boundaries; no question is added merely to fill the framework. | Assessment of the complete reconstruction above; no additional source claim | human-reviewed |
| AR-KB08-6 | Persistence/shared-page decision | No research note or project/synthesis update. The transferable content is source-grounded and already owned by [[internal-conversion-analysis]]; no new cross-source hypothesis or evidence-state change would be lost. | Existing source claims KB08-1--8 and linked method ownership | human-reviewed |

## Summary

Kibedi et al. present BrIcc, a database and software layer for theoretical internal-conversion coefficients (ICC), electron-positron pair conversion coefficients, and `E0` electronic factors. The paper formalizes how mixed-multipolarity ICCs are calculated from pure components, how ENSDF-style uncertainties in transition energy and mixing ratio propagate into the quoted ICC uncertainty, and why the treatment of atomic vacancies matters for theoretical accuracy.

For the current Wiki, its two most reusable contributions are: the mixed-transition relation `alpha = (alpha_1 + delta^2 alpha_2)/(1+delta^2)` with explicit uncertainty propagation rules, and the database-level boundary that interpolation, vacancy treatment, and nonunique multipolarity labels can affect whether an ICC-based `delta` extraction is trustworthy.

## Experimental or Theoretical Setup

- BrIcc is designed as an ENSDF-compatible evaluation tool, not as one nucleus one experiment paper.
- Inputs include atomic number `Z`, transition energy, multipolarity field, mixing ratio `delta` and their uncertainties/limits.
- Data sources include BrIccFO/BrIccNH ICC tables, pair-conversion tables, and `E0` electronic-factor tables.
- The paper compares alternative vacancy treatments using a large compiled experimental ICC set.

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| KB08-1 | BrIcc 被设计为 internal-conversion / pair-conversion / `E0` electronic-factor database 与软件工具，其 mixed-transition、mixing-ratio 与 uncertainty 处理遵循 ENSDF 规则。 | method-formalism | direct | p.202, Abstract; pp.202--203, Secs.1--2 | false |
| KB08-2 | 对 mixed `(pi L + pi' L')` transitions，ICC 使用 `alpha = [alpha(pi L) + delta^2 alpha(pi' L')] / (1 + delta^2)`；conversion coefficient 对 `delta` 的符号不敏感，只依赖 `delta^2`。 | method-formalism | direct | p.203, Sec.3, Eqs.(1)--(5) | false |
| KB08-3 | BrIcc 把 ICC 不确定度拆成理论表本身、跃迁能量和 mixing ratio 三部分；Sec.3.4 还给出了 symmetric/asymmetric `delta`、上下限 `delta` 以及特殊 multipolarity 情况的传播规则。 | method-formalism | direct | pp.204--205, Secs.3.4--3.5, Eqs.(17)--(22) | false |
| KB08-4 | 当 `delta` 及其不确定度跨过零时，由 ICC 反映出的有效 `P(delta)` 不再能简单表述为带非对称误差的 normal distribution；作者明确说一般化统一处理仍需后续工作。 | method-boundary | direct | p.205, Sec.3.4.3, Fig.1 | false |
| KB08-5 | 重新分析实验 ICC 数据后，作者认为考虑 atomic vacancy 的模型更受支持；NSDD 在 2005 年采用了 `Frozen Orbitals` 近似作为默认 BrIcc 表，而不是继续使用 `No Hole` 近似。 | author-interpretation | direct | pp.206--207, Sec.4.1.1 | false |
| KB08-6 | BrIccFO/BrIccNH 的默认理论表覆盖 `Z=5--110`、`1--6000 keV`、所有壳层，并采用 `1.4%` 的理论表精度；作者还给出 BrIccFO/BrIccNH 插值精度约 `0.3%` 的上限。 | observed-fact | direct | p.206, Table 2; pp.212--213, Sec.5.1; p.214, Summary | false |
| KB08-7 | 文章明确提醒 total ICC `alpha_T` 不是 transition energy 的单调函数，因此一般不推荐对已 tabulated 的 `alpha_T` 直接做插值。 | method-boundary | direct | p.211, Sec.4.3 opening paragraph | false |
| KB08-8 | 若 multipolarity 只给出非唯一标签如 `D/Q/O` 等，BrIcc 不计算 conversion coefficient；若没有给出 `delta` 而 multipolarity 仍有效但不唯一，则会按特定规则给出平均化处理。 | method-boundary | direct | p.203, Sec.2; p.205, Sec.3.4.3 | false |

## Nuclear Structure Information

This source is not a nucleus-specific structure paper. The many listed nuclei or transitions are database, interpolation, or validation examples only.

## Authors' Interpretation

- BrIcc is presented as a practical evaluation tool for nuclear-structure work and data sheets.
- The authors argue that uncertainty propagation in `delta` and transition energy should be part of routine ICC evaluation rather than ignored.
- Their preferred default is BrIccFO, not because BrIccNH is unusable, but because FO gave the more consistent agreement pattern in the reevaluated experimental set.

## Model Results

- The paper compares vacancy treatments (`No Hole`, `Self-Consistent`, `Frozen Orbitals`) against an experimental ICC database.
- It quantifies adopted average experiment-theory differences and reduced chi-squared values for those approximations.
- It characterizes interpolation accuracy and the table coverage needed for a database implementation.

## Competing Interpretations and Limitations

- This paper is a theory/database review; it does not by itself validate ICC extraction in every modern experiment.
- The source explicitly leaves some special uncertainty cases and three-component multipolarities for future work.
- BrIcc values still depend on the adopted atomic-vacancy treatment and on the integrity of the multipolarity/mixing-ratio inputs.
- It should not be used to rewrite model-calculated ICCs as experimental observables.

## Extracted Pages

- Nuclei:
- Bands:
- Concepts:
- Methods: [[internal-conversion-analysis]]
- Observables: [[internal-conversion-coefficient]], [[multipole-mixing-ratio]]
- Projects: [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]]

## Personal Notes

Navigation only: use this source with [[rezynkina-2017-graphical-extraction-multipole-mixing-ratios]] and [[internal-conversion-analysis]] for future ICC/mixing-ratio work. Scientific reconstruction is owned by the table above; no additional provisional reasoning is stored here.
