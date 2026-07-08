---
type: source
title: "Gamma-ray angular correlations, distributions and linear polarization in tracking arrays"
aliases: [Lauritsen 2025 tracking-array angular formalism, Lauritsen 2025 gamma-ray tracking angular distributions, gamma-ray angular correlations distributions linear polarization tracking arrays]
created: 2026-07-09
updated: 2026-07-09
status: ai-draft
review_status: human-reviewed
source_type: method-review-article
reading_depth: deep-read
title_original: "gamma-ray angular correlations, distributions and linear polarization in tracking arrays"
authors: [T. Lauritsen, A. Korichi, C. M. Campbell, M. P. Carpenter, P. A. Copp, J. P. Greene, R. V. F. Janssens, T. L. Khoo, F. G. Kondev, C. Mueller-Gatermann, S. Nandi, W. Reviol, G. Savard, M. Siciliano, D. Seweryniak, S. Zhu]
journal: European Physical Journal A
year: 2025
volume: 61
pages: 81
doi: 10.1140/epja/s10050-025-01533-5
language: en
canonical_source: doi:10.1140/epja/s10050-025-01533-5
citation_key: "lauritsen_2025_$$gamma$$ray"
raw_file: "raw/papers/2025_Lauritsen et al_$$gamma $$-ray angular correlations, distributions and linear polarization in tracking arrays.pdf"
raw_sha256: 5EE6A654905BE64113229D6F10567308E3995580906527AF896EB9B92E478AE0
nuclei: [152dy]
reactions: ["108Pd(48Ca,4n)152Dy"]
observables: [angular-distribution-coefficient, attenuation-coefficient, multipole-mixing-ratio, linear-polarization-asymmetry]
methods: [angular-correlation, angular-distribution, dco-ratio, linear-polarization-asymmetry, tracking-array]
tags: [tracking-array, angular-correlation, angular-distribution, linear-polarization, sigma-over-i, pado-support]
---

# Lauritsen et al. (2025): Gamma Angular Formalism in Tracking Arrays

## Bibliographic Record

T. Lauritsen et al., *European Physical Journal A* **61**, 81 (2025), DOI `10.1140/epja/s10050-025-01533-5`. The title, author list, journal, year and DOI match citation key `lauritsen_2025_$$gamma$$ray`.

## Scope and Reading Depth

Full PDF text layer was read for article pages 1--25. Key checks include the Abstract, Introduction, Secs.2--6, Eqs.1--21, Eqs.28--41, Figs.6--10, Figs.21--22, and Appendix B. The focus for this Wiki ingest is the formula chain connecting angular distributions, attenuation/alignment coefficients, Gaussian `Pm(J)` and `sigma/J`, plus the tracking-array response-function and linear-polarization boundary.

This is a `method-review-ingest + project-ingest` source. It is not an experiment-specific validation of the user's P-ADO code, but it provides the modern notation and tracking-array caveats needed for the sigma-over-I project.

## Summary

Lauritsen et al. review and adapt classical gamma-ray angular-correlation, angular-distribution and linear-polarization methods for gamma-ray tracking arrays such as GRETINA and AGATA. Tracking arrays provide continuous-angle information and high position resolution, so detector solid-angle attenuation can often be close to unity, but angular-distribution extraction becomes non-trivial because tracked data have complex energy- and angle-dependent response.

For the current project, the most important section is Sec.3.1: the angular-distribution formula explicitly separates transition-dependent `Ak`, nuclear alignment/deorientation attenuation `alpha_k`, Gaussian magnetic-substate population `Pm(J)`, and the normalized width `sigma/J`. Sec.5 adds that linear-polarization and DCO information can resolve ambiguities left by angular distributions alone.

## Experimental or Method Setup

