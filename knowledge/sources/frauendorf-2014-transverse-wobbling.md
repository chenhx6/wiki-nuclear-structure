---
type: source
title: "Transverse wobbling: A collective mode in odd-A triaxial nuclei"
aliases: [Frauendorf and Donau 2014, transverse wobbling QTR]
created: 2026-07-15
updated: 2026-07-16
status: ai-draft
review_status: unreviewed
source_type: theory-article
reading_depth: deep-read
title_original: "Transverse wobbling: A collective mode in odd-A triaxial nuclei"
authors: [S. Frauendorf, F. Donau]
journal: Physical Review C
year: 2014
volume: 89
pages: 014322
doi: 10.1103/PhysRevC.89.014322
arxiv:
language: en
canonical_source: doi:10.1103/PhysRevC.89.014322
zotero_item_key:
citation_key: frauendorf_2014_Transversewobbling
zotero_uri:
library_file:
raw_file: "raw/papers/2014_Frauendorf_Dönau_Transverse wobbling.pdf"
raw_sha256: 36794EE1308ADC1B34206CCDBF62353D6E79B3B485979E78709FD31EFE5F57E3
nuclei: [163lu, 135pr]
reactions: []
experiments: []
models: [quasiparticle-triaxial-rotor-model, harmonic-fluctuation-approximation, particle-rotor-model]
observables: [wobbling-energy, interband-e2-strengths, bm1-be2-ratio, moments-of-inertia]
methods: [frozen-alignment-approximation]
tags: [wobbling, transverse-wobbling, longitudinal-wobbling, qtr, hfa, triaxiality, alignment]
---

# Frauendorf and Donau (2014): Transverse wobbling

## Bibliographic Record

S. Frauendorf and F. Donau, *Physical Review C* **89**, 014322 (2014), DOI `10.1103/PhysRevC.89.014322`. The BibTeX key is uniquely matched as `frauendorf_2014_Transversewobbling`.

## Scientific Question and Motivation

The paper asks why wobbling frequencies in odd-A nuclei can decrease with spin, unlike the increasing frequency of a simple triaxial rotor. It develops a semiclassical interpretation in which a high-j quasiparticle is coupled either parallel or perpendicular to the rotor axis with the largest moment of inertia, and then tests the resulting picture with full quasiparticle-triaxial-rotor (QTR) calculations for `163Lu` and `135Pr`.

## Scope and Reading Depth

Full twelve-page article read. Covered: the rotor Hamiltonian and classical orbits, simple/transverse/longitudinal geometries, frozen-alignment harmonic formulas, E2/M1 matrix elements, QTR parameter sets and potential-energy discussion, the `163Lu` and `135Pr` energy and transition-strength comparisons, and the conclusions. Not covered: reanalysis of the original spectroscopy datasets or later microscopic calculations; the experimental values quoted by this theory paper remain background inputs.

## Summary

The paper develops the transverse/longitudinal QTR geometry and uses harmonic and full calculations for `163Lu` and `135Pr` to connect decreasing wobbling energy and enhanced interband E2 strength with transverse coupling. The quoted spectra are background inputs, not new measurements.

## Method and Design Logic

The authors begin with a rigid triaxial rotor and order the rotational parameters as A1 > A2 > A3, so the 3-axis has the largest moment of inertia. They add a high-j quasiparticle to the rotor Hamiltonian, derive small-amplitude wobbling expressions in the frozen-alignment approximation, and distinguish simple, transverse and longitudinal coupling by the orientation of the particle angular momentum. Full QTR calculations then relax the harmonic approximation and compare band energies, wobbling energies and electromagnetic transition strengths with reported data.

## Key Results

