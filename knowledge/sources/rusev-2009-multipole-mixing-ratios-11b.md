---
type: source
title: "Multipole Mixing Ratios of Transitions in B 11"
aliases: [Rusev 2009 B11 mixing ratios, Rusev 2009 polarized-photon asymmetry, 11B multipole mixing ratios]
created: 2026-07-12
updated: 2026-07-12
status: ai-draft
review_status: human-reviewed
source_type: experiment-method-article
reading_depth: read
title_original: "Multipole Mixing Ratios of Transitions in B 11"
authors: [G. Rusev, A. P. Tonchev, R. Schwengner, C. Sun, W. Tornow, Y. K. Wu]
journal: Physical Review C
year: 2009
volume: 79
number: 4
pages: "047601"
doi: 10.1103/PhysRevC.79.047601
language: en
canonical_source: doi:10.1103/PhysRevC.79.047601
citation_key: rusev_2009_Multipolemixing
raw_file: "raw/papers/2009_Rusev et al_Multipole mixing ratios of transitions in B 11.pdf"
raw_sha256: ACF557C95F557A3DE075AE263E2EF3BC9F6B2E3F9E905928445DF20FAD3896F9
nuclei: []
reactions: []
observables: [multipole-mixing-ratio]
methods: [linear-polarization-asymmetry]
tags: [mixing-ratio, polarization, asymmetry, polarized-photon-beam, method-example]
---

# Rusev et al. (2009): Multipole Mixing Ratios in `11B`

## Bibliographic Record

G. Rusev et al., *Physical Review C* **79**(4), 047601 (2009), DOI `10.1103/PhysRevC.79.047601`, citation key `rusev_2009_Multipolemixing`.

The BibTeX key matches uniquely by title, year and DOI. Local file size is `317819` bytes; local timestamp `2025-03-10 15:17:33`; SHA-256 is recorded above.

## Scope and Reading Depth

The full four-page brief report was read from the PDF text layer. Key checks covered the asymmetry definition in Eq.(1), the analyzing-power relation in Eq.(2), the angular-distribution formula in Eq.(3), Table I, and the explicit Fig.4 two-solution discussion.

This is an `experiment-ingest + method-ingest` source. The `11B` nucleus here is mainly a method/calibration case. The Wiki uses this paper as an example of extracting `delta` from polarization-dependent asymmetry alone and of the resulting branch ambiguity.

## Summary

Rusev et al. determine `M1/E2` mixing ratios in `11B` by measuring the azimuthal asymmetry of gamma rays emitted after resonant absorption of nearly monoenergetic, linearly polarized photons. The method compares measured horizontal/vertical asymmetries with the predicted analyzing power for candidate `delta` values.

Its key methodological warning is explicit: the same measured asymmetry can correspond to two different `delta` solutions. The authors choose the smaller-`|delta|` branch on physical-plausibility grounds, not because the asymmetry observable alone uniquely selects it.

## Experimental or Theoretical Setup

- Photon-scattering measurements were carried out at the Duke Free-Electron Laser Laboratory / HIγS using nearly monoenergetic, linearly polarized photon beams.
- The asymmetry uses horizontal and vertical detectors and an efficiency ratio `epsilon_h / epsilon_v` calibrated with `56Co`.
- Finite-opening-angle correction `C(theta)` was obtained from GEANT3 simulations.
- The paper studies several `11B` transitions, including ground-state and branching transitions.

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| RU09-1 | 本文通过 resonant absorption of linearly polarized photons 后发射 gamma rays 的 azimuthal asymmetry 来提取 `11B` 跃迁的 `M1/E2` mixing ratios。 | observed-fact | direct | p.047601-1, Abstract and opening paragraph | false |
| RU09-2 | 实验 asymmetry 定义为水平/垂直平面计数与效率比构成的量 `a`；它再通过 analyzing power 与 `P_gamma`、`W(theta,phi)`、以及 finite-opening-angle correction `C(theta)` 相联系。 | method-formalism | direct | p.047601-2, Eqs.(1)--(2) | false |
| RU09-3 | 作者用 GEANT3 为该装置给出 `C(theta)=0.950` 和 `0.941`，分别对应 `3/2 -> 5/2 -> 3/2` 与 `3/2 -> 3/2 -> 3/2` 两种自旋序列。 | observed-fact | direct | p.047601-2, paragraph below Eq.(2) | false |
| RU09-4 | Table I 报告了若干 ground-state 与 branching transitions 的 measured asymmetries 和 deduced `delta`；其中 `4443.93 keV`、`5019.08 keV` 的结果与文献值相容，而 `8916.39 keV` 在本文不支持先前给出的较大混合解。 | observed-fact | direct | p.047601-3, Table I and paragraph below | false |
| RU09-5 | 文章明确说明，predicted asymmetry 作为 `delta` 的函数会对同一个 measured asymmetry 给出两个 `delta` 解；Fig.4 就把这些双解分支画了出来。 | experimental-criterion | direct | p.047601-3, text above Fig.4; Fig.4 caption | false |
| RU09-6 | 作者没有把 asymmetry 当作可唯一选枝的证据，而是明确按物理可接受性选择较小 `abs(delta)` 的分支：他们写道另一支会对应相对已知数值“异常大”的 `E2` admixture；对 `8.916 MeV` transition 给出的另一解为 `delta=-1.30`，对应约 `63%` 的 `E2` admixture。 | author-interpretation | direct | pp.047601-3--047601-4, paragraph spanning Fig.4 and opening of p.4 | false |
| RU09-7 | 对 branching transitions，作者把 excitation transition 的 `delta_1` 不确定度通过重新计算 `delta_1 ± Delta delta_1` 的 predicted asymmetry 传播到 emission-transition `delta_2`。 | experimental-practice | direct | p.047601-4, first paragraph | false |

## Nuclear Structure Information

The `11B` transitions are treated here as a calibration and method-validation dataset. The current Wiki does not expand this into a dedicated `11B` structure map.

## Authors' Interpretation

- The polarized-photon asymmetry method provides a direct route to `delta` without additional distorted-wave or alignment models.
- The method is considered validated by the isotropic `2.125 MeV` case and the near-pure `E1` `7.283 MeV` case.
- The small-`|delta|` branch is preferred on physical grounds when asymmetry alone leaves two solutions.

## Model Results

- GEANT3 simulations are used only for finite-angle correction and efficiency support.
- The theoretical layer is the analyzing-power calculation for candidate `delta` values in the angular-distribution formalism.

## Competing Interpretations and Limitations

- The paper does not show that asymmetry alone always uniquely fixes `delta`; it explicitly shows the opposite in Fig.4.
- The chosen branch uses physical plausibility and prior knowledge about expected admixtures.
- This asymmetry observable is not the same object as in-beam clover Compton polarimetry, even though both probe polarization dependence.

## Extracted Pages

- Nuclei:
- Bands:
- Concepts:
- Methods: [[linear-polarization-asymmetry]]
- Observables: [[multipole-mixing-ratio]]
- Projects: [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]]

## Personal Notes

This is a very useful counterexample to the idea that "a polarization-like observable automatically resolves `delta`." Here the asymmetry itself is measured cleanly, but the inversion to `delta` still branches, so outside information remains necessary.
