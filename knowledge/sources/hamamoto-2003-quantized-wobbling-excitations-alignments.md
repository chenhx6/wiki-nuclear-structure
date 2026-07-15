---
type: source
title: "Quantized wobbling excitations with alignments"
aliases: [Hamamoto and Hagemann 2003, quantized wobbling with alignment]
created: 2026-07-15
updated: 2026-07-16
status: ai-draft
review_status: unreviewed
source_type: theory-article
reading_depth: deep-read
title_original: "Quantized Wobbling Excitations with Alignments"
authors: [Ikuko Hamamoto, Gudrun B. Hagemann]
journal: Physical Review C
year: 2003
volume: 67
pages: 014319
doi: 10.1103/PhysRevC.67.014319
arxiv:
language: en
canonical_source: doi:10.1103/PhysRevC.67.014319
zotero_item_key:
citation_key: hamamoto_2003_Quantizedwobbling
zotero_uri:
library_file:
raw_file: "raw/papers/2003_Hamamoto_Hagemann_Quantized wobbling excitations with alignments.pdf"
raw_sha256: 47E9858D2CD772B8383179A14FC8DF196F93E08F557E8FDB856A98EF5E1170B9
nuclei: [163lu]
reactions: []
experiments: []
models: [particle-rotor-model, bohr-mottelson-wobbling-model]
observables: [wobbling-energy, interband-e2-strengths, moments-of-inertia, triaxiality]
methods: []
tags: [wobbling, quantized-wobbling, alignment, 163lu, two-phonon, triaxiality]
---

# Hamamoto and Hagemann (2003): Quantized wobbling with alignment

## Bibliographic Record

Ikuko Hamamoto and Gudrun B. Hagemann, *Physical Review C* **67**, 014319 (2003), DOI `10.1103/PhysRevC.67.014319`. The BibTeX key is uniquely matched as `hamamoto_2003_Quantizedwobbling`.

## Scientific Question and Motivation

The paper asks how intrinsic high-(j) alignment changes the quantized wobbling spectrum and its electromagnetic fingerprints. It uses the TSD bands of `163Lu` as the motivating case, where TSD2 had been interpreted as one-phonon wobbling and TSD3 as a possible two-phonon band.

## Scope and Reading Depth

Full eight-page article read. Covered: introduction, aligned particle-rotor Hamiltonian, limiting formulas (Eqs. 1-14), numerical spectra and B(E2) ratios (Figs. 1-4), parameter dependence and anharmonicity discussion, and conclusions. Not covered: independent remeasurement of the `163Lu` transitions or later microscopic calculations; cited experimental inputs are retained as background to this theory source.

## Summary

The paper derives an alignment-dependent quantized wobbling spectrum and tests B(E2) scaling and anharmonicity against previously reported `163Lu` bands. It is a theory/background source rather than a new experimental measurement.

## Method and Design Logic

The authors start from the Bohr-Mottelson wobbling Hamiltonian and add a highly aligned quasiparticle to the particle-rotor coupling. Alignment makes the condition that the total angular momentum lie close to the largest-moment-of-inertia axis easier to satisfy at lower spin. They derive a wobbling-energy expression containing both the inertial-frequency term and an alignment-dependent term, then diagonalize a simplified particle-rotor Hamiltonian for `i13/2` proton configurations and compare calculated energies and B(E2) ratios with reported `163Lu` TSD data.

## Key Results

| ID | Claim | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| H03-1 | In the aligned particle-rotor Hamiltonian, a large component of the intrinsic particle angular momentum along the principal rotation axis lowers the rotational cost of maintaining (I_1\approx I) and allows a wobbling-like regime to occur at lower angular momentum than in the no-alignment textbook limit. | model-result / author-interpretation | direct | PDF pp. 1-2, Eqs. (6)-(11) and surrounding text | true |
| H03-2 | The derived wobbling excitation energy contains an inertial-frequency contribution and an alignment-dependent contribution; with constant (A_k), the phonon spacing can be written as a positive intercept plus a term proportional to (I), and larger alignment changes the spacing quantitatively. | model-result | direct | PDF pp. 2-3, Eqs. (9)-(13) | true |
| H03-3 | For the limiting (A_1<A_2=A_3) case, the B(E2) ratio between an interband ΔI=1 transition and an in-band ΔI=2 transition depends steeply on the triaxiality parameter γ, especially for γ above roughly +20 degrees, and is relatively insensitive to the absolute moments of inertia. | model-result / experimental-criterion | direct | PDF pp. 2-3, Eq. (14) and text below it | true |
| H03-4 | The `163Lu` interpretation assigns TSD1 to the yrast band, TSD2 to the one-phonon wobbling band and TSD3 to a candidate two-phonon band; this is an author/model interpretation based on similar alignments and moments of inertia together with interband B(E2) evidence, not a new observation by this theory paper. | author-interpretation / review-background | direct | PDF pp. 1, 3-4, introduction and Fig. 1 discussion | true |
| H03-5 | The calculated TSD-like spectra with γ near +20 degrees and aligned `i13/2` proton reproduce the qualitative decrease of the TSD2-TSD1 energy distance and a low-lying f2 band, while the absolute band spacings remain sensitive to the chosen (A_k) and alignment parameters. | model-result | direct | PDF pp. 3-5, Fig. 1 and numerical-results section | true |
| H03-6 | Calculated B(E2) ratios for TSD2 to TSD1 and TSD3 to TSD2 are compared with the reported `163Lu` ratios; the paper uses their magnitude and γ dependence as a practical wobbling diagnostic rather than treating a single ratio as a model-independent proof. | model-result / experimental-criterion | direct | PDF pp. 4-5, Figs. 2-3 and captions | true |
| H03-7 | The observed TSD3-to-TSD2 B(E2) value is described as large and close to the scale expected from a two-phonon boson factor, but the calculated two-phonon transition strengths need not be exactly (2\) times the one-phonon strengths; anharmonicity and configuration mixing are explicitly retained as limitations. | review-background / model-result / limitation | direct | PDF pp. 1, 4-6, Fig. 3 and discussion of anharmonicity | true |
| H03-8 | The model predicts that the energy distance between the two-phonon and one-phonon bands can be smaller than the one-phonon-to-yrast distance, but it does not reproduce the full observed spin dependence; small changes of moments of inertia with spin can strongly alter the wobbling energy. | model-result / limitation | direct | PDF pp. 5-7, Eq. (15), Fig. 1 and discussion before Conclusions | true |
| H03-9 | The authors infer that the triaxiality of the strongly deformed `163Lu` bands is near +20 degrees and may increase slightly with spin, using the B(E2)-ratio comparison; this is a model-conditioned inference, not a direct shape measurement. | author-interpretation | direct | PDF pp. 5-8, Figs. 2-4 and Conclusions | true |
| H03-10 | The simple calculation assumes (A_k) independent of spin even though pairing, deformation and other rotational effects should change them; this prevents a quantitatively complete account of the observed anharmonicity and energy evolution. | limitation / author-interpretation | direct | PDF pp. 3, 5-8, numerical-results discussion and Conclusions | true |

