---
type: source
title: "In-Beam Angular Distribution and Linear Polarization Measurements with GRETINA Using a Simple Energy-Ordering Approach"
aliases: [Longfellow 2026 GRETINA polarization, GRETINA energy-ordering polarimetry]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: human-reviewed
source_type: in-beam-method-article
reading_depth: deep-read
title_original: "In-Beam Angular Distribution and Linear Polarization Measurements with GRETINA Using a Simple Energy-Ordering Approach"
authors: ["B. Longfellow", "P. C. Bender", "C. Mueller-Gatermann", "D. Seweryniak", "T. Beck", "et al."]
journal: Nuclear Instruments and Methods in Physics Research A
year: 2026
volume: 1082
pages: 170932
doi: 10.1016/j.nima.2025.170932
language: en
canonical_source: doi:10.1016/j.nima.2025.170932
citation_key: longfellow_2026_Inbeamangular
raw_file: "raw/papers/2026_Longfellow et al_In-beam angular distribution and linear polarization measurements with GRETINA using a simple energy.pdf"
raw_sha256: FB3B4F5E4DCE6A436BB569B64AF1914C6B673561374D7867A3D906AEF7090DF1
nuclei: [25mg, 25na, 22ne]
reactions: ["18O + 9Be fusion-evaporation"]
observables: [angular-distribution-coefficient, gamma-ray-linear-polarization, experimental-asymmetry, polarization-sensitivity, multipole-mixing-ratio]
methods: [tracking-array, compton-polarimetry, angular-distribution, linear-polarization-asymmetry, doppler-correction, lorentz-boost-correction]
tags: [gretina, in-beam, energy-ordering, lorentz-boost, aberration, rose-brink, gaussian-alignment]
---

# Longfellow et al. (2026): GRETINA In-Beam Angular Distribution and Polarization

## Bibliographic Record

B. Longfellow et al., *Nuclear Instruments and Methods in Physics Research A* **1082**, 170932 (2026; online 2025), DOI `10.1016/j.nima.2025.170932`, citation key `longfellow_2026_Inbeamangular`.

The title, author list, DOI, volume and article number match the BibTeX record uniquely. The full ten-page PDF was read, including the formalism in Sec.2 and Eqs.(1)-(19), the ATLAS/GRETINA setup, angular-distribution and polarization sections, Tables 1-3, Figs.1-7, the summary and appendix.

## Scope and Reading Depth

This is an `in-beam-method-ingest + tracking-array-ingest + relativistic-correction-ingest` source. It tests GRETINA as a Compton polarimeter in a fusion-evaporation experiment using a pragmatic energy-ordering rule for interaction points. It is a method characterization with known or literature-established transitions, not a universal proof that energy ordering is better than full tracking.

## Summary

Longfellow et al. combine laboratory-frame angular distributions with GRETINA Compton-plane asymmetries in a fusion-evaporation experiment. The formalism keeps transition mixing, Gaussian magnetic-substate alignment, detector sensitivity, Lorentz angle aberration and event-by-event Doppler energy correction as separate terms.

## Experimental Setup

- A 55-MeV `18O` beam on a 1.152 mg/cm2 `9Be` target was used at the ATLAS facility. GRETINA had twelve quad modules (48 36-fold segmented HPGe crystals; 47 used at high voltage), with groups at laboratory angles 90, 122 and 148 degrees. The Fragment Mass Analyzer selected reaction products (p.3, Sec.3, Fig.1).
- The reaction products included `25Mg`, `25Na` and `22Ne`. The paper analyzes stretched electric quadrupole, stretched electric dipole and mixed magnetic-dipole/electric-quadrupole transitions with both Delta-J=0 and Delta-J=1.
- GRETINA was treated as independent crystals with no addback for this analysis. Interaction points were ordered by energy rather than selected with a full tracking figure of merit; the highest-energy point was taken as the first interaction point.

## Key Results

