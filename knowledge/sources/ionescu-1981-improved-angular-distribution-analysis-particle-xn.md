---
type: source
title: "Improved Analysis of gamma-Ray Angular Distributions in (Particle, xn) Experiments"
aliases: [Ionescu 1981 improved angular distributions, Ionescu 1981 feeding-aware population model, Ionescu 1981 Gaussian hypothesis test]
created: 2026-07-09
updated: 2026-07-09
status: ai-draft
review_status: human-reviewed
source_type: experiment-method-article
reading_depth: deep-read
title_original: "Improved Analysis of γ-Ray Angular Distributions in (Particle, xn) Experiments"
authors: [V. A. Ionescu, J. Kern, C. Nordmann, S. Olbrich, W. Reichart]
journal: Nuclear Instruments and Methods in Physics Research
year: 1981
volume: 190
number: 1
pages: 19--27
doi: 10.1016/0029-554X(81)90200-7
language: en
canonical_source: doi:10.1016/0029-554X(81)90200-7
citation_key: ionescu_1981_Improvedanalysis
raw_file: "raw/papers/1981_Ionescu et al_Improved analysis of γ-ray angular distributions in (particle, xn) experiments.pdf"
raw_sha256: 233B11888D8143A17B89DA3332AFAC1342803B35024AC2EC7708C7BD51D435F1
nuclei: [167tm]
reactions: ["165Ho(alpha,2n)167Tm"]
observables: [angular-distribution-coefficient, multipole-mixing-ratio]
methods: [angular-distribution]
tags: [angular-distribution, gaussian-hypothesis, direct-feeding, side-feeding, yrast-feeding, pado-support]
---

# Ionescu et al. (1981): Improved Angular-Distribution Analysis in `(particle,xn)` Experiments

## Bibliographic Record

V. A. Ionescu, J. Kern, C. Nordmann, S. Olbrich and W. Reichart, *Nuclear Instruments and Methods in Physics Research* **190**(1), 19--27 (1981), DOI `10.1016/0029-554X(81)90200-7`, citation key `ionescu_1981_Improvedanalysis`.

The raw PDF uniquely matches the title, journal, year and DOI. Local file size is `375432` bytes; local timestamp `2026-07-01 16:35:16`; SHA-256 is recorded above.

## Scope and Reading Depth

The full nine-page paper was read from the PDF text layer. Key checks covered the Introduction on the Gaussian substate-population hypothesis, the experimental measurement and fitting precautions, the general angular-distribution formalism and Gaussian test in Secs.3--4, the improved feeding-aware population model in Eqs.(9)--(11), the pure-E2 and mixed-transition applications in Tables 1--3 and Figs.2--6, and the concluding cautions on side feeding and level-dependent widths.

This is an `experiment-ingest + method-ingest + project-ingest` source. It is a strong example that feeding-aware magnetic-substate population modeling can be necessary for accurate angular-distribution analysis and mixing-ratio determination, but it is not a direct P-ADO paper.

## Summary

The paper reports carefully measured angular distributions for the `165Ho(alpha,2n)167Tm` reaction and uses them to test the commonly assumed Gaussian magnetic-substate population hypothesis. The authors show that the global Gaussian hypothesis is inadequate for their `167Tm` dataset and introduce an improved model in which the population of a level is written as the sum of a Gaussian side-feeding component plus direct feeding through discrete yrast-region gamma transitions.

For the current project, the paper matters because it demonstrates a concrete route from population-model choice to spin and `delta` assignment. Pure-E2 transitions are used first to constrain the population width and the statistical-tensor factors `rho2/rho4`; only then are mixed transitions fitted for multipole mixing ratios. In Sec.5 the fitted `delta` values are also compared with values inferred from branching ratios, and the paper explicitly labels that branching-ratio route as model dependent. The authors treat the full procedure as a way to obtain unambiguous and nuclear-model-independent spin determinations for the studied case.

## Experimental or Theoretical Setup

- Reaction: `165Ho(alpha,2n)167Tm`, chosen because the `167Tm` level scheme had already been studied carefully and because operation below the `(alpha,3n)` threshold minimizes contamination from parasitic channels.
- Two detector setups were used: one intrinsic Ge detector for `50--500 keV` and one `50 cm^3` Ge(Li) detector for `180--600 keV`; measurements covered 7 or 8 angles with detector-target distance `40 cm`.
- Great care was taken with monitor normalization, dead-time correction and peak fitting so that angular-distribution coefficients could be determined with uncertainties at or below the statistical level.
- The analysis focuses on pure-E2 transitions and mixed `M1+E2` transitions in the `1/2+[411]` and `1/2-[541]` rotational bands of `167Tm`.

## Figure and Table Digest

