---
type: source
title: "Energy and projectile dependence of nuclear alignment in fusion-evaporation reactions"
aliases: [Zobel 1983 energy projectile alignment, Zobel 1983 nuclear alignment, projectile dependence of nuclear alignment]
created: 2026-07-08
updated: 2026-07-08
status: ai-draft
review_status: human-reviewed
source_type: experiment-method-article
reading_depth: deep-read
title_original: "Energy and Projectile Dependence of Nuclear Alignment in Fusion-Evaporation Reactions"
authors: [V. Zobel, L. Cleemann, J. Eberth, T. Heck, K. Hüsing, W. Neumann, M. Nolte]
journal: Nuclear Instruments and Methods in Physics Research
year: 1983
volume: 207
pages: 389--394
doi: 10.1016/0167-5087(83)90649-X
language: en
canonical_source: doi:10.1016/0167-5087(83)90649-X
citation_key: zobel_1983_Energyprojectile
raw_file: "raw/papers/1983_Zobel et al_Energy and projectile dependence of nuclear alignment in fusion-evaporation reactions.pdf"
raw_sha256: 60B0D4BC561B44D861E16490EFEC7BEBB8FBF1B8B30A7C7D81621A4057208759
nuclei: [67ga]
reactions: ["64Zn(alpha,p gamma)67Ga", "57Fe(12C,pn gamma)67Ga"]
observables: [attenuation-coefficient, angular-distribution-coefficient]
methods: [angular-distribution]
tags: [nuclear-alignment, projectile-dependence, energy-dependence, direct-feeding, cascade-feeding, pado-support]
---

# Zobel et al. (1983): Energy and Projectile Dependence of Nuclear Alignment

## Bibliographic Record

V. Zobel, L. Cleemann, J. Eberth, T. Heck, K. Hüsing, W. Neumann and M. Nolte, *Nuclear Instruments and Methods in Physics Research* **207**, 389--394 (1983), DOI `10.1016/0167-5087(83)90649-X`. The title, authors, year, DOI and file name uniquely match citation key `zobel_1983_Energyprojectile`.

## Scope and Reading Depth

Full text was read from the PDF text layer for pp.389--394. Key checks include Eqs.1--3, experimental methods for `64Zn(α,pγ)67Ga` and `57Fe(12C,pnγ)67Ga`, Table 1, Figs.1--5, and the conclusion. The table text layer is OCR-noisy in places, so this note does not depend on row-by-row table transcription beyond the broad trends and values stated in the authors' prose.

This is an `experiment-ingest + method-ingest + project-ingest` source. It directly supports the P-ADO project by showing that nuclear alignment attenuation coefficients vary with projectile, incident energy and feeding mechanism, and by warning against combining angular-distribution and linear-polarization data taken under different conditions without consistency checks.

## Summary