| ID | Claim | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| L26-1 | The paper characterizes GRETINA's angular-distribution and linear-polarization performance in a fusion-evaporation experiment using a simple energy-ordering approach for interaction points. | author-interpretation/method | direct | Abstract; pp.2-3, Secs.1-3 | false |
| L26-2 | In the center-of-mass frame the angular distribution is `W(theta)=sum a_lambda P_lambda(cos theta)` over even lambda (Eq.1). For an in-beam source, the laboratory expression includes a Lorentz transformation and a common forward-compression solid-angle factor `(1-beta^2)/(beta cos(theta_lab)-1)^2` (Eq.2). | method/formalism | direct | p.2, Eqs.(1)-(2) | false |
| L26-3 | The aberration relation used to map the laboratory angle to the center-of-mass angle is `cos(theta)=(cos(theta_lab)-beta)/(1-beta cos(theta_lab))`, with `beta=v/c` for the emitting nucleus. | method/formalism | direct | p.2, text below Eq.(2) | false |
| L26-4 | The coefficients are expanded as `a_lambda=A_lambda B_lambda Q_lambda`: transition geometry and mixing enter `A_lambda`, magnetic-substate population enters statistical tensors `B_lambda`, and finite detector solid-angle attenuation enters `Q_lambda`. Fusion-evaporation populations are modeled as a Gaussian in magnetic-substate `m` with width `sigma` (Eq.6). | method/formalism | direct | pp.2-3, Eqs.(3)-(6) | false |
| L26-5 | The direction-polarization correlation is written in `W_pol(theta,phi)` with associated Legendre polynomials and a parity/higher-multipole sign factor (Eq.7). The paper defines physical polarization as a ratio of `W_pol` at phi=0 and 90 degrees (Eq.9), and gives mixed quadrupole-dipole and pure multipole forms (Eqs.10-13). | method/formalism | direct | pp.2-3, Eqs.(7)-(13) | false |
| L26-6 | In the laboratory-frame polarization ratio, the forward-compression solid-angle factor is common to numerator and denominator and cancels, but the aberration angle transformation remains inside the angular and polarization functions. | method/formalism/boundary | direct | p.3, text immediately after Eq.(13) | false |
| L26-7 | The Compton-scattering cross section is given by Klein-Nishina (Eq.14), with analyzing power Sigma(psi) in Eq.(15). After integrating over the array's theta_lab and Compton-angle coverage, the paper defines average polarization `Pbar`, sensitivity `Q` and the measured asymmetry `A0=1/2 Q Pbar` in `W_C(xi)=N(1-A0 cos(2xi))` (Eqs.16-17). | method/formalism | direct | pp.2-3, Eqs.(14)-(17) | false |
| L26-8 | The Doppler-energy relation `E_gamma=E_gamma,lab (1-beta cos(theta_lab))/sqrt(1-beta^2)` (Eq.18) is applied event by event using the first interaction-point direction. This energy correction is separate from the Lorentz angular aberration in Eq.2, although both use the same beta and event geometry. | method/formalism | direct | p.3, Sec.3 and Eq.(18) | false |
| L26-9 | The in-beam angular distributions are normalized with isotropic 56Co and 152Eu source data and background subtraction. The authors report a Lorentz-boost effect ranging from about 0% to -9% between theta=pi/2 and pi for the velocities in this experiment. | observed-fact/method-boundary | direct | p.3, Sec.4 | false |
| L26-10 | For the polarization analysis, events with at least two interaction points summing to the Doppler-corrected full-energy peak are retained. The first and second points are assigned by energy ordering and define the Compton-scattering plane and xi angle. | method/formalism | direct | pp.5-6, Sec.5 and Fig.3 caption | false |
| L26-11 | Under the present conditions, including events with more than two interaction points increased the 1275-keV `22Ne` statistics by nearly a factor of two and produced higher asymmetry sensitivity than exactly-two-point events; this is a present-setup result, not a universal ranking against full tracking. | observed-fact/method-boundary | direct | p.5, discussion of Fig.3 | false |
| L26-12 | The measured asymmetries for transitions in `25Mg`, `25Na` and `22Ne` are compared with predictions from measured `a2/a4`, array coverage and the energy-dependent GRETINA sensitivity `Q(Egamma)` (Eq.19); signs and magnitudes are reported as mutually consistent within uncertainties. | observed-fact/author-interpretation | direct | pp.6-7, Table 2 and Eq.(19) | false |
| L26-13 | For the 1041-keV `25Na` transition, angular distributions permit mixing-angle solutions near `delta=0` and `delta=-0.85` in the Rose-Brink convention. The predicted polarization asymmetry favors `delta=0` for the adopted alignment and sensitivity, while the paper notes that a different `sigma` or `Q` would change the prediction. | experimental-criterion | direct | p.7, discussion below Table 2 | false |
| L26-14 | The appendix shows that Gaussian width `sigma/Ji` attenuates `a4` more strongly than `a2` (Fig.6). For mixed transitions, the signs of `a2`, `a4` and the polarization component `P0` depend on Delta-J, parity and mixing; the sign of `A0` alone cannot generally identify electric versus magnetic character. | method-boundary/experimental-criterion | direct | pp.7-8, Figs.6-7, Table 3 and Appendix | false |
| L26-15 | In the small-mixing limit, a pure E2 transition and an E1+M2 mixed transition with Delta-J=0 can share the same positive sign of `A0`; therefore angular-distribution signs and polarization-asymmetry signs must be interpreted jointly with multipolarity, mixing and alignment information. | method-boundary | direct | p.8, Appendix and Table 3 | false |
| L26-16 | The summary reports that the measured angular distributions and polarization asymmetries are consistent with the theoretical formalism and known transition assignments, and that simple energy ordering yields useful characterization under the stated experimental conditions. | author-interpretation | direct | p.7, Sec.6 | false |

