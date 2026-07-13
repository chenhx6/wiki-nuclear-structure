---
type: source
title: "Demonstration of Nuclear Gamma-Ray Polarimetry Based on a Multi-Layer CdTe Compton Camera"
aliases: [Go 2024 CdTe Compton camera polarimetry, multi-layer CdTe nuclear gamma-ray polarimeter]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: human-reviewed
source_type: detector-method-experiment-article
reading_depth: deep-read
title_original: "Demonstration of Nuclear Gamma-Ray Polarimetry Based on a Multi-Layer CdTe Compton Camera"
authors: ["S. Go", "Y. Tsuzuki", "H. Yoneda", "Y. Ichikawa", "T. Ikeda", "et al."]
journal: Scientific Reports
year: 2024
volume: 14
number: 1
pages: 2573
doi: 10.1038/s41598-024-52692-2
language: en
canonical_source: doi:10.1038/s41598-024-52692-2
citation_key: go_2024_Demonstrationnuclear
raw_file: "raw/papers/2024_Go et al_Demonstration of nuclear gamma-ray polarimetry based on a multi-layer CdTe Compton camera.pdf"
raw_sha256: CB16B9B16E4932385CE027BF4AF56CAC72025FDD89F3ADC90384A9E48C0C78EA
nuclei: [56fe]
reactions: ["56Fe(p,p'gamma)"]
observables: [gamma-ray-linear-polarization, experimental-asymmetry, polarization-sensitivity, modulation-factor, detection-efficiency]
methods: [compton-polarimetry, modulation-curve, maximum-likelihood, detector-response-simulation]
tags: [cdte, compton-camera, nuclear-gamma-ray-polarimetry, klein-nishina, geant4]
---

# Go et al. (2024): Multi-Layer CdTe Compton-Camera Polarimetry

## Bibliographic Record

S. Go et al., *Scientific Reports* **14**, 2573 (2024), DOI `10.1038/s41598-024-52692-2`, citation key `go_2024_Demonstrationnuclear`.

The title, DOI, year and local PDF match the BibTeX record uniquely. The full nine-page article was read, including the abstract, Introduction, detector and reaction methods, Figs.2-6, Eqs.(1)-(7), Table 1 and the future-performance discussion.

## Scope and Reading Depth

This is a `detector-method-ingest + experiment-ingest` source. It demonstrates a multi-layer position-sensitive CdTe Compton camera with a known polarized 847-keV line. The paper characterizes one detector configuration and one calibration reaction; it is not a universal replacement for Clover or tracking-array polarimetry.

## Summary

The authors use a twenty-layer CdTe camera to record two-hit Compton events from the 847-keV `2+ -> 0+` transition in `56Fe`, produced by the `56Fe(p,p'gamma)` reaction. Measured azimuthal distributions are compared with Geant4/ComptonSoft detector simulations. Normalized detector-response and background terms are fitted with a Poisson maximum-likelihood procedure to infer the polarization and to obtain a modulation curve. The paper reports a detector sensitivity compatible with a finite, explicitly quantified efficiency, while emphasizing the sensitivity-efficiency trade-off.

## Experimental and Detector Setup

- A natural-iron foil of thickness 10 micrometers was irradiated with a 3.0-MeV proton beam at the RIKEN Pelletron. The CdTe camera was at approximately 90 degrees to the beam, 18.0 cm from the target; a segmented Ge CNS-GRAPE detector monitored the opposite direction (p.3, Fig.3 and methods text).
- The camera used twenty stacked CdTe layers, 8 x 8 pixels per sensor, 3.2-mm position resolution, 0.75-mm layer thickness and 15.0-mm total active thickness. Cooling and high-voltage operation were part of the detector characterization (p.3, Fig.2).
- The reference transition is the 847-keV first `2+ -> 0+` line in `56Fe`; the paper uses its known near-50% polarization as the calibration input. The measured peak resolution was 1.3% FWHM (p.3-4, Fig.4).

## Key Results