| ID | Claim | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| F14-1 | For the rigid triaxial rotor, the Hamiltonian is written with rotational parameters A1, A2 and A3; the assumed ordering A1 > A2 > A3 corresponds to moments of inertia J1 < J2 < J3 and wobbling about the 3-axis. | method/formalism | direct | PDF pp. 2-3, Eqs. (1)-(6) | true |
| F14-2 | In the simple-rotor limit, wobbling is a small oscillation about the largest-moment-of-inertia axis and its harmonic frequency increases with total angular momentum. | model-result | direct | PDF pp. 1-3, Figs. 1 and 5, Eq. (6) | true |
| F14-3 | A transverse wobbler has the high-j particle angular momentum perpendicular to the rotor axis with the largest moment of inertia, whereas a longitudinal wobbler has it parallel to that axis. | method/formalism / author-interpretation | direct | PDF pp. 3-5, Figs. 6-11 and geometry discussion | true |
| F14-4 | In the frozen-alignment harmonic approximation, transverse coupling changes the angular-momentum dependence of the wobbling frequency so that the frequency decreases with spin over the relevant range; this decreasing trend is a model criterion, not a model-independent observation. | model-result / experimental-criterion | direct | PDF pp. 3-7, Eqs. (15)-(24) and transverse-wobbler discussion | true |
| F14-5 | The same approximation predicts enhanced interband E2 strength relative to the simple-rotor case, while E2/M1 ratios depend on the geometry, triaxiality and particle configuration. | model-result / experimental-criterion | direct | PDF pp. 5-7, electromagnetic-transition equations and discussion | true |
| F14-6 | QTR and harmonic-fluctuation calculations for `163Lu` use aligned i13/2-proton configurations and parameter sets listed by the authors; calculated energies and transition strengths are compared with previously reported TSD bands. | model-result / review-background | direct | PDF pp. 6-9, Table I and Figs. 12-15 | true |
| F14-7 | For `163Lu`, the calculated one- and two-phonon excitation energies follow the reported decreasing wobbling-energy trend qualitatively, but the QTR parameter choice and the full spin dependence remain model dependent. | model-result / limitation | direct | PDF pp. 8-10, Figs. 13 and 15 | true |
| F14-8 | For `135Pr`, the QTR calculation gives a transverse-wobbling-like low-spin branch and a minimum/instability near I = 29/2, associated in the calculation with a change in the orientation of the h11/2 proton angular momentum. | model-result / author-interpretation | direct | PDF pp. 9-11, Figs. 14 and 16 and text on the critical spin | true |
| F14-9 | The paper reports that the calculated `135Pr` B(M1) values are larger than the small measured values, indicating that the frozen-alignment QTR description omits relevant core-quasiparticle or configuration effects. | model-result / limitation | direct | PDF p. 11, Fig. 19 and surrounding discussion | true |
| F14-10 | For `163Lu`, an interband B(E2) ratio near 0.5 +/- 0.15 for the two-phonon-to-one-phonon transition is described as roughly twice the one-phonon scale, while the QTR value is smaller; the comparison supports but does not uniquely prove the phonon assignment. | review-background / model-result / author-interpretation | direct | PDF pp. 10-11, Figs. 17-18 and two-phonon discussion | true |
| F14-11 | The fitted moments of inertia used for the QTR examples do not simply coincide with irrotational-flow or three-dimensional-cranking values; the inferred geometry is therefore conditional on the adopted parameterization. | model-result / limitation | direct | PDF pp. 6-8 and 11-12, Table I and summary discussion | true |
| F14-12 | The authors interpret the decreasing wobbling energy and enhanced interband E2 strength in selected odd-A bands as signatures of transverse wobbling, while retaining the QTR/HFA assumptions and the need for additional observables as qualifications. | author-interpretation | direct | PDF pp. 1, 9-12, Abstract and Conclusions | true |

## Analytical Reconstruction

The paper builds a bridge from angular-momentum geometry to observables in three stages. First, the rotor inertia ordering fixes the classical orbit and the reference axis. Second, a high-j particle changes the energy surface: when its alignment is transverse to the largest-MoI axis, the calculated wobbling frequency can fall with spin, unlike the simple-rotor result. Third, QTR transition matrix elements provide a joint test using excitation energies, interband E2 enhancement and M1 strength. The `163Lu` and `135Pr` comparisons are therefore model-conditioned evidence chains rather than direct measurements of a wobbling phonon or of a particle realignment path.

