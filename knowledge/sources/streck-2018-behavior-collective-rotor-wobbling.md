---
type: source
title: "Behavior of the collective rotor in wobbling motion"
aliases: [Streck et al. 2018, collective rotor in wobbling]
created: 2026-07-15
updated: 2026-07-16
status: ai-draft
review_status: unreviewed
source_type: theory-article
reading_depth: deep-read
title_original: "Behavior of the collective rotor in wobbling motion"
authors: [E. Streck, Q. B. Chen, N. Kaiser, U.-G. Meissner]
journal: Physical Review C
year: 2018
volume: 98
pages: 044314
doi: 10.1103/PhysRevC.98.044314
arxiv:
language: en
canonical_source: doi:10.1103/PhysRevC.98.044314
zotero_item_key:
citation_key: streck_2018_Behaviorcollective
zotero_uri:
library_file:
raw_file: "raw/papers/2018_Streck et al_Behavior of the collective rotor in wobbling motion.pdf"
raw_sha256: E6816F64F08AFEBB4E0230EC418A5CCF13E19B30C38E5B6964DCCC7B564A2F9D
nuclei: [135pr]
reactions: []
experiments: []
models: [particle-rotor-model, tilted-axis-cranking]
observables: [wobbling-energy, moments-of-inertia, bm1-be2-ratio, interband-e2-strengths]
methods: [r-representation, k-representation, azimuthal-angular-momentum-plot]
tags: [wobbling, transverse-wobbling, longitudinal-wobbling, signature-partner, particle-rotor, angular-momentum-geometry]
---

# Streck et al. (2018): Behavior of the collective rotor in wobbling motion

## Bibliographic Record

E. Streck, Q. B. Chen, N. Kaiser and U.-G. Meissner, *Physical Review C* **98**, 044314 (2018), DOI `10.1103/PhysRevC.98.044314`. The BibTeX key is uniquely matched as `streck_2018_Behaviorcollective`.

## Scientific Question and Motivation

The paper asks how the collective rotor and the high-j proton share angular momentum in the `135Pr` wobbling bands. It aims to expose the wave-function geometry behind the reported decrease and subsequent increase of the wobbling frequency, and to provide a microscopic PRM distinction between wobbling and a signature-partner band.

## Scope and Reading Depth

Full ten-page article read. Covered: the PRM Hamiltonian, K-to-R basis transformation, azimuthal/R/KR probability distributions, energy and wobbling-frequency calculations with and without pairing, angular-momentum coupling schemes, signature-partner comparison and B(M1) limitation. Not covered: an independent remeasurement of the `135Pr` level scheme or a new experimental polarization analysis.

## Summary

The PRM wave-function transformation makes rotor-angular-momentum distributions visible in `135Pr`. The calculated low-spin transverse and high-spin longitudinal patterns, and the separate signature-partner alignment pattern, are model diagnostics rather than directly measured angular-momentum vectors.

## Method and Design Logic

The particle-rotor model is solved in the strong-coupling K representation and transformed to the R representation, where rotor-angular-momentum probabilities can be summed. The authors use an azimuthal distribution P(theta,phi) for total angular momentum, an R plot for the rotor magnitude, and KR plots for its projections on the long, short and intermediate axes. These distributions are compared across yrast, one-phonon and signature-partner states to reconstruct the coupling geometry.

## Key Results

| ID | Claim | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| ST18-1 | The PRM Hamiltonian separates a collective rotor term from a high-j single-particle intrinsic term; the rotor term is most naturally evaluated in the R representation, while the usual strong-coupling diagonalization uses the K representation. | method/formalism | direct | PDF pp. 2-3, Eqs. (2)-(5) and representation discussion | true |
| ST18-2 | The K-to-R transformation makes the rotor angular momentum explicit and permits probability distributions for R and its principal-axis projections; these are calculated quantities, not direct experimental observables. | method/formalism | direct | PDF pp. 2-4, Eqs. (6)-(22) | true |
| ST18-3 | With a pi(1h11/2) proton, beta = 0.17, gamma = -26 degrees and the adopted MoI, the PRM reproduces the reported `135Pr` yrast/wobbling energies and the decreasing-then-increasing wobbling-frequency trend qualitatively. | model-result / review-background | direct | PDF pp. 4-5, Fig. 1 and numerical details | true |
| ST18-4 | In the calculation, the wobbling frequency decreases for I <= 14.5 hbar and increases at higher spin, consistent with a calculated transverse-to-longitudinal change; the thresholds differ slightly between pairing choices and data. | model-result / author-interpretation | direct | PDF pp. 4-5, Fig. 1 and text below it | true |
| ST18-5 | The calculated proton angular-momentum components remain mainly aligned with the short axis at low spin and trend toward the intermediate axis above about I = 13.5 hbar, while the signature-partner components are qualitatively different. | model-result | direct | PDF pp. 5-6, Fig. 3 and discussion | true |
| ST18-6 | Azimuthal plots show principal-axis rotation about the short axis at low spin, a planar regime at intermediate spin, and a return toward intermediate-axis rotation at high spin; the one-phonon distributions have nodes/symmetry features distinct from the zero-phonon states. | model-result / angular-momentum criterion | direct | PDF pp. 6-7, Fig. 4 and Eq. (25) | true |
| ST18-7 | R and KR plots give different rotor-coupling patterns for the low-spin transverse region and the high-spin longitudinal region, including different changes of the short- and intermediate-axis rotor projections between yrast and wobbling states. | model-result / author-interpretation | direct | PDF pp. 7-9, Figs. 5-10 and coupling-scheme lists | true |
| ST18-8 | The PRM signature-partner state has a distinct single-particle alignment pattern from the yrast and wobbling states, so the authors propose the angular-momentum components as a model diagnostic for distinguishing the two modes. | model-result / experimental-criterion | direct | PDF pp. 5-6 and 8-9, Fig. 3 and Figs. 9-10 | true |
| ST18-9 | Pairing changes the calculated alignment and causes the transverse-wobbling branch to terminate earlier, but does not change the qualitative low-spin/high-spin evolution in the displayed calculation. | model-result / limitation | direct | PDF pp. 4-6, Figs. 1 and 3 | true |
| ST18-10 | Calculated B(M1) values remain larger than the experimental values by factors of roughly 3-10 even after pairing; the authors discuss a missing proton-neutron current (scissors-like) coupling as a possible source of the discrepancy, while energies and interband B(E2) are less affected. | model-result / limitation | direct | PDF p. 9-10, final discussion | true |

