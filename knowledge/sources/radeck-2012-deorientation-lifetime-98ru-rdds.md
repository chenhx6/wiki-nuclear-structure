---
type: source
title: "Simultaneous deorientation and lifetime measurement in 98Ru using RDDS in inverse Coulomb excitation"
aliases: [Radeck 2012 98Ru deorientation lifetime, Radeck 2012 RDDS deorientation, simultaneous deorientation lifetime 98Ru]
created: 2026-07-09
updated: 2026-07-09
status: ai-draft
review_status: human-reviewed
source_type: experiment-method-article
reading_depth: deep-read
title_original: "Simultaneous Deorientation and Lifetime Measurement in 98Ru Using the Recoil Distance Doppler Shift Method in Inverse Coulomb Excitation"
authors: [D. Radeck, V. Werner, G. Ilie, N. Cooper, V. Anagnostatou, T. Ahn, L. Bettermann, R. J. Casperson, R. Chevrier, A. Heinz, J. Jolie, D. McCarthy, M. K. Smith, E. Williams]
journal: Physical Review C
year: 2012
volume: 85
pages: 014301
doi: 10.1103/PhysRevC.85.014301
language: en
canonical_source: doi:10.1103/PhysRevC.85.014301
citation_key: radeck_2012_Simultaneousdeorientation
raw_file: "raw/papers/2012_Radeck et al_Simultaneous deorientation and lifetime measurement in 98 Ru using the recoil distance Doppler shift.pdf"
raw_sha256: 21ED965EB3FD0F57059D2BFE3367ECC39FA6CC2761B1F23EC95875D1A6FE3642
nuclei: [98ru]
observables: [attenuation-coefficient, transition-quadrupole-moment]
methods: [angular-correlation, recoil-distance-doppler-shift, coulomb-excitation]
tags: [deorientation, angular-correlation, attenuation-factor, lifetime, rdds, pado-support]
---

# Radeck et al. (2012): Deorientation and Lifetime Measurement in `98Ru`

## Bibliographic Record

D. Radeck et al., *Physical Review C* **85**, 014301 (2012), DOI `10.1103/PhysRevC.85.014301`. The title, author list, journal, volume, article number, year and DOI match citation key `radeck_2012_Simultaneousdeorientation`.

## Scope and Reading Depth

Full PDF text layer was read for article pages 014301-1--014301-10. Key checks include Secs. II--V, Eqs.1--9, Figs.3--12, Tables I--II, and the Summary. The focus for this Wiki ingest is the deorientation correction and time-dependent attenuation formalism; the `98Ru` structure discussion and IBM comparison were read but only minimally extracted because they are not central to the sigma-over-I project.

This is a `method-ingest + experiment-ingest + project-ingest` source. It is relevant as deorientation and angular-correlation correction background. It must not be overgeneralized into direct fusion-evaporation `σ/I` evidence because the experiment uses inverse Coulomb excitation and RDDS.

## Summary

Radeck et al. measure lifetimes in `98Ru` using inverse Coulomb excitation plus recoil distance Doppler shift (RDDS). In this geometry, the first `2+` state shows a visible deorientation effect caused by hyperfine interactions during recoil. The authors develop a correction based on measured perturbations of distance-dependent particle-γ angular correlations and fit time-dependent attenuation factors `Gk(d)` for shifted and unshifted components.

For the current project, the central methodological lesson is that alignment/deorientation can be a time-dependent experimental response that must be measured or modeled separately from the transition mixing ratio. The paper also clearly separates nuclear alignment terms from detector solid-angle factors.

## Experimental or Method Setup

