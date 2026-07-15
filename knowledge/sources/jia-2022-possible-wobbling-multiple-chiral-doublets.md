---
type: source
title: "Possible wobbling motion in multiple chiral doublets"
aliases: [Jia et al. 2022, wobbling in MchiD]
created: 2026-07-15
updated: 2026-07-16
status: ai-draft
review_status: unreviewed
source_type: theory-article
reading_depth: deep-read
title_original: "Possible wobbling motion in multiple chiral doublets"
authors: [H. Jia, S. Y. Wang, B. Qi, C. Liu, L. Zhu]
journal: Physics Letters B
year: 2022
volume: 833
pages: 137303
doi: 10.1016/j.physletb.2022.137303
arxiv:
language: en
canonical_source: doi:10.1016/j.physletb.2022.137303
zotero_item_key:
citation_key: jia_2022_Possiblewobbling
zotero_uri:
library_file:
raw_file: "raw/papers/2022_Jia et al_Possible wobbling motion in multiple chiral doublets.pdf"
raw_sha256: 02579162123510335140D160CABE4883F8C42273CF02EF1E55100242D3449614
nuclei: [a130-odd-odd-model]
reactions: []
experiments: []
models: [particle-rotor-model]
observables: [mixing-ratio, interband-e2-strengths, bm1-be2-ratio, angular-momentum-components]
methods: [azimuthal-angular-momentum-plot]
tags: [multiple-chiral-doublets, chirality, wobbling, particle-rotor, mixing-ratio, odd-odd]
---

# Jia et al. (2022): Possible wobbling motion in multiple chiral doublets

## Bibliographic Record

H. Jia, S. Y. Wang, B. Qi, C. Liu and L. Zhu, *Physics Letters B* **833**, 137303 (2022), DOI `10.1016/j.physletb.2022.137303`. The BibTeX key is uniquely matched as `jia_2022_Possiblewobbling`.

## Scientific Question and Motivation

The paper asks whether an excited pair of multiple chiral doublet (MchiD) bands can carry a wobbling motion of the triaxial core. It uses an ideal odd-odd particle-rotor model with pi h11/2 coupled to a nu h11/2 hole to calculate mixing ratios, E2 fractions, angular-momentum geometry and azimuthal plots. The result is a theoretical proposal, not a new spectroscopy observation.

## Scope and Reading Depth

Full six-page article read. Covered: PRM formalism, mixing-ratio and E2-fraction equations, calculated four-band level scheme and transition tables, angular-momentum components/orientations, azimuthal plots and the comparison with `130Ba` two-quasiparticle wobbling. Not covered: experimental verification of the proposed MchiD linking transitions or a non-ideal configuration survey.

## Summary

An ideal odd-odd PRM calculation predicts nearly pure-M1 intrapair links and more E2-rich interpair links in two MchiD pairs. The paper presents this as a possible future wobbling signature, not as an observation in a named nucleus.

## Method and Design Logic

The PRM treats a triaxial rotor with gamma = 90 degrees and a pi h11/2 times nu h11/2-hole configuration. Reduced E2 and M1 transition probabilities give delta and the E2 fraction delta-squared/(1+delta-squared). Expectations of squared proton, neutron and core components are converted to polar/azimuthal angles, and the total-angular-momentum distribution is plotted on the body-fixed sphere.

## Key Results

| ID | Claim | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| JIA22-1 | In the ideal PRM calculation, bands 1-2 form the lowest chiral doublet and bands 3-4 form an excited MchiD pair for the pi h11/2 times nu h11/2-hole configuration; this is a model level scheme, not an observed band assignment. | model-calculation | direct | PDF pp. 1-2, Fig. 1 and surrounding text | true |
| JIA22-2 | The mixing ratio delta for a Delta-I = 1 M1/E2 transition is defined from E2 and M1 matrix elements, and the calculated E2 fraction is delta-squared/(1+delta-squared). | method/formalism | direct | PDF p. 2, Eqs. (1)-(4) | true |
| JIA22-3 | The calculated intrapair Delta-I = 1 transitions in the lowest and excited chiral doublets have nearly zero E2 fraction and are therefore nearly pure M1 in this ideal model. | model-calculation / experimental-criterion | direct | PDF pp. 2-4, Table 2 and Fig. 2(a)-(b) | true |
| JIA22-4 | The calculated transitions linking the excited doublet to the lowest doublet have an E2 fraction of about 20 percent, mainly for specified even-to-odd and odd-to-even spin sequences, and are interpreted as relatively collective M1/E2 links. | model-calculation / author-interpretation | direct | PDF pp. 2-4, Table 1-2 and Fig. 2(c) | true |
| JIA22-5 | The model predicts that the interpair B(M1)out/B(E2)in and B(E2)out/B(E2)in ratios are of comparable scale to the `130Ba` two-quasiparticle wobbling example, although the E2 ratio is somewhat underestimated. | model-calculation / comparison | direct | PDF p. 4, ratios after Fig. 3 | true |
| JIA22-6 | In the component analysis, the proton, neutron and core angular momenta mainly align with the short, long and intermediate axes, respectively, for both doublet pairs; the excited pair has smaller intermediate-axis and larger short/long core components. | model-calculation | direct | PDF pp. 3-4, Fig. 3 | true |
| JIA22-7 | The calculated core orientation changes its polar angle by roughly 15 degrees between the lowest and excited doublets while retaining an azimuth near 45 degrees; the authors associate this with a one-dimensional wobbling motion of the core. | model-calculation / author-interpretation | direct | PDF pp. 3-4, Fig. 4 and text | true |
| JIA22-8 | At I = 17 hbar, azimuthal plots show maxima near theta about 40/140 degrees for the lowest pair and 60/120 degrees for the excited pair; the authors interpret both as static chirality, with the excited pair additionally carrying core wobbling. | model-calculation / author-interpretation | direct | PDF pp. 4-5, Fig. 5 and summary | true |
| JIA22-9 | The paper proposes that nearly pure intrapair M1 links and relatively E2-rich interpair links could provide a future mixing-ratio criterion for distinguishing chiral-doublet structure and possible wobbling in MchiD. | author-interpretation / future-proposal | direct | PDF pp. 3-6, discussion and Conclusions | true |
| JIA22-10 | The result is conditional on an ideal gamma = 90 degrees configuration, selected effective g factors, fixed MoI and PRM dynamics; it motivates future measurements of mixing ratios rather than establishing wobbling in any named nucleus. | limitation / future-proposal | direct | PDF pp. 1-2 and 5-6 | true |