Zobel et al. measured nuclear-alignment attenuation coefficients in `67Ga` using four pure E2 transitions populated through `64Zn(α,pγ)67Ga` and `57Fe(12C,pnγ)67Ga` over wide incident-energy ranges. For the heavy-ion `12C` reaction they observe only a slight decrease of alignment with incident energy, while the α-induced reaction shows strong energy dependence due to changing direct/cascade feeding. The authors conclude that Gaussian magnetic-substate population assumptions can be useful when direct feeding or cascade feeding dominates, but mixed direct/cascade feeding and cross-condition measurements require caution.

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| Z83-1 | 作者将 normalized radiation intensity 写成 `W(θ)=1+A2expP2(cosθ)+A4expP4(cosθ)`，并将 experimental coefficients 分解为 alignment attenuation factor `αk` 与 maximum-alignment coefficient `Akmax(Ii,If,δ)`。 | method-formalism | direct | p.389, Eqs.1--2 | false |
| Z83-2 | 作者说明 angular-distribution coefficients depend not only on spins, multipolarities and mixing ratio, but also on the population distribution of the initial level。 | method-formalism | direct | p.389, Introduction | false |
| Z83-3 | 本文实验用 `64Zn(α,p)67Ga` at `Eα=9--22 MeV` 与 `57Fe(12C,pn)67Ga` at `E12C=32--48 MeV`，并分析 `67Ga` 中四条 well-known pure electric quadrupole transitions。 | observed-fact | direct | pp.390--391, Sec.2, Fig.1 | false |
| Z83-4 | 对 `57Fe+12C` heavy-ion reaction，四条 selected E2 transitions 的 attenuation coefficients 随 incident energy 只有 slight decrease；作者将其可能归因于 higher energy 时 statistical feeding cascades 中 multiplicity 增加。 | observed-fact / author-interpretation | direct | p.390, Fig.2 and paragraph below Fig.1 | false |
| Z83-5 | 对 α-induced reaction，alignment 不再近似线性随能量变化；3031.7 keV level 的 direct feeding 从 `Eα=11.3 MeV` 时超过 80% 变到 `Eα=22 MeV` 时低于 10%，并伴随 alignment 的强下降。 | observed-fact | direct | pp.391--392, Fig.3 and text | false |
| Z83-6 | 作者解释 light projectiles 下 direct feeding and cascade feeding 的相对强度变化可导致 strong descent of nuclear alignment with incident energy；intermediate energy region 是两类 feeding final substate populations 的 superposition。 | author-interpretation | direct | p.393, Discussion | false |
| Z83-7 | Heavy-ion `12C` reaction 的 `α2,α4` pairs 与 Gaussian substate-population hypothesis consistent within errors；α-induced reaction 的 points 可粗分为 high-energy lower-alignment group 与 direct-feeding-dominated upper group。 | observed-fact / author-interpretation | direct | pp.393--394, Figs.4--5 | false |
| Z83-8 | 当两个或多个 feeding components contribute and have different variances, their superposition can deviate from a single Gaussian shape; authors specifically mention direct feeding and γ-ray cascade feeding as such a case。 | method-formalism / author-interpretation | direct | p.393, Discussion | false |
| Z83-9 | 作者在结论中警告：angular distribution and linear polarization measurements combined for model-independent spin assignments and mixing ratios should be recorded at the same energy and with the same target, because alignment and effective beam energy conditions matter。 | method-formalism | direct | p.394, Conclusion | false |
| Z83-10 | 作者总结：heavy-ion-induced reactions 中 Gaussian hypothesis seems useful when `αK` consistency is achieved throughout the level scheme；light projectiles are more complicated due to strong alignment variation with incident energy。 | author-interpretation | direct | p.394, Conclusion | false |

## Authors' Interpretation

- Alignment is controlled by projectile, incident energy, angular-momentum transfer and direct-vs-cascade feeding balance.
- Gaussian assumptions are useful in selected regimes, especially when direct feeding or cascade feeding dominates, but should not be adopted by principle when feeding components compete.

## Competing Interpretations and Limitations

- The source gives `67Ga` reaction-specific measurements; it does not define a universal `σ/I` prior for all P-ADO applications.

## Project Relation

For [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]], this source supplies the experimental argument that alignment is reaction-condition dependent. It is the clearest of the three sources for the warning that angular distribution and polarization information used together for `δ` extraction should be taken under consistent beam/projectile/target conditions or explicitly corrected.

## Extracted Pages

- Concepts: [[magnetic-substate-population]], [[spin-alignment]], [[sigma-over-i]]
- Methods: [[angular-distribution]]
- Observables: [[attenuation-coefficient]], [[angular-distribution-coefficient]], [[multipole-mixing-ratio]]
- Projects: [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]]

## Personal Notes

User review on 2026-07-08 found no source-level problems; Z83-5, Z83-8 and Z83-9 are accepted as project-relevant evidence for feeding/projectile/energy dependence.