## Competing Interpretations and Limitations

- Frozen alignment and harmonic small-amplitude formulas are approximations; QTR parameter choices remain model dependent.
- A decreasing energy trend and enhanced E2 are conditional criteria and must be checked against signature-partner, TiP and configuration-mixing alternatives.
- The `135Pr` B(M1) mismatch is an explicit limitation of the simplified calculation.

## Assumptions, Limits and Reverse Tests

- The harmonic formulas use rigid alignment and small oscillations; a full QTR calculation is needed near a separatrix or a reorientation point.
- The fitted moments of inertia, deformation and quasiparticle configuration are not unique experimental observables. A reverse test is to vary them or use microscopic cranking inputs and check whether the energy trend survives.
- Small measured B(M1) values in `135Pr` are not reproduced quantitatively by the simplified calculation. Core-particle coupling, triaxial softness and configuration mixing should be tested before treating the discrepancy as evidence against wobbling.
- Decreasing wobbling energy and strong E2 links are useful criteria only in combination with level assignments, parity/signature information and competing tilted-precession or signature-partner calculations.

## Related Knowledge and Project Relation

- Concepts: [[wobbling-motion]], [[transverse-wobbling]], [[longitudinal-wobbling]], [[triaxial-deformation]], [[angular-momentum-alignment]], [[signature-partner-bands]]
- Models: [[particle-rotor-model]], [[tilted-axis-cranking]], [[triaxial-particle-rotor-model]]
- Observables: [[wobbling-energy]], [[interband-e2-strengths]], [[bm1-be2-ratio]], [[moments-of-inertia]]
- Projects/synthesis: [[low-spin-wobbling-controversies]], [[wobbling-vs-signature-partner]]

This is a theory source. The `163Lu` and `135Pr` spectra and measured transition strengths cited in the comparisons are not new observations from this paper and should remain linked to their original experimental sources.

## Extracted Pages

- Nuclei: `163Lu`, `135Pr` (theory comparison; no new nucleus pages created here)
- Concepts: [[wobbling-motion]], [[transverse-wobbling]], [[longitudinal-wobbling]], [[triaxial-deformation]], [[signature-partner-bands]]
- Models/observables: [[particle-rotor-model]], [[tilted-axis-cranking]], [[wobbling-energy]], [[interband-e2-strengths]], [[bm1-be2-ratio]]
- Projects: [[low-spin-wobbling-controversies]], [[wobbling-vs-signature-partner]]

## Human Review Triage

P0:

1. **F14-1/F14-4, PDF pp. 2-7, Eqs. (1)-(6) and transverse-wobbler formulas.** Verify axis labels, moment-of-inertia ordering and the sign of the spin dependence; these definitions control the transverse/longitudinal terminology used by later source pages.
2. **F14-6/F14-7/F14-10, PDF pp. 6-11, Table I and Figs. 13, 15, 17-18.** Check which values are QTR calculations versus quoted `163Lu` data, including the two-phonon B(E2) comparison.
3. **F14-8/F14-9, PDF pp. 9-11, Figs. 14, 16 and 19.** Verify the `135Pr` critical-spin statement, the orientation language for the h11/2 proton, and the B(M1) discrepancy.

P1:

- F14-3/F14-5: check the geometry diagrams and the exact E2/M1 selection and ratio definitions.
- F14-11/F14-12: check the scope of the fitted-MoI limitation and the strength of the authors' concluding interpretation.

## Review Status

Page and all F14 claims remain unreviewed with `needs_review: true`. Human review is deferred until use: perform targeted claim review when this content is used for paper writing, a key project decision, synthesis finalization or a paper-level evidence pool.
