---
type: source
title: "Chakraborty et al. 2024 - Exploring the possibility of wobbling motion in 129Ba"
aliases: [Chakraborty 2024 129Ba wobbling possibility]
created: 2026-07-16
updated: 2026-07-25
status: active
review_status: human-reviewed
source_type: journal-article-reanalysis
reading_depth: deep-read
title_original: "Exploring the possibility of wobbling motion in 129Ba"
authors: [S. Chakraborty, S. Bhattacharyya, G. Mukherjee, C. Majumder]
journal: Physical Review C
year: 2024
volume: 110
pages: 024324
doi: 10.1103/PhysRevC.110.024324
canonical_source: https://doi.org/10.1103/PhysRevC.110.024324
citation_key: chakraborty_2024_Exploringpossibility
raw_file: "raw/papers/2024_Chakraborty et al_Exploring the possibility of wobbling motion in Ba 129.pdf"
raw_sha256: D5729DE577067F8AFEAB771AFB51328989772C68962A938D553BCCB50F0C0808
nuclei: [129ba]
reactions: []
experiments: []
models: [triaxial-particle-rotor-model]
observables: [multipole-mixing-ratio, wobbling-energy, signature-splitting]
methods: [angular-distribution, dco-ratio, linear-polarization-asymmetry]
tags: [experiment-ingest, reanalysis, wobbling-possibility, longitudinal-wobbling, a130]
---

# Exploring the possibility of wobbling motion in `129Ba`

## Bibliographic Record

PRC 110, 024324 (2024), DOI `10.1103/PhysRevC.110.024324`; PDF/BibTeX identity checked.

## Scope and Reading Depth

- Completed reading_depth: `deep-read`
- Covered scope: full article, reanalysis of published angular-distribution/polarization coefficients, band reassignment, TPRM/QTR calculations and explicit limitations.
- Not covered: original raw spectra/data or independent reanalysis of the 1977/1992 source papers.
- Coverage caveats: no new experiment is reported; the conclusions inherit uncertainties and incomplete transition coverage from older datasets.

## Paper Question and Scientific Motivation

- Author-explicit motivation: reassess legacy `129Ba` band data to determine whether band 3 may be a wobbling excitation rather than only a signature/TiP-like structure (PDF pp.1-2).

## Method and Design Logic

- Reanalyse published angular-distribution, DCO and polarization coefficients; revise band roles; compare energy staggering/E_wob with `127Xe`; use TPRM/QTR calculations while explicitly requesting new data (PDF pp.2-4, Figs.2-7).

## Key Evidence and Reasoning Chain

- Legacy 365-keV coefficient overlap → substantial E2 admixture; incomplete other links → weak electromagnetic closure; energy/model analogy → “likely/possibility” wobbling, not observation.

## Summary

This paper explores, rather than claims definitive observation of, wobbling in `129Ba`. It reassigns the yrast `13/2−` sequence as a likely first-wobbling-phonon band and calls for new measurements before an unequivocal conclusion.

## Experimental or Theoretical Setup

No new dataset. The analysis revisits results from `120Sn(12C,3nγ)129Ba` at 52 MeV and `116Cd(18O,5nγ)129Ba` at 86 MeV, including angular distributions, DCO and limited polarization.

## Key Results

| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |
|---|---|---|---|---|---|
| CH24-1 | Reanalysis of the 605-keV band-2→band-1 link gives a low mixing ratio and supports band 2 as unfavoured signature partner. | author-interpretation | indirect | PDF pp.2-3, Figs.2-4 | true |
| CH24-2 | Published 365-keV angular-distribution and polarization values overlap at adopted `-0.84≤δ≤-0.79`, indicating a substantial E2 admixture for band 3→1. | experimental-criterion | indirect | PDF p.3 | true |
| CH24-3 | Other relevant links lack sufficient angular/polarization information; some DCO ratios are only suggestive. | experimental-fact | direct | PDF p.3 | true |
| CH24-4 | Similar energy staggering to `127Xe` and increasing `E_wob` are used to support a longitudinal-wobbling possibility. | author-interpretation | contextual | PDF pp.3-4, Figs.5 and 7 | true |
| CH24-5 | TPRM reproduces bands 1/2 as signatures and QTR/FA reproduces band 3 energy trend with longitudinal coupling. | model-result | direct | PDF pp.3-4, Figs.5-7 | true |
| CH24-6 | Authors conclude band 3 is likely first-phonon wobbling, but explicitly require further angular-distribution/correlation and polarization measurements for unequivocal establishment. | author-interpretation | indirect | PDF p.4, Summary | true |

## Nuclear Structure Information

Bands 1/2 are treated as signature partners and band 3 as a possible first-wobbling-phonon sequence. No new spectra or raw-event reanalysis are supplied.