## Analytical Reconstruction

The source adds a wave-function-level layer to the energy-based transverse-wobbling argument. Its evidence chain is: PRM parameterization -> transformed wave functions -> azimuthal/R/KR distributions -> inferred rotor-particle coupling scheme. The transition from short-axis principal rotation through a planar region to intermediate-axis rotation is therefore a PRM reconstruction. The signature-partner distinction is also model based: different particle components and rotor projections are proposed as discriminants, not measured alignment vectors.

## Competing Interpretations and Limitations

- The PRM uses fixed deformation and selected moments of inertia; calculated topology is parameter dependent.
- Energy agreement does not validate every probability distribution, and the B(M1) overestimate remains unresolved.
- Signature-partner discrimination from angular-momentum components is a model criterion requiring experimental cross-checks.

## Assumptions, Limits and Reverse Tests

- The PRM uses a fixed triaxial deformation and selected moments of inertia; alternate parameter sets or a microscopic calculation are needed to test robustness.
- The reported energy agreement does not validate every wave-function probability distribution. A reverse test is to compare the same distributions and electromagnetic matrix elements with TAC, TPSM or a configuration-mixed PRM.
- The B(M1) overestimate is an explicit quantitative limitation. It weakens any inference based only on calculated M1 strengths and motivates proton-neutron current coupling beyond this PRM.
- The source does not provide new experimental transition measurements; all quoted `135Pr` data remain linked to the original spectroscopy papers.

## Related Knowledge and Project Relation

- Concepts: [[wobbling-motion]], [[transverse-wobbling]], [[longitudinal-wobbling]], [[signature-partner-bands]], [[angular-momentum-alignment]], [[triaxial-deformation]]
- Models: [[particle-rotor-model]], [[tilted-axis-cranking]], [[triaxial-particle-rotor-model]]
- Methods/observables: [[spin-coherent-state-map]], [[wobbling-energy]], [[interband-e2-strengths]], [[bm1-be2-ratio]], [[moments-of-inertia]]
- Projects/synthesis: [[low-spin-wobbling-controversies]], [[wobbling-vs-signature-partner]]

This is a model-comparison source that supports a detailed angular-momentum interpretation of `135Pr`; it does not replace experimental evidence or settle the low-spin wobbling controversy.

## Extracted Pages

- Nucleus: `135Pr` (PRM comparison; experimental source remains separate)
- Concepts: [[wobbling-motion]], [[transverse-wobbling]], [[longitudinal-wobbling]], [[signature-partner-bands]], [[angular-momentum-alignment]]
- Models/observables: [[particle-rotor-model]], [[tilted-axis-cranking]], [[wobbling-energy]], [[bm1-be2-ratio]]
- Project: [[low-spin-wobbling-controversies]]

## Human Review Triage

P0:

1. **ST18-3/ST18-4, PDF pp. 4-5, Fig. 1.** Verify the spin ranges, pairing labels and whether “evidence” is attributed to the calculated/experimental frequency trend rather than written as a direct wave-function observation.
2. **ST18-5/ST18-8, PDF pp. 5-6, Fig. 3.** Check the short-to-intermediate alignment language and the precise contrast with the signature-partner band.
3. **ST18-6/ST18-7, PDF pp. 6-9, Figs. 4-10.** Verify the azimuthal, R and KR distribution interpretation and the rotor-projection increments used in the two coupling schemes.

P1:

- ST18-1/ST18-2: check the K-to-R transformation terminology and normalization of P(theta,phi).
- ST18-9/ST18-10: verify the quantitative pairing and B(M1) limitation statements.

## Review Status

Page and all ST18 claims remain unreviewed with `needs_review: true`. Human review is deferred until use: perform targeted claim review when this content is used for paper writing, a key project decision, synthesis finalization or a paper-level evidence pool.