## Relativistic Correction Boundary

The source supports the following chain without collapsing distinct corrections:

1. The angular distribution is first defined in the center-of-mass frame (Eq.1).
2. The laboratory angular distribution uses the aberration map in L26-3 and the forward-compression solid-angle factor in L26-2.
3. The same common factor appears in the polarization numerator and denominator and cancels in the ratio, but the transformed angle still changes the functions being evaluated (L26-6).
4. Direction-polarization correlation is evaluated with laboratory event directions and Compton-plane geometry through `xi` (L26-5, L26-7 and L26-10).
5. Doppler energy correction is a separate event-by-event transformation (Eq.18), needed to place interaction events in the correct full-energy peak and not a substitute for the angular transformation.
6. The reported 0 to -9% boost effect shows why a small `beta` should not be silently equated with a zero correction in this analysis; the numerical significance remains experiment- and angle-dependent.

## Competing Interpretations and Limitations

- Agreement with known transition assignments validates the method under the stated setup; it does not make energy ordering universally equivalent to full tracking.
- Polarization signs and angular-distribution coefficients remain dependent on Delta-J, parity, mixing ratio, alignment width, response coverage and sign convention.
- The reported boost range is an experiment-specific result and should not be transferred without recalculating the angular acceptance and residue velocity.

## Extracted Pages

- Pages 1-3: angular-distribution/polarization formalism, Rose-Brink mixing, statistical tensors and Lorentz transformation.
- Pages 3-4: ATLAS/GRETINA setup, Doppler-energy equation, source normalization and angular distributions.
- Pages 5-7: energy-ordered Compton events, measured/predicted asymmetries and GRETINA sensitivity.
- Pages 7-8: Gaussian-width and mixing-angle appendix, sign ambiguity and Table 3.

## Related Wiki Pages

- Concepts: [[gamma-ray-linear-polarization]], [[magnetic-substate-population]], [[spin-alignment]]
- Methods: [[tracking-array]], [[compton-polarimetry]], [[angular-distribution]], [[linear-polarization-asymmetry]], [[doppler-correction]], [[lorentz-boost-correction]]
- Observables: [[angular-distribution-coefficient]], [[experimental-asymmetry]], [[polarization-sensitivity]], [[multipole-mixing-ratio]]
- Project: [[gamma-ray-linear-polarization-in-nuclear-spectroscopy]]

## Human Review Triage

P0 review completed: L26-2/L26-3 (Eqs.1-2 and aberration/Jacobian), L26-5/L26-6 (polarization transformation and cancellation of the common factor), L26-7/L26-8 (Q/Pbar/A0 and Doppler-energy distinction), and L26-14/L26-15 (sigma/J and sign ambiguity) were checked as the relativistic and P/A/Q evidence chain for this project.

The user-reviewed source has no remaining claim-level `needs_review: true` items. Formula-level, numerical and sign-sensitive claims were checked against the cited equations, tables, figures and appendix; the separation between Lorentz angular correction, Doppler energy correction and energy ordering remains explicit.

## Project Relation

This source is the in-beam tracking-array and relativistic-correction branch of [[gamma-ray-linear-polarization-in-nuclear-spectroscopy]]. It connects Jones's P/A/Q calibration language and Go's detector-response inference to a GRETINA analysis in which angular aberration, Doppler correction, alignment width, mixing ratio and Compton geometry are explicitly separated.
