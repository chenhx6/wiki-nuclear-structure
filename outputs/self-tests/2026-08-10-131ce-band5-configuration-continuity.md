---
type: output
title: "Weekly self-test: 131Ce Band 5 configuration continuity"
created: 2026-08-10
updated: 2026-08-20
status: completed
review_status: human-reviewed
tags: [weekly-self-test, 131ce, band5, configuration, signature]
---

# Weekly self-test: `131Ce` Band 5 configuration continuity

## Selection audit

- Run type: `weekly-learning`; counted as a learning cycle: yes (retrospective classification).
- Continuity slot: used for a hard source-consistency P1 because the Band 5 mapping could affect configuration continuity and the user later withdrew the proposed reconstruction.
- Novelty slot: not used under the pre-rotation policy; no global candidate pool or source-cooldown ledger was recorded at that time.
- Core sources/overlap: Alwaleedi thesis Tables 5.2–5.3 and the existing `131Ce` pages; same-project overlap was explicit and no independent source was claimed.
- New knowledge/belief revision: retained the printed `e⊗AE→e⊗AEFG` / `f⊗AE→e⊗AEFG` text and withdrew the unsupported relabeling.

## Scope

This run tested one unresolved `131Ce` P1 only: whether Alwaleedi Table 5.3's Band 5 second-row mapping is an extraction artifact, a physical signature change, or a probable table typo. It read the thesis PDF, the existing source/nucleus/project pages, and the prior thesis-only L4 report. It did not inspect user-independent data, modify `PLAN.md` or `raw/`, start L4, or push.

## P0

- Scientific P0: none identified.
- Git/raw P0: none identified. The protected BibTeX remained unstaged and hash-matched.

## P1

1. **Source text confirmed.** A direct 180 dpi render of thesis p.80 confirms that Table 5.3 really typesets `f⊗AE → e⊗AEFG`; the duplicated high-spin `e` is not OCR or text-extraction noise.
2. **Agent hypothesis tested.** Table 5.2 defines `e` and `f` as opposite signature partners, so the self-test proposed `fAE→fAEFG` as a signature-preserving reconstruction.
3. **Human review decision.** On 2026-08-11 the user required the Wiki to retain the table literally as `e⊗AE→e⊗AEFG` and `f⊗AE→e⊗AEFG`. The proposed `f⊗AEFG` reconstruction is withdrawn.
4. **Independence limit.** Table 5.2, Table 5.3 and Section 5.2.2 are internally cross-consistent evidence from one thesis, not independent confirmation. No ingested independent source or erratum currently verifies the corrected label.

## Low-risk summary

- Confirmed the printed table value and preserved it without corrective relabeling.
- Withdrew the Agent's signature-preserving reconstruction; the leading collective-mode ranking is unchanged.

## Verification and research summary

- Necessary-companion check: the opposite-signature low-spin `fAE` branch requires a corresponding high-spin partner if the stated event is only the `FG` crossing.
- Resolution/background/gate check: direct page rendering at 180 dpi confirms the printed character; no spectral background, coincidence gate or detector-resolution issue enters this typeset-table diagnosis.
- Source-independence check: all positive evidence belongs to the Alwaleedi thesis; the result remains provisional pending an independent band/configuration map or author erratum.
- Belief revision outcome: user review withdrew `f⊗AEFG`; any future relabeling now requires an independent source or author erratum.
- Stop condition: reached. Further searching without a new independent source is unlikely to change the table-internal diagnosis.

## L3/L4 status

- L3 collective-mode ranking is unchanged: signature/configuration coupling remains provisionally preferred.
- No L4 candidate was created; this is a source-consistency correction, not a data-analysis question.

## Human review outcome

- P0: none identified.
- P1: resolved. AW13-12/AW13-13 retain the literal table mappings and withdraw the `f⊗AEFG` reconstruction.
- P2: nucleus-page propagation and evolution log.
- P3: report, handoff, WIP queue and short log synchronization.

## Files, Git, and checks

- Branch: `codex/weekly-self-test-20260810-131ce-band5-configuration`.
- Local final: current branch HEAD `Finalize weekly self-test 2026-08-10: 131Ce Band 5 configuration continuity`.
- Publication: deferred until the two-commit corpus plan is complete; no push is attempted at this checkpoint.
- Tests: all 3 thesis-baseline ratio tests and all 19 system tests passed.
- QMD: update, embed and status completed; the `nuclear-knowledge` collection has 249 indexed files and 1946 embedded vectors.
- Wiki lint: passed with 0 errors, 29 warnings and 231 review infos. The warnings are existing reaction/element/orphan-page items plus the protected dirty BibTeX notice.
- Wording/diff audit: passed; scoped wording preserves the literal table and the withdrawn reconstruction history.
- H2/staged/raw audit: passed. Nine authorized files were explicitly staged; the protected BibTeX remained unstaged at the entry-baseline SHA-256.
- H3: actual branch, HEAD subject and commit files were reconciled after the review-finalization amend; the post-reconciliation H3 passed with only the protected BibTeX dirty and unstaged.