- Main method scope: source angular correlations, in-beam angular distributions, DCO from oriented nuclei, and linear polarization in tracking arrays.
- Tracking-array boundary: high position resolution makes conventional detector solid-angle attenuation coefficients often close to unity, but incomplete tracking can create energy-dependent halos.
- In-beam example: `108Pd(48Ca[191 MeV],4n)152Dy` with GRETINA, 47 crystals, `v/c=0.027`; used to demonstrate angular-distribution, DCO and linear-polarization extraction.
- Source response data: `152Eu`, `207Bi`, `60Co`, `137Cs`, `88Y`, `243Am`, `226Ra` and `57Co` are used to construct angular-distribution response matrices or test methods.

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| L25-1 | 本文目标是把经典 gamma angular correlations、angular distributions 和 linear polarization 技术统一命名、适配到 tracking arrays，并引入 tracking-array response-function 生成方法。 | author-interpretation | direct | Abstract; p.2, Introduction; p.19, Summary | false |
| L25-2 | tracking arrays 可由 first interaction points 给出高精度 gamma 方向，因此通常的 detector solid-angle attenuation coefficients 可一般设为 unity；但 incomplete decomposition/tracking 可产生轻微 energy-dependent halo。 | method-boundary | direct | p.2, Introduction | false |
| L25-3 | in-beam fusion-evaporation 产生的核通常相对 beam axis aligned；若 `m` 与 `-m` population 相等则是 aligned，若该对称性破缺则为 polarized，若所有 `m` substates 等占据则 unoriented。 | method-formalism | direct | p.2, Introduction | false |
| L25-4 | source angular correlation 公式 `omega(theta)=a0+alpha2 a2 P2(cos theta)+alpha4 a4 P4(cos theta)+...` 适用于 initial state random `m` distribution；`alpha_k` 在这里是 detector solid-angle attenuation，tracking arrays 中接近 unity。 | method-formalism | direct | pp.3--4, Sec.2.1, Eqs.1--5 | false |
| L25-5 | in-beam angular distribution 写为 `omega(theta)=A0+alpha2 A2 P2(cos theta)+alpha4 A4 P4(cos theta)+...`；这里的 `alpha_k` 描述 emitting state 的 actual alignment/deorientation，必须与 detector solid-angle attenuation 区分。 | method-formalism | direct | p.6, Sec.3.1, Eq.6 and following text | false |
| L25-6 | `Ak=alpha_k Amax_k`，而 `Amax_k` 由 spin sequence、multipolarities 和 mixing ratio `delta` 决定；若 `delta` 非零，通常改写为 `A0(1+alpha2 A2 P2+alpha4 A4 P4+...)` 并报告 `A2/A0`、`A4/A0`。 | method-formalism | direct | pp.6--7, Sec.3.1, Eqs.7--17 | false |
| L25-7 | attenuation coefficient `alpha_k(J)` 由 magnetic-substate distribution `Pm(J)` 加权求和；`Pm(J)` 通常取 Gaussian 形式，并以相对 beam axis 的 `sigma/J` 表征，`sigma/J=0` 对应 full alignment。 | method-formalism | direct | p.6, Sec.3.1, Eqs.12--14 | false |
| L25-8 | 作者说明 Gaussian `Pm(J)`/`sigma/J` 对 fusion-evaporation 反应通常适用，但 fragmentation 等反应可能需要显式给出 `Pm(J)`；实际 fusion-evaporation 中粒子蒸发导致 `sigma/J` 非零。 | method-boundary | direct | p.6, Sec.3.1, text around Eqs.13--15 | false |
| L25-9 | 对 rotational band，若假定 transitions 为 stretched E2，可通过寻找能再现实验 `A2` 和 `A4` 的值来确定 `sigma/J`；fast-moving nuclei 还需 Lorentz transformation。 | method-formalism | direct | p.7, Sec.3.1, Eqs.18--19 | false |
| L25-10 | tracking-array in-beam angular distributions 需要构建 absence-of-angular-distribution-effects 的 response function；作者提出用多个 radioactive-source polar-angle spectra 建 response matrix，再与同能量 in-beam spectrum 相除。 | method-formalism | direct | pp.7--8, Sec.3.2, Figs.6--7 | false |
| L25-11 | `152Dy` examples show that response-function extraction still has systematic fluctuations: 991-keV line fit gives `A2=+0.251(2)`, `A4=-0.046(3)`; 781-keV line gives `A2=-0.210(3)`; 432-keV line with `sigma/J=0.3` and `delta=0.7` illustrates mixed character. | observed-fact | direct | pp.8--9, Figs.8--10 | false |
| L25-12 | angular distribution alone cannot decide whether the `152Dy` 432-keV line is mixed `M1/E2`, `E1/M2`, or possibly `E2`; the authors use DCO and linear-polarization measurements to clarify the nature. | experimental-criterion | direct | p.9, Sec.3.2; pp.12 and 18, Figs.14 and 22 | false |
| L25-13 | DCO from oriented nuclei uses a more general formula with an orientation parameter connected to the angular-distribution formalism; for tracking arrays, continuous-angle DCO response cubes and event mixing are used to preserve phase space. | method-formalism | direct | pp.9--12, Sec.4.1, Eqs.20--21, Fig.12 | false |
| L25-14 | 对 fusion-evaporation 的 linear polarization，本文把角分布项扩展为 `Pk(cos theta) -> Pk(cos theta) + (±)_{L'} Kk(LL') cos(2psi) Pk^(2)(cos theta)`；`Kk(LL')` 由 Eq.33 定义，`(±)_{L'}` 类似 `P_+` 的电/磁符号约定，`E(L')` 取正而 `M(L')` 取负。 | method-formalism | direct | pp.13--16, Secs.5.1--5.3, Eqs.31--41 | false |
| L25-15 | In the `152Dy` in-beam example, linear polarization resolves the 432-keV ambiguity: calculations with `sigma/J=0.3` and `delta=0.7` leave only the `E1/M2` mixed solution consistent with the data. | observed-fact | direct | p.18, Sec.5.5, Fig.22 | false |
| L25-16 | Appendix B.1 reports the `152Dy` in-beam dataset: `108Pd(48Ca[191 MeV],4n)152Dy` at ATLAS (experiment 1909), GRETINA with 47 crystals, a `108Pd` target of `0.789 mg/cm2`, a `24 mg/cm2` Pb catcher about 35 cm downstream, recoil `v/c=0.027`, and `1.55e9` good gamma rays with `FOM<0.8`. | observed-fact | direct | Appendix B.1, p.20 | false |