- Fig.2 用 271 keV pure-`E2` transition 展示 Gaussian hypothesis 与改进模型的拟合差异：curve A 体现简单 Gaussian 假设的局限，curve B 展示引入 feeding-aware model 后的改善。
- Fig.3 的横纵轴不是 attenuation factors，而是 `rho2` 与 `rho4`；8 条严格确认的 pure-`E2` transitions 的实验点明显偏离 Gaussian 预言曲线，是本文否定 global Gaussian hypothesis 的关键图。
- Fig.4 对应 Eqs.(9)--(11) 的 feeding-aware population model，把 side-feeding Gaussian 项与离散 direct-feeding 项如何组合成总 population 画成结构图。
- Table 1 汇总 pure-`E2` transitions，用来约束 `rho2/rho4` 与 side-feeding width `sigma`。
- Table 2 汇总 mixed transitions 的 `delta` 拟合结果，体现“先由 pure-`E2` 限定 population model，再拟合 mixed transitions”的两步法；文中还把这些 `delta` 与 branching-ratio 提取值比较，并明确指出后者是 model dependent。
- Table 3 则把最终 adopted spins / assignments 与文献或作者的综合判断并列给出。

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| IO81-1 | 本文在 `165Ho(alpha,2n)167Tm` 反应中测量了 carefully controlled gamma angular distributions，并说明选择该反应的原因是：已有较详细的 `167Tm` 能级纲图，且在 `(alpha,3n)` 阈值以下寄生反应污染很小。 | observed-fact | direct | p.19, Abstract; pp.19--20, Secs.1--2 | false |
| IO81-2 | 角分布写为 `W(theta)=1+A2^exp P2(cos theta)+A4^exp P4(cos theta)`；作者明确指出 `A2^exp` 与 `A4^exp` 由初态 magnetic-substate population、初末态自旋和跃迁多极性共同决定。 | method-formalism | direct | p.19, Eqs.(1)--(2); p.22, Eq.(3) | false |
| IO81-3 | 作者指出 following Diamond et al.，通常假定初态 substate population 服从 Gaussian 分布 `D(m)=exp(-m^2/2 sigma^2)`；对 pure quadrupole transitions，这一假设可被检验，因为同一个 `sigma` 必须同时再现 `A2^exp` 和 `A4^exp`。 | method-formalism | direct | p.19, Introduction; p.22, Eqs.(5)--(6); p.23, first paragraph of Sec.4 | false |
| IO81-4 | 对 `167Tm` pure-E2 transitions 的检验显示，全局 Gaussian substate-population hypothesis 不adequate：以 271 keV 纯 `E2` 线为例，Gaussian 模型既不能清晰识别正确 spin sequence，也给出较差的 `chi^2`；Fig.3 中实验 `rho2/rho4` 点也明显偏离 Gaussian 预言曲线。 | observed-fact | direct | pp.23--24, Fig.2, Fig.3 and surrounding text | false |
| IO81-5 | 改进模型把目标能级的总 population 写成 side-feeding Gaussian 分量 `Ds(m)` 与若干 discrete direct-feeding 分量 `Dj(m)` 的和：`DT(m)=Ds(m)+sum Dj(m)`；对应 statistical tensors 则写成含 side feeding、离散 parent-state feeding、强度分支和 disorientation coefficient `U` 的组合式。 | method-formalism | direct | pp.24--25, Eq.(9), Eq.(10), Eq.(11), Fig.4 | false |
| IO81-6 | 作者明确说明，式(11) 右端求和项实际编码了低能 yrast 区离散 feeding 的整个历史，因此 `sigma` 在此只表征 side-feeding contribution，而不是该能级 total population 的单一全局宽度。 | method-boundary | direct | p.25, text below Eq.(11) | false |
| IO81-7 | 用改进模型重新拟合 271 keV 纯 `E2` 线后，可得到满意的 `chi^2` 并清晰识别正确的 `17/2 -> 13/2` spin sequence；作者据此称可获得 unambiguous、nuclear-model-independent spin determinations。 | author-interpretation | direct | p.23, Fig.2 curves B; p.26, Sec.5; p.27, Conclusion | false |
| IO81-8 | 对 mixed `M1+E2` transitions，作者先用竞争的 pure-E2 transition 限定 `sigma` 的允许范围，再在该范围内最小化 `chi^2` 提取 `delta`；Table 2 中得到的小 `chi^2` 表明实验与计算符合良好，并且所得 `delta` 与 branching-ratio 派生值相容。 | experimental-practice | direct | pp.22--23, end of Sec.3; p.26, Sec.5; Table 2 | false |
| IO81-9 | 结论中作者强调：`167Tm` 中不存在可泛化的单一 `sigma` 规律；某些带中 `sigma` 近似常数，另一些只在 `sigma/J` 上近似稳定，而且取值范围很大，因此给定能级的 population 不能用一个 single Gaussian 描述，因为少数 discrete transitions 可能带来宽度差异很大的 feeding components。 | author-interpretation | direct | p.27, Conclusion | false |
| IO81-10 | 在 `1/2+[411]` rotational band 的 mixed transitions 分析中，作者把 angular-distribution fit 得到的 `delta` 与 branching ratios 推得的对应值作比较，并明确说明 branching-ratio 提取路线是 model dependent；对本文例子，两类结果相容。 | experimental-practice | direct | p.26, Sec.5 paragraph around Table 2 and col.9 note | false |