## Authors' Interpretation

The authors deliberately retain possibility/likely wording and state that new angular/polarization measurements are required for unequivocal establishment.

## Model Results

TPRM describes signature bands and QTR/frozen-alignment calculations reproduce the proposed band-3 trend. The model comparison inherits old-data and cross-nucleus assumptions.

## Competing Interpretations and Limitations

Signature partner, TiP and wobbling are discussed. The article argues TiP E2 fractions are smaller than the adopted 365-keV value, but this is a cross-case model/experiment comparison, not a direct exclusion. Old data and incomplete links keep the conclusion at “possibility/likely.”

## Analytical Reconstruction

| ID | 审核项 | Agent 判断 | Evidence / locator | 审核状态 |
|---|---|---|---|---|
| CH24-AR-1 | Core reconstruction | This is a reinterpretation of legacy observables plus model calculations; no new direct experiment is added and the conclusion remains possibility/likely. | Key Results and Competing Interpretations above | unreviewed |
| CH24-AR-2 | Assumptions and dependencies | The adopted band identities, mixing-ratio branches, configuration assignments, and model inputs are valid within the stated measured range. | Method/results/model sections cited above | unreviewed |
| CH24-AR-3 | Transfer conditions | Transfer only the measured observables and their explicit conditions; do not transfer the author interpretation without equivalent link and configuration evidence. | Source scope and claim locators above | unreviewed |
| CH24-AR-4 | Failure conditions | Alternative branch, band identity, configuration, or model dependence can weaken the structural label even when the measured transitions remain valid. | Competing Interpretations and Limitations above | unreviewed |
| CH24-AR-5 | Reverse/falsification test | Obtain independent lifetimes/multipolarities or common-input competing-model tests targeted to the stated evidence gap. | Follow-up observables identified by the source/Agent | unreviewed |
| CH24-AR-6 | Research-question decision | Retain the source in the project/synthesis evidence map with the source-local review boundary explicit. | Whole-source assessment | unreviewed |

## Knowledge Impact and Learning Decision

- Existing Wiki understanding: The Wiki already contained the broader wobbling topic and related candidate map, but not this source in a complete source-local evidence and review structure.
- Effect of this source: supports
- Reason: This is a reinterpretation of legacy observables plus model calculations; no new direct experiment is added and the conclusion remains possibility/likely.
- Persistence decision: project update / synthesis update
- Review state: page-level `human-reviewed`; Key Results claims remain `needs_review: true` for future claim-specific paper use.

## Related Knowledge and Project Relations

| Relation type | Target | Specific relation |
|---|---|---|
| supports | [[longitudinal-wobbling]] | Provisional `129Ba` candidate based on reanalysed legacy data. |
| competing-interpretation | [[tilted-precession-bands]] | TiP is discussed but not tested with a nucleus-specific common-input analysis. |
| limits | [[multipole-mixing-ratio]] | Demonstrates how old angular-distribution branches affect a modern reassignment. |

## Human Review Triage

Review disposition: the user completed a rough page-level review on 2026-07-25 and accepted the current evidence-calibrated wording without correction. The P0/P1 items below are retained as future strict paper-use verification prompts, not unresolved ingest blockers.

### P0

- `CH24-2`, 365-keV link, PDF p.3 — Evidence: adopted δ=-0.84 to -0.79 comes from overlap of legacy angular-distribution/polarization results. Agent inference: the modern reassignment depends on old coefficients and branch conventions. User check: original datasets, signs and uncertainty overlap. Risk: revised δ would change the key E2 argument.

### P1

- `CH24-4`/`CH24-6`, Figs.5-7 — Evidence: energy analogy and models support “possibility/likely,” while other links remain incomplete. Agent inference: no new experiment establishes wobbling. User check: preserve possibility/likely wording and assess TiP comparison. Risk: upgrading to observation would exceed the source.

### P2/P3

- P1: legacy band identity and TPRM/QTR assumptions. P2/P3: metadata/navigation.

## Human Review Record

- 2026-07-25: the user completed a rough review of this source page and accepted its current claims, attribution boundaries, locators and stated limitations without requesting corrections.

## Review Status

Page-level review is complete for this ingest round. Claim-level `needs_review` and Analytical Reconstruction review markers remain unchanged because this was a rough review rather than exhaustive claim-by-claim paper certification.

## Extracted Pages

- Nuclei: [[129ba]]
- Concepts: [[longitudinal-wobbling]]
- Methods: [[angular-distribution]], [[dco-ratio]], [[linear-polarization-asymmetry]]

## Non-source Notes and Follow-up

Do not upgrade “possibility/likely” to “observation.”