- Beam and target: `98Ru` beam at `300 MeV` on `24Mg`; inverse Coulomb excitation below the Coulomb barrier.
- Device: New Yale plunger device, target-to-stopper distances `3--450 μm`.
- Detectors: SPEEDY/YRAST Ball HPGe clover setup with six effective angular rings.
- Method: RDDS using shifted and unshifted γ components; particle-γ angular correlations used to determine deorientation correction.
- Context boundary: Coulomb excitation was chosen partly because unobserved side feeding as in fusion-evaporation reactions does not appear in the same way.

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| R12-1 | 本文用 inverse Coulomb excitation + RDDS 测量 `98Ru` 的 `2+_1`、`2+_2`、`4+_1` 寿命，并报告 `B4/2=1.86(16)`，倾向低能激发的 vibrational character。 | observed-fact | direct | Abstract; pp.014301-7--014301-9, Table II, Summary | false |
| R12-2 | 作者说明该 RDDS/inverse-Coulomb-excitation 技术需要 relativistic、efficiency 和 deorientation corrections；本文提出用 experimental angular-correlation perturbation 修正 deorientation。 | method-formalism | direct | Abstract; p.014301-2, Introduction; p.014301-3, Sec.III | false |
| R12-3 | 在 lifetime analysis 语境中，作者指出 Coulomb excitation 通常直接强布居低能态、来自高能级 feeding 常可忽略，因此不同于 fusion-evaporation 中的 unobserved side feeding 问题。 | method-boundary | direct | p.014301-3, Sec.III | false |
| R12-4 | 高 recoil velocity 使 shifted/unshifted γ components 分离，但也要求 Lorentz boost、shifted/unshifted efficiency 和 time/distance-dependent alignment correction；Lorentz solid-angle correction 写在 Eq.1。 | method-formalism | direct | p.014301-3, Sec.III, Eq.1 and Fig.3 | false |
| R12-5 | 作者把 deorientation 描述为 Coulomb excitation 后 nuclear spin 与 electron spin 的 hyperfine interaction 导致 alignment 随时间减弱，从而产生 time-dependent angular distribution。 | method-formalism | direct | pp.014301-3--014301-4, Sec.IV, Fig.4 | false |
| R12-6 | 若没有 deorientation，efficiency 和 solid-angle 修正后的 shifted+unshifted 总强度应与距离无关；Fig.5 对 `2+_1→0+_1` 显示总强度随距离下降，Fig.6 显示 `2+_1` 的角强比有明显距离依赖，而 `4+_1`/`2+_2` 在误差内不明显。 | experimental-criterion | direct | p.014301-4, Figs.5--6 | false |
| R12-7 | 作者使用 `W(θ)=Σ Rk Bk Qk Pk(cosθ)=Σ AkPk(cosθ)`；其中 `Rk` 考虑跃迁的 spin 和 multipolarity，`Bk` 对应 reaction 后 alignment，`Qk` 是 Ge detector finite-solid-angle effect。 | method-formalism | direct | pp.014301-4--014301-5, Sec.IV | false |
| R12-8 | 引入 time-dependent attenuation factor `Gk(t/d)` 后，实验角关联参数相对初始 Coulomb-excitation correlation 的变化给出 `Gk(d)=Ak^exp(d)/Ak^coul(d=0,dΩp)`；unshifted component 用 Eq.5，shifted component 用 decay function average 的 Eq.7。 | method-formalism | direct | pp.014301-5--014301-6, Eqs.2--7, Fig.8 | false |
| R12-9 | simultaneous fits 给出 `Gk(d)` 参数：`α2=0.18(11)`, `Γ2=0.142(31) 1/ps`, `C2=3.3(8) ps`; `α4=0.24(13)`, `Γ4=0.314(110) 1/ps`, `C4=1.5(5) ps`；作者警告 hard-core values 因长距离数据缺失和误差大而不可靠。 | observed-fact | direct | p.014301-7, Table I and text below Fig.8 | false |
| R12-10 | deorientation correction factor 定义为 `α_deor(d,θ)=W^US(d,θ)/W^SH(d,θ)`；校正后 shifted+unshifted 总强度在误差内恢复为常数。 | method-formalism | direct | p.014301-7, Eq.8 and Fig.9 | false |
| R12-11 | 寿命结果为 `τ(2+_1)=8.36(29) ps`、`τ(4+_1)=2.31(16) ps`、`τ(2+_2)=1.7(2) ps`；`2+_2` 和 `4+_1` 的 deorientation correction 在误差内不必要。 | observed-fact | direct | pp.014301-7--014301-8, Figs.10--12, Table II | false |
| R12-12 | 作者总结：当寿命位于 RDDS sensitive region 且与 deorientation time 同量级时，inverse-kinematics 中 simultaneous deorientation and lifetime measurement 有优势，并可用于 radioactive beams 和 relative g-factor studies，但需要合适 calibration / velocity conditions。 | author-interpretation | direct | p.014301-9, Summary | false |

## Nuclear Structure Information

The nuclear-structure result is a refined `98Ru` lifetime and `B4/2` determination. This Wiki currently uses the paper mainly for deorientation and angular-correlation methodology, not for building a `98Ru` structure page.

## Authors' Interpretation

- The deorientation effect must be corrected for the `2+_1` lifetime in this inverse-Coulomb-excitation RDDS experiment.
- Simultaneous deorientation and lifetime measurement is useful when the nuclear lifetime is comparable to the deorientation time scale.
- The method is promising for radioactive beams and relative g-factor measurements, provided calibration and comparable charge-state/velocity conditions are available.

## Competing Interpretations and Limitations

- The source is not a fusion-evaporation side-feeding paper and does not prescribe `σ/I`.
- It uses particle-γ angular correlations and hyperfine-induced time-dependent attenuation, not the same formal object as Draper/Cejnar Gaussian side-feeding width.
- Hard-core attenuation parameters `αk` are stated by the authors to be unreliable in this dataset because long-distance information and precision are limited.

## Project Relation

For [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]], this source adds a modern method example showing that alignment/deorientation corrections can be measured through angular correlations and encoded in `Gk(t/d)`. It also provides a useful symbol boundary: `Qk` is a detector finite-solid-angle factor, `Bk` is alignment, and `Gk` is time-dependent deorientation attenuation. It should be cited as related methodology, not as primary evidence for a universal fusion-evaporation `σ/I` value.

## Extracted Pages

- Concepts: [[deorientation]], [[spin-alignment]]
- Methods: [[angular-correlation]], [[angular-distribution]]
- Observables: [[attenuation-coefficient]], [[angular-distribution-coefficient]]
- Projects: [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]]

## Personal Notes

Review note: R12-3/R12-7/R12-8/R12-10 were user-reviewed on 2026-07-09. Keep R12-3 as the boundary preventing overgeneralization from RDDS/Coulomb excitation to fusion-evaporation P-ADO.