## Nuclear Structure Information

The nucleus-specific structure content is limited to the `1/2+[411]` and `1/2-[541]` rotational bands of `167Tm`, used here as the testbed for angular-distribution and feeding-model analysis rather than as a standalone `167Tm` structure ingest.

## Authors' Interpretation

- The global Gaussian substate-population hypothesis is inadequate for the `167Tm` case studied.
- A feeding-aware model with Gaussian side feeding plus discrete direct feeding is more realistic.
- With that model, the authors argue that spin determinations from angular distributions can become unambiguous for the studied bands.

## Model Results

- The Gaussian hypothesis produces poor `chi^2` behavior and does not sharply separate competing spin sequences for the example discussed.
- The improved model in Eqs.(9)--(11) produces satisfactory fits for pure-E2 transitions and then supports mixed-transition `delta` extraction.
- The fitted width/orientation parameters vary strongly enough across the studied bands that no single global Gaussian width describes all levels.

## Competing Interpretations and Limitations

- The paper does not show that all Gaussian assumptions are invalid in all `(particle,xn)` reactions; it shows that the global Gaussian hypothesis fails for this `167Tm` case.
- The improved model is still a model, not a universal theorem; the authors present it as a more realistic description for the studied feeding pattern.
- The argument depends on a reaction and nucleus where the yrast-region discrete feeding history can be reconstructed well enough to enter Eq.(11).
- Fig.3 uses `rho2/rho4` statistical-tensor factors rather than Ekstrom-style attenuation factors `alpha2/alpha4`; these notations are related but should not be merged.
- This source should not be rewritten as a direct precursor of modern P-ADO; its relevance is methodological and evidentiary.

## Project Relation

For [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]], this is one of the strongest source-level examples that a population model can materially change angular-distribution interpretation. It shows that pure-E2 transitions can be used to constrain alignment/population width first, that mixed-transition `delta` extraction then depends on that constraint, and that feeding-aware modeling may be required when a single Gaussian description fails.

The boundary is important: Ionescu 1981 does not provide a universal rejection of Gaussian ideas and does not define the user's `sigma/I`. Its value is as a carefully worked case showing that direct gamma feeding and side feeding can require a more detailed population model before one trusts spin or `delta` assignments.

## Extracted Pages

- Nuclei:
- Bands:
- Concepts: [[direct-feeding]], [[magnetic-substate-population]], [[side-feeding]]
- Methods: [[angular-distribution]]
- Projects: [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]]

## Human Review Triage

- P0 focus: `IO81-4`, pp.23--24, Figs.2--3. Check that the paper really concludes the global Gaussian hypothesis is inadequate for this studied case, and that the Wiki keeps the claim case-specific.
- P0 focus: `IO81-5` / `IO81-6`, pp.24--25, Eqs.(9)--(11). Check that the improved model explicitly separates Gaussian side feeding from discrete direct feeding, and that `sigma` is kept as a side-feeding-width parameter rather than a total-population constant.
- P0 focus: `IO81-8`, pp.22--23 and p.26, Table 2. Check the two-step fitting logic: constrain width from pure-E2 transitions first, then fit mixed-transition `delta` within that range.
- P1: `IO81-10`, p.26 around Table 2. Check that the branching-ratio-derived comparison values are explicitly described as model dependent, and that the Wiki does not rewrite them as direct observables.
- Remaining P0: `IO81-7`, p.27 Conclusion and Fig.2 curves B, for the strong wording about unambiguous and nuclear-model-independent spin determination.
- P1: `IO81-2/IO81-3`, pp.19 and 22, for the formal relation between measured `A2/A4`, substate population and the Gaussian test.
- P1: `IO81-1`, pp.19--20, for the reaction choice, detector geometry and dead-time / monitor-control precision.
- P1: `Project Relation`, whole section, to ensure the Wiki uses this source as a feeding-aware population-model example rather than as a universal P-ADO antecedent.

## Personal Notes

This paper is especially useful because it does not stop at saying "the Gaussian hypothesis fails". It shows the next engineering step: use pure-E2 transitions to calibrate the population model, carry discrete feeding explicitly, and only then trust mixed-transition `delta` extraction. That makes it directly relevant to any argument against hard-wiring one fixed `sigma/I`.
