---
type: source
title: "On the Graphical Extraction of Multipole Mixing Ratios of Nuclear Transitions"
aliases: [Rezynkina 2017 graphical extraction, Rezynkina 2017 mixing-ratio extraction, graphical ICC mixing-ratio extraction]
created: 2026-07-12
updated: 2026-07-12
status: ai-draft
review_status: human-reviewed
source_type: method-article
reading_depth: read
title_original: "On the Graphical Extraction of Multipole Mixing Ratios of Nuclear Transitions"
authors: [K. Rezynkina, A. Lopez-Martens, K. Hauschild]
journal: Nuclear Instruments and Methods in Physics Research Section A
year: 2017
volume: 844
pages: 96--98
doi: 10.1016/j.nima.2016.11.029
language: en
canonical_source: doi:10.1016/j.nima.2016.11.029
citation_key: rezynkina_2017_graphicalextraction
raw_file: "raw/papers/2017_Rezynkina et al_On the graphical extraction of multipole mixing ratios of nuclear transitions.pdf"
raw_sha256: AF87B4E5CE2FFCCEE5484902B252E8FCD4FD0940EE996B204BF7983FD2A41E72
nuclei: []
reactions: []
observables: [multipole-mixing-ratio, internal-conversion-coefficient]
methods: [internal-conversion-analysis]
tags: [mixing-ratio, internal-conversion, graphical-method, uncertainty-propagation, gamma-spectroscopy]
---

# Rezynkina et al. (2017): Graphical Extraction of Multipole Mixing Ratios

## Bibliographic Record

K. Rezynkina, A. Lopez-Martens and K. Hauschild, *Nuclear Instruments and Methods in Physics Research Section A* **844**, 96--98 (2017), DOI `10.1016/j.nima.2016.11.029`, citation key `rezynkina_2017_graphicalextraction`.

The BibTeX key matches uniquely by title, year and DOI. Local file size is `394118` bytes; local timestamp `2026-03-31 11:06:11`; SHA-256 is recorded above.

## Scope and Reading Depth

The full three-page article was read from the PDF text layer. Key checks covered the introduction on ICC-based `delta` extraction, the probability-density derivation in Sec.2, the graphical construction in Sec.3, and the applicability/limitation discussion in Secs.4--5.

This is a `method-ingest` source. It does not provide a new experimental nuclear-structure result; its value is methodological: how to propagate measured and theoretical internal-conversion-coefficient uncertainties into asymmetric `delta` intervals.

## Summary

The paper proposes a graphical method for extracting multipole mixing ratios from internal-conversion coefficients. Instead of treating the theoretical ICC values as exact and the mixed-transition formula as a simple inversion, the authors propagate the uncertainties of the measured conversion coefficient and of the pure-multipole theoretical coefficients. They derive the full probability density function `P(delta)` and compare it with a simpler graphical construction based on intersections of the measured and theoretical ICC bands.

For the current Wiki, the main lesson is not a new number for one nucleus, but a method boundary: ICC-based `delta` extraction can require asymmetric confidence intervals, and naive inversion of the mixed-transition ICC formula can bias the central value when the experimental ICC uncertainty is large.

## Experimental or Theoretical Setup

- Method input: experimental internal-conversion coefficient `alpha_exp`, plus pure-multipole theoretical coefficients `alpha(sigma L)` and `alpha(sigma' L')`.
- ICCs may be determined either from electron-to-gamma intensity ratios or, when electron measurements are incomplete, from X-ray-to-gamma intensity ratios with fluorescence yields.
- The worked example is a `200 keV` mixed `M2/E3` transition in `251Fm`, using `K`-shell conversion coefficients and BrIcc values as the theoretical input.

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| RZ17-1 | 文章把 mixed-transition `delta` extraction 建立在 internal-conversion coefficients 上，并回顾了 `alpha_tot = I_ICE / I_gamma` 以及 `X-ray / gamma` 替代测量路线。 | method-formalism | direct | p.96, Introduction and Eqs.(1)--(2) | false |
| RZ17-2 | 作者指出 pure-multipole theoretical ICC values 也带有约 `1--2%` 的不确定度，来源于理论计算本身和非 tabulated 数值的插值；这些不确定度应进入 `delta` 误差传播。 | method-formalism | direct | p.97, Sec.2 first paragraph | false |
| RZ17-3 | 对 mixed transitions，`delta` 的概率密度 `P(delta)` 被写成 measured `alpha_exp` 与两条 pure-multipole theoretical ICC PDFs 的卷积，因此一般不是 Gaussian。 | method-formalism | direct | p.97, Sec.2, Eqs.(7)--(15) | false |
| RZ17-4 | 图解法通过 `alpha(delta)` 理论曲线及其上下不确定度带，与 `alpha_exp` 及其置信区间的交点来给出 `delta` 的中心值和非对称误差条。 | method-formalism | direct | p.98, Sec.3, Eq.(17), Fig.2 | false |
| RZ17-5 | 对 `251Fm` 的 `200 keV` `M2/E3` 示例，全文给出 analytical PDF mean `delta_a = 0.92^{+0.42}_{-0.37}`，而 graphical method 得 `delta_g = 0.81^{+0.47}_{-0.36}`。 | observed-fact | direct | p.97, Table 1; p.98, Sec.3 | false |
| RZ17-6 | 作者指出仅用混合 ICC 公式直接反演得到的解，在该 `251Fm` 示例中低估了 `P(delta)` 的均值；当实验 `alpha` 的相对误差超过约 `25%` 时，这种偏差开始明显，`60%` 时可达 `36%`。 | method-boundary | direct | p.98, Sec.4, Fig.3 | false |
| RZ17-7 | 结论段说明：图解法通常给出不小于真实 `68%` 置信区间的区间估计，但在实验 ICC 不确定度很大时，中心值仍可能被低估；若图解法不适用，应回到完整卷积。 | method-boundary | direct | p.98, Secs.4--5 | false |

## Nuclear Structure Information

The nucleus-specific content is only a worked `251Fm` example for method illustration. This source should be cited as an ICC-based mixing-ratio extraction method note, not as primary structure evidence for `251Fm`.

## Authors' Interpretation

- The graphical construction is intended as a simple and illustrative alternative to a heavier analytical/PDF treatment.
- The method is most useful when one wants an asymmetric uncertainty estimate without assuming the final `P(delta)` is Gaussian.
- The authors explicitly treat the graphical interval as conservative rather than exact.

## Model Results

- The paper is methodological and does not contain a separate nuclear-structure model comparison.
- The only computational layer is the PDF construction and the use of theoretical ICC inputs for pure multipoles.

## Competing Interpretations and Limitations

- The method still depends on the quality of the theoretical ICC inputs; it is not a model-free extraction.
- The graphical interval is not the exact PDF interval; it is a practical approximation.
- When the experimental ICC uncertainty is large, the graphical method itself can bias the central `delta` value low.
- This paper should be paired with an ICC theory/database source such as [[kibedi-2008-evaluation-theoretical-conversion-coefficients-bricc]] rather than used alone.

## Extracted Pages

- Nuclei:
- Bands:
- Concepts:
- Methods: [[internal-conversion-analysis]]
- Observables: [[internal-conversion-coefficient]], [[multipole-mixing-ratio]]
- Projects: [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]]

## Personal Notes

This paper is small but high-yield. Its real value is the warning that even after choosing an ICC calculation, `delta` extraction can remain asymmetric and non-Gaussian. That makes it a good complement to BrIcc and to the general "one observable, one answer" simplifications often used in practice.