## Analytical Reconstruction

The proposed evidence chain is: ideal PRM configuration -> calculated M1/E2 matrix elements -> E2-fraction pattern -> core/proton/neutron geometry -> azimuthal topology. The authors use the contrast between nearly pure-M1 intrapair links and E2-admixed interpair links as a possible wobbling fingerprint. Because every step is model-generated, the chain supports an experimental design question rather than a paper-evidence claim about an already observed MchiD nucleus.

## Competing Interpretations and Limitations

- The gamma = 90-degree configuration, fixed MoI and effective g factors are idealized model inputs.
- E2-fraction patterns require experimental mixing-ratio measurements and branch checks before use as a criterion.
- The `130Ba` comparison is not an independent validation of the odd-odd proposal.

## Assumptions, Limits and Reverse Tests

- The gamma = 90-degree ideal triaxial shape, fixed moments of inertia and effective g factors are not generic properties of all odd-odd MchiD systems.
- A reverse test should vary gamma, configuration, pairing and core inertia and check whether the E2-fraction separation survives.
- The comparison to `130Ba` is a scale comparison between calculations/available data, not an independent validation of the proposed odd-odd criterion.
- Mixing ratios from future experiments must be checked for sign, two-solution ambiguities and complete linking-transition coverage before use in the evidence gate.

## Related Knowledge and Project Relation

- Concepts: [[wobbling-motion]], [[nuclear-chirality]], [[multiple-chiral-doublet-bands]], [[triaxial-deformation]], [[chiral-doublet-bands]]
- Models: [[particle-rotor-model]], [[triaxial-particle-rotor-model]]
- Methods/observables: [[multipole-mixing-ratio]], [[interband-e2-strengths]], [[bm1-be2-ratio]], [[spin-coherent-state-map]]
- Projects/synthesis: [[nuclear-chirality-and-multiple-chiral-doublet-bands]], [[low-spin-wobbling-controversies]]

This theory source connects MchiD and wobbling questions, but it does not provide a new experimental source or settle whether any real MchiD bands wobble.

## Extracted Pages

- Model region: A approximately 130 odd-odd PRM (no specific experimental nucleus is claimed)
- Concepts: [[nuclear-chirality]], [[multiple-chiral-doublet-bands]], [[wobbling-motion]], [[chiral-doublet-bands]]
- Models/observables: [[particle-rotor-model]], [[multipole-mixing-ratio]], [[interband-e2-strengths]], [[bm1-be2-ratio]]
- Project: [[nuclear-chirality-and-multiple-chiral-doublet-bands]]

## Human Review Triage

P0:

1. **JIA22-2/JIA22-4, PDF pp. 2-4, Eqs. (1)-(4), Tables 1-2 and Fig. 2.** Verify delta convention, E2-fraction equation, transition directions and the approximately 20 percent interpair E2 statement.
2. **JIA22-6/JIA22-8, PDF pp. 3-5, Figs. 3-5.** Check axis labels, angles and whether static-chirality/wobbling language is explicitly model interpretation.
3. **JIA22-9/JIA22-10, PDF pp. 4-6.** Verify that the proposed criterion is presented as future experimental work and is not promoted to an observed MchiD fact.

P1:

- JIA22-1/JIA22-5: check the model band labels and `130Ba` comparison scope.
- JIA22-3: verify the “nearly pure M1” wording against the plotted E2 fractions.

## Review Status

Page and all JIA22 claims remain unreviewed with `needs_review: true`. Human review is deferred until use: perform targeted claim review when this content is used for paper writing, a key project decision, synthesis finalization or a paper-level evidence pool.
