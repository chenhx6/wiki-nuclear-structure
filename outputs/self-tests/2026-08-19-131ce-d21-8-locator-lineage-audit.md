---
type: output
title: "Weekly self-test: 131Ce D21-8 locator and lineage audit"
created: 2026-08-19
updated: 2026-08-19
status: awaiting-review
review_status: unreviewed
tags: [weekly-self-test, 131ce, n73, evidence-independence, locator-audit]
---

# Weekly self-test: `131Ce` D21-8 locator and lineage audit

## Scope

This run resumed the only active weekly-review scope instead of opening a second scientific WIP. It checked whether D21-8 and the two `131Ce` project evidence rows accurately locate the N=73 observables and distinguish Ding 2021 from the older experimental lineages. It also reconciled the queue/report with the already-published `main` history. No new collective-mode hypothesis, external download, raw modification or L4 analysis was started.

## P0

- Scientific P0: none identified.
- Git/raw P0: none identified. The three inspected PDFs match their recorded SHA-256 hashes; `raw/zotero/wiki-inbox.bib` remains protected and unstaged.

## P1

1. **D21-8 locator was incomplete.** The claim text was accurate, but p.9/Fig.6 alone does not carry all cited observables. Alignment and `J^(2)` are in PDF p.5/Fig.4; excitation-energy systematics and explicit old-source attribution are in p.6/Fig.5; signature splitting and the high-spin/common-configuration discussion are on p.9/Fig.6 and its following paragraph.
2. **Original experimental lineages are now explicit but not fully verified.** Ding attributes `129Ba`, `131Ce` and `133Nd` to refs.46, 47 and 48, respectively: Byrne 1992, Palacz 1991 and Bazzacco 1998. Their full texts were not read in this run, so exact band identity, reaction and transition locators remain outside claim-level verification.
3. **Wobbling controls remain bounded.** `127Xe` pp.3-4 confirms the 651-keV/652-keV contamination and atypical proposed two-phonon decay topology. `129Ba` pp.2-4 confirms the legacy-data basis, the 365-keV strong E2-admixture argument, incomplete higher-link information and the authors' call for new measurements. Neither source transfers a wobbling label to `131Ce`.
4. **Workflow state was stale.** The original WIP was already merged into `main`, while the active queue and 2026-08-17 report still described the old branch as an unpushed local WIP. This was reconciled without claiming scientific review completion.

## Required weekly checks

- Necessary companion: D21-8 supplies configuration systematics, not target `δ`, polarization or absolute-strength companions required for a wobbling assignment.
- Background/resolution/gate: visual renders of Ding pp.5-6/9/14-15, `127Xe` pp.3-4 and `129Ba` pp.2-4 confirm that the issue is source coverage and lineage, not extraction or layout ambiguity.
- Source independence: Ding's N=73 comparison reuses refs.46-48; `127Xe` and `129Ba` are distinct experimental nuclei, but the 2024 `129Ba` interpretation reuses legacy data and imports the `127Xe` comparison. Experimental and interpretive independence remain separate.
- Belief revision: the `131Ce` ranking changes only if target-nucleus electromagnetic evidence closes the band-identity and E2-link chain. Reading refs.46-48 may refine the historical band crosswalk but cannot by itself establish wobbling.

## L3/L4 status

- No new L3 was opened. The existing N=73 milestone remains completed-provisional and awaiting focused review.
- No L4 readiness audit was needed; no new data source or observable became available.

## Deferred important issues

1. **Primary-paper crosswalk.** Byrne 1992, Palacz 1991 and Bazzacco 1998 should be obtained and read only when exact N=73 band identity becomes decision-relevant or manuscript-facing. Until then, Ding's comparison remains contextual.
2. **Target electromagnetic matrix.** Figure 5.5 gated intensities, measured `δ`/polarization and absolute interband/intraband strengths remain the only deferred issue likely to alter the `131Ce` collective-mode ranking. Continue L3 when a direct source appears, or start L4 only with authorized Wiki-local data.

## Human review focus

- P0: none identified.
- P1: D21-8 and the two project evidence rows. Confirm the expanded locator, refs.46-48 lineage, configuration separation and non-transfer of neighbor wobbling labels.
- The page-level and claim-level review states were not changed.

## Files, Git, and checks

- Branch: `main`; no task branch was created.
- Commit: current main HEAD `Audit 131Ce N=73 evidence lineage`.
- Raw boundary: no raw file will be staged; the protected BibTeX remains outside task scope.
- Validation: `wiki_lint.py --fail-on error` completed with 0 errors, 69 warnings and 577 info findings; `git diff --check` passed. H2 clean retained the two authorized substantive knowledge files and reported zero unsafe/mixed files.
- Overview/index: unchanged because no knowledge page or hypothesis ranking was added.
- QMD: refresh deferred until focused review finalization; direct page and source-PDF checks were sufficient for this audit.
