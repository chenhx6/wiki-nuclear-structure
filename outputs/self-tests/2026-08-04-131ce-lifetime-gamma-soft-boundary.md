---
type: output
title: "Weekly self-test: 131Ce lifetime and gamma-soft evidence boundary"
created: 2026-08-04
updated: 2026-08-04
status: reviewed
review_status: human-reviewed
tags: [weekly-self-test, 131ce, lifetime, gamma-softness, evidence-boundary]
---

# Weekly self-test: `131Ce` lifetime and γ-soft evidence boundary

## Scope

This run resumed only the previously isolated `131Ce` lifetime/collective-mode question. It checked the Singh 2016 source page, the `131Ce` nucleus and collective-mode project, the gamma-soft project/synthesis, and the reproducible lifetime package. It did not read user-independent experimental data, modify `PLAN.md` or `raw/`, start a new L4 analysis, or push.

## P0

- Scientific P0: none identified.
- Git/raw P0: none identified. `raw/zotero/wiki-inbox.bib` remained protected, unstaged, and hash-matched to the automation gate.

## P1

1. **Direct observable versus shape interpretation.** The four finite Singh `Q_t` points give slope `−0.030±0.047 eb/ℏ`, so the negative trend is only `0.64σ`. The paper's `3→2.5 eb` statement is retained as an author-level visual summary, not promoted to a statistically established experimental trend.
2. **γ-softness boundary.** Lifetime/`Q_t` directly constrains E2 collectivity and possible core response. The γ-soft/non-axial label remains supported mainly by TRS and the authors' interpretation; it is not an independent lifetime observable.
3. **Review-state preservation.** Previously human-reviewed GSD-PROJ-1–7 and GSD-SYN-1–8 were not silently re-reviewed. Their old “no `131Ce` source” wording is dated as historical; GSD-PROJ-8 and GSD-SYN-9 were subsequently accepted in a targeted human-review round without changing the Singh source page's other claim states.
4. **Remote publication blocker.** Fresh fetch verified `origin/main` at `63ef3ef` and as an ancestor of the integrated final. The user authorized push, but both system and bundled Git stopped at exact-refspec dry-run because the protected repo-local AskPass could not be spawned (`Permission denied`). No remote update occurred; this is a runtime/authentication blocker, not a scientific one.

## Low-risk summary

- Corrected the Singh source summary and P1 triage so direct measurements, author summary, Wiki reanalysis, and TRS interpretation are separate.
- Propagated the same boundary to the `131Ce` nucleus, collective-mode project, L4 report/result string, and gamma-soft evidence map/synthesis.
- Preserved evidence independence: Singh and Li current experiments remain independent, while Singh's copied Li rows are not double-counted.

## Verification and research summary

- The existing reproducible calculation remains the quantitative anchor: weighted mean `Q_t=2.579±0.099 eb`, slope `−0.030±0.047 eb/ℏ`, apparent decline `0.64σ`.
- This null-trend result does not remove the measured E2-collectivity scale. It changes only the strength and provenance of the shape-language inference.
- Hypothesis ranking remains: signature/configuration coupling leads band identity; core response remains viable; γ-softness is a low-confidence, model-assisted background; chirality and wobbling do not upgrade.

## L3/L4 status

- L3/L4 scientific state remains `completed-provisional` / awaiting milestone review.
- No new L4 candidate was created. The next decisive evidence remains multi-band absolute E2/M1 information, shape invariants, measured `δ`/polarization, or a common-input soft-vs-rigid calculation.

## Human review focus

- P0: none identified.
- P1: completed without corrections for the Singh Summary/P1 boundary, collective-mode project hypothesis/evidence rows, GSD-PROJ-8, and GSD-SYN-9.
- P2: wording-only propagation to the nucleus page and L4 machine-readable belief-revision string.
- P3: report, handoff, queue, and short log synchronization.

## Human review result

On 2026-08-04 the user completed the targeted review and accepted the calibrated separation of measured `τ/Q_t`, the author's visual trend, the Wiki `0.64σ` reanalysis, and TRS γ-soft interpretation without correction. This closes GSD-PROJ-8/GSD-SYN-9 review only; it does not certify every Singh source claim against raw.

## Files, Git, and checks

- Branch: `codex/weekly-self-test-20260804-131ce-lifetime-gamma-soft-boundary`, based on local automation-preflight commit `e29c1cc`; this scientific WIP therefore depends on the unpushed automation-preflight lineage.
- Final commit: current branch HEAD `Finalize weekly self-test 2026-08-04: 131Ce lifetime/γ-soft boundary`, not yet pushed.
- Push: authorized by the user but not performed; local H3 and remote ancestry passed, while exact-refspec dry-run failed at protected AskPass execution in the current runtime.
- Reproducible analysis: reran successfully; `results.json` matches `analysis.py` and is emitted with repository-required LF endings.
- Tests: 6/6 lifetime-analysis tests and all 19 integrated system tests passed after the dependent governance final was replayed.
- Wiki lint: passed with 0 errors, 29 warnings, and 231 info; warnings are the existing reaction/element/orphan inventory plus the protected raw-change notice.
- Wording audit: passed for the scoped files; no remaining scoped wording treats lifetime as independent γ-soft proof or an author visual trend as statistically established.
- QMD: update/embed/status succeeded after review finalization; the `nuclear-knowledge` collection contains 249 files and 1918 vectors.
- H2 checkpoint: passed. The cleanup script returned exit `1` only because five authorized knowledge files were substantive; unsafe/mixed count was zero. Twelve files were explicitly staged, cached diff/check passed, no raw file was staged, and the protected BibTeX hash remained `D01BDB305D07B582DCA30F3C1BAE600F5E6AB3E9E9F5C8EF8C7ACE1E09E2C5AA`.