## Nuclear Structure Information

The paper includes real `152Dy` experimental information as well as method demonstrations. This ingest now records a `152Dy` nucleus page and the ATLAS/GRETINA experiment page, while keeping the current structural use limited to the transitions and observables explicitly discussed in this source.

## Authors' Interpretation

- Tracking arrays allow high-precision angular correlations and linear polarization, but angular distributions require careful response-function treatment.
- Modern tracking-array analyses benefit from continuous-angle methods and event-mixing/source-response normalization.
- Linear polarization, DCO and angular distribution should be used together when angular-distribution curvature alone leaves multipolarity or parity ambiguous.

## Competing Interpretations and Limitations

- The paper is a method review/formalism article with examples, not a validation of one universal `sigma/J` or `sigma/I` value.
- `alpha_k` is notation-dependent: in source angular correlations it denotes detector solid-angle attenuation; in in-beam angular distributions it denotes nuclear alignment/deorientation attenuation. This boundary is essential for project symbol mapping.
- Tracking arrays often simplify finite-solid-angle attenuation, but response halos, sparse detector population, clustering holes and source-response construction still create systematic effects.

## Project Relation

For [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]], this source supplies the requested modern formula chain: `delta` enters `Amax_k`; the in-beam angular distribution multiplies transition terms by alignment/deorientation attenuation `alpha_k`; `alpha_k(J)` can be calculated from `Pm(J)`; and `Pm(J)` is commonly parameterized by Gaussian `sigma/J`. It directly supports wording that `sigma/I` or `sigma/J` is a population/alignment assumption and should not be hidden as a universal constant in P-ADO mixing-ratio extraction.

## Extracted Pages

- Concepts: [[sigma-over-i]], [[magnetic-substate-population]], [[spin-alignment]], [[deorientation]]
- Methods: [[angular-distribution]], [[angular-correlation]], [[dco-ratio]], [[linear-polarization-asymmetry]], [[tracking-array]]
- Observables: [[attenuation-coefficient]], [[angular-distribution-coefficient]], [[multipole-mixing-ratio]]
- Nuclei / experiments: [[152dy]], [[atlas-gretina-152dy-ca48-191mev]]
- Projects: [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]]

## Personal Notes

Review note: L25-5 to L25-9 and L25-14/L25-15 were user-reviewed on 2026-07-09. L25-2 and L25-4 remain important context because `alpha_k` changes meaning between detector solid-angle attenuation and nuclear alignment/deorientation attenuation in different sections.