## Analytical Reconstruction

The paper turns alignment into a quantitative bridge between high-(j) structure and low-spin wobbling: alignment shifts the energy cost for rotation about the favored axis, while γ controls the interband E2 ratio. The evidence chain for `163Lu` therefore has three layers: reported band energies/transition strengths (reviewed background), particle-rotor calculations, and the authors' assignment of TSD1/TSD2/TSD3. The model does not by itself establish that the bands are harmonic phonons, because the same calculation shows anharmonic energy and transition-strength behavior.

## Competing Interpretations and Limitations

- The TSD1/TSD2/TSD3 phonon labels are inherited author/model assignments from the cited spectroscopy literature.
- Fixed rotational parameters and simplified pairing/deformation treatment limit quantitative use of the calculated energies and transition strengths.
- A full particle-rotor or microscopic calculation is a required reverse test for phonon-number scaling.

## Assumptions, Limits and Reverse Tests

- (A_k), pairing and deformation are simplified and effectively fixed over the calculated spin interval; a spin-dependent calculation is a required reverse test.
- B(E2) ratios depend on γ and transition selection; they should be combined with level identity, moments of inertia, alignments and, where available, lifetimes.
- The `163Lu` experimental comparisons are cited inputs, not independently remeasured here; do not use this source as an original experimental source.
- A reverse test is to compare the same energies and B(E2) ratios with a full particle-rotor/TiP calculation and with a cranking/signature-partner alternative, while checking whether phonon-number scaling survives.

## Related Knowledge and Project Relation

- Concepts: [[wobbling-motion]], [[transverse-wobbling]], [[triaxial-deformation]], [[signature-partner-bands]], [[angular-momentum-alignment]]
- Models: [[particle-rotor-model]], [[triaxial-rotor-model]], [[tilted-axis-cranking]]
- Observables: [[wobbling-energy]], [[interband-e2-strengths]], [[moments-of-inertia]], [[bm1-be2-ratio]]
- Projects/synthesis: [[low-spin-wobbling-controversies]], [[wobbling-vs-signature-partner]]

This is a theory/background source that sharpens the alignment-dependent phonon-energy and B(E2)-ratio criteria used in later wobbling claims. It does not replace the original `163Lu` spectroscopy papers and does not directly test `135Pr`, `187Au` or `131Xe`.

## Extracted Pages

- Nucleus: `163Lu` (cited experimental context)
- Concepts: [[wobbling-motion]], [[transverse-wobbling]], [[triaxial-deformation]], [[angular-momentum-alignment]]
- Models/observables: [[particle-rotor-model]], [[wobbling-energy]], [[interband-e2-strengths]]
- Project: [[low-spin-wobbling-controversies]]

## Human Review Triage

P0:

1. **H03-1/H03-2, PDF pp. 1-3, Eqs. (6)-(13).** Verify the alignment term and the stated dependence of wobbling energy on (A_k), (I) and (j_1). This controls how later discussions of increasing/decreasing wobbling energy should be phrased.
2. **H03-3/H03-6, PDF pp. 2-5, Eq. (14), Figs. 2-3.** Check the γ dependence and the precise numerator/denominator of each B(E2) ratio; a swapped ratio would reverse the inferred triaxiality trend.
3. **H03-4/H03-7/H03-8, PDF pp. 1 and 4-7, Figs. 1 and 3.** Verify the TSD1/TSD2/TSD3 interpretation, the two-phonon comparison, and the limits from anharmonicity and energy-spacing evolution.

P1:

- H03-5/H03-9: verify which conclusions are parameter-fitted model results and which are author inference about `163Lu` triaxiality.
- H03-10: verify the constant-(A_k) and spin-dependent pairing/deformation caveat.

## Review Status

Page and all H03 claims remain unreviewed with `needs_review: true`. Human review is deferred until use: perform targeted claim review when this content is used for paper writing, a key project decision, synthesis finalization or a paper-level evidence pool.