| ID | Claim | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| G24-1 | The paper presents a multi-layer position-sensitive CdTe Compton camera as a possible nuclear gamma-ray polarimeter, motivated by the limited efficiency of earlier linear-polarization systems. | author-interpretation | direct | Abstract; p.2, Introduction | false |
| G24-2 | The Klein-Nishina differential cross section (Eq.1) and its analyzing power `A(theta,Egamma)` (Eq.2) provide the photon-polarization dependence of the Compton-scattering plane. | method/formalism | direct | p.2, Eqs.(1)-(2) | false |
| G24-3 | The Introduction places the CdTe camera alongside Clover Ge and tracking arrays: Clover offers a compact Compton-polarimetry implementation, while GRETINA/AGATA provide fine interaction-position information; the CdTe design targets high position sensitivity and sub-MeV efficiency. | method-boundary | direct | p.2, Introduction | false |
| G24-4 | The measured detector is a twenty-layer, pixelated CdTe camera with 3.2-mm uniform position resolution and 15.0-mm total sensor thickness. | detector-characterization | direct | p.3, Fig.2 and detector-method subsection | false |
| G24-5 | The 3.0-MeV `56Fe(p,p'gamma)` reaction and detector geometry were chosen to produce a strongly polarized 847-keV line near 90 degrees; the paper uses CNS-GRAPE as an opposite-side intensity/asymmetry monitor. | observed-fact | direct | p.3, Fig.3 and production subsection | false |
| G24-6 | Two-hit events containing the 847-keV full-energy peak were selected for the polarimetry analysis; the paper reports relative full-energy-peak efficiencies of 63.8(3)% for two-hit and 7.6(1)% for three-hit events relative to the single-hit reference. | detector-characterization | direct | p.4, Fig.4 and paragraph below it | false |
| G24-7 | For each division of the azimuthal histogram, detector responses are normalized using measured energy spectra and a simulated mixture of unpolarized, 100%-polarized and background components: `e^(model)(P)=nu_j[(1-P)e(0)+P e(100)]+e(bg)`, where `j` indexes the division (Eq.3). | method/formalism | direct | pp.4-5, Eqs.(3)-(5) | false |
| G24-8 | ComptonSoft, using the Geant4 framework, supplies the detector-response and physics simulations; the degree of polarization is iterated with a Poisson maximum-likelihood function until the likelihood is maximized. | simulation-result/method | direct | p.5, azimuthal-distribution subsection, Eqs.(4)-(5) | false |
| G24-9 | Restricting the polar scattering angle to `40 degrees <= theta <= 120 degrees` increased polarization sensitivity at the cost of detection efficiency; the paper treats this as an event-selection optimization for this setup. | detector-characterization | direct | p.5, text below Eq.(5); Fig.5 caption | false |
| G24-10 | The measured azimuthal distribution gives an inferred degree of polarization `P=0.57(4)` for the 847-keV line, with the positive sign convention identified with electric character. | observed-fact/inferred-observable | direct | p.5, Fig.5 discussion | false |
| G24-11 | The modulation curve is defined as the measured-minus-background azimuthal distribution divided by the unpolarized simulation (Eq.6), and is fitted by `A(1+Q' cos(2(phi-phi0)))`; the paper reports `A=1.004(6)`, `Q'=0.203(8)` and `phi0=0.06(3)` (Fig.6). | detector-characterization | direct | pp.5-6, Eq.(6), Fig.6 | false |
| G24-12 | Dividing the modulation factor by the inferred polarization gives `Q=0.35(4)` at 847 keV. The paper explicitly distinguishes this sensitivity from detection efficiency and defines a figure of merit `F=epsilon Q^2`. | method/formalism/detector-characterization | direct | p.6, Eq.(7) and comparison text | false |
| G24-13 | A narrower `60 degrees <= theta <= 100 degrees` selection raises the quoted sensitivity to `Q=0.40(4)` but loses about 65% of the detection efficiency; the adopted setup estimates `epsilon` near `1.9 x 10^-5` and `F` near `2.4 x 10^-6`. | detector-characterization | direct | p.6, figure-of-merit discussion | false |
| G24-14 | Table 1 compares the CdTe result with Clover, GRETINA, Gammasphere, POLALI and other polarimeters; the comparison is configuration- and energy-specific and does not establish a universal ranking of detector technologies. | author-interpretation/method-boundary | direct | pp.6-7, Table 1 | false |
| G24-15 | The future discussion proposes side sensors, closer target placement and finer CdTe position resolution to improve coverage and efficiency; it presents these as development directions, not as already demonstrated nuclear-spectroscopy standards. | future-proposal | direct | p.7, Possible future gamma-ray polarimetry | false |

## Evidence Boundaries

- The measured modulation is a detector-level azimuthal response. The inferred `P` depends on the simulated response, normalization, background treatment, event selection and the known calibration reaction.
- A large `Q` is not the same as a large absolute efficiency. The paper's `F=epsilon Q^2` and event-selection examples make that trade-off explicit.
- The CdTe demonstration should be compared with Clover and GRETINA through the reported energy, geometry, event cuts and figure of merit. It should not be written as a mature universal replacement for in-beam HPGe arrays.
- Geant4/ComptonSoft outputs characterize detector response. They are not nuclear-structure model predictions.

## Competing Interpretations and Limitations

- The paper's inferred polarization is conditional on the simulated response, normalization, background model and event-selection cuts.
- A high sensitivity in one angular window can reduce efficiency; the reported figure of merit is setup-specific.
- The CdTe result is a detector demonstration and comparison point, not evidence that CdTe has replaced Clover or tracking arrays for all in-beam work.

## Extracted Pages

- Pages 1-2: motivation, Klein-Nishina cross section and analyzing power.
- Page 3: twenty-layer CdTe camera and `56Fe(p,p'gamma)` geometry.
- Pages 4-5: energy spectra, two-hit event selection, response normalization and likelihood polarization fit.
- Pages 5-7: modulation curve, sensitivity, efficiency/figure of merit and detector comparison.

## Related Wiki Pages

- Concepts: [[gamma-ray-linear-polarization]]; the Klein-Nishina formula is included in this source's method formalism.
- Methods: [[compton-polarimetry]], [[modulation-curve]], [[linear-polarization-asymmetry]], [[tracking-array]]
- Observables: [[experimental-asymmetry]], [[polarization-sensitivity]], [[detection-efficiency]]
- Calibration nucleus: `56Fe` (no separate structure page created in this method-only ingest).
- Project: [[gamma-ray-linear-polarization-in-nuclear-spectroscopy]]

## Human Review Triage

P0 review completed: G24-2 (Eqs.1-2), G24-7/G24-8 (normalization, background and likelihood equations), G24-10 (inferred `P=0.57(4)` and sign convention), and G24-11/G24-12 (modulation-factor and `Q` definitions) were checked as the core links between detector modulation and physical polarization inference.

The user-reviewed source has no remaining claim-level `needs_review: true` items. The detector numbers, Eq.3 division-index notation, likelihood chain, modulation/sensitivity values and Table 1 comparison boundary were checked against the cited pages.

## Project Relation

This source is the detector-demonstration branch of [[gamma-ray-linear-polarization-in-nuclear-spectroscopy]]. It supplies a concrete CdTe response, normalization and likelihood chain that can be compared with Jones's calibration formalism and Longfellow's GRETINA in-beam treatment without conflating detector simulation with nuclear-structure evidence.
