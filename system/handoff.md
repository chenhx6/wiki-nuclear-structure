---
type: system-handoff
graph-excluded: true
updated: 2026-07-10
---

# 跨会话交接
## Active handoff

Current active task:
Framework-only correction: surface useful reviewed or unreviewed knowledge, correct review-status semantics, and compress `wiki-evidence-query`.

Current branch / local commit:
`main`, based on unchanged `109bd57`. This task is packaged with the requested commit message `Surface useful knowledge and compress evidence query skill`; pre-existing user changes in `.obsidian/` and `raw/zotero/wiki-inbox.bib` remain unstaged and outside the task.

Last task status:
Compressed the evidence-query Skill from 451 to 257 lines while preserving open-world Q&A, provenance, Fast/Standard/Deep, ordinary/strict, source visibility, and stopping rules. Review status now controls disclosure and verification priority rather than visibility or value; highly relevant unreviewed material is surfaced with a verification path, reviewed material remains recheckable, and manuscript support is assessed claim by claim. Query workflow and evidence policy received matching minimal corrections.

Unfinished items:
Run final targeted checks and wiki lint, create the independent commit, and push `main` if network access succeeds.

P0 focus:
1. Unreviewed content must not be hidden when it is highly relevant and informative, but its review/source/locator limits must remain visible.
2. `human-reviewed` is scoped and fallible; precise or manuscript claims still require claim-specific direct-source verification when warranted.

Remaining P0:
None identified for this framework-only skill/query sync.

Risks:
Keep external `.obsidian/` and `raw/zotero/wiki-inbox.bib` changes outside the commit. Do not turn active surfacing into exhaustive unreviewed-page dumps or weaken the paper evidence gate.

Checks:
Targeted wording/line-count audits pass at the pre-lint stage. Still run Skill validation, `git diff --check`, and `python system/scripts/wiki_lint.py --fail-on error` before commit and again after commit.

Next prompt / continuation phrase:
Test the revised Skill with one of the review-status acceptance scenarios, or continue ordinary Wiki-informed Q&A.

Recent user decisions:
User clarified that review metadata must guide disclosure and verification priority, not suppress useful knowledge or determine paper eligibility by page status. Human-reviewed material remains open to correction and deeper extraction; Codex may not change review markers without explicit user confirmation.

## Previous active handoff (superseded 2026-07-10 pre-review-correction synthesis planning)

Current active task:
Sigma-over-I / P-ADO synthesis planning is complete for this round. A bounded writing-support synthesis was created, and the current 11-source package was judged ready for synthesis-level motivation use but not yet ready for paper wording or code-facing equations without human review.

Current branch / local commit:
`main`. A local `WIP review:` commit should exist for this task after checks/commit; do not push yet. Pre-existing external/user changes remain in `.obsidian/app.json`, `.obsidian/community-plugins.json`, `.obsidian/graph.json`, and `raw/zotero/wiki-inbox.bib`; they are not part of this synthesis-planning task and must remain unstaged.

Last task status:
Readiness audit covered the sigma-over-I project page, 11 source notes, and related concept/method pages. No current blocker was found from missing source notes, citation metadata, raw-file links, locator structure, or claim-kind structure. Added `[[sigma-over-i-assumptions-and-mixing-ratio-extraction]]`, updated `[[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]]`, and synced `knowledge/index.md`. `knowledge/overview.md` and QMD refresh were intentionally deferred until post-review finalization.

Unfinished items:
Human review is still required for synthesis-level terminology mapping, readiness wording, and paper-evidence-gate boundaries before any final local commit or push. User-code-specific `sigma/I` mapping, reaction-condition mapping, and calibration-transition strategy remain open.

P0 focus:
1. `knowledge/projects/sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction.md`: review `## Synthesis Readiness`, `## Symbol Mapping`, and SIO-PROJ-16..19 wording boundaries.
2. `knowledge/synthesis/sigma-over-i-assumptions-and-mixing-ratio-extraction.md`: review `## Terminology and Symbol Mapping`, `## Implications for P-ADO Mixing-Ratio Extraction`, and `## Claims Ready/Not Ready for Paper Evidence Gate`.
3. Confirm that Draper/Cejnar `sigma`, Lauritsen `sigma/J`, project/user `sigma/I`, Ekstrom `alpha2/alpha4`, and Ionescu `rho2/rho4` remain explicit and non-merged.

Remaining P0:
No known source-note locator/kind P0 remains. Remaining P0 is synthesis-level human review only.

Risks:
Do not stage `.obsidian/`, `raw/`, raw PDFs, `raw/zotero/wiki-inbox.bib`, `PLAN.md`, `system/schema.md`, lint scripts/config/tests, or unrelated files. Do not treat this synthesis-planning round as human scientific review. Do not promote Summary 2013, Chiara 2012, Gray 2020, or Radeck 2012 into universal P-ADO priors, and do not write code-facing equations until the user's actual `sigma/I` convention is mapped.

Checks:
Run `git status --short`, `git diff --stat`, `git diff --check`, and `python system/scripts/wiki_lint.py --fail-on error`. Overview/QMD are deferred for this local review state and should be reconsidered at review-finalization.

Next prompt / continuation phrase:
Continue sigma-over-I synthesis review finalization: audit the new synthesis page and project readiness wording, apply user review comments, then decide whether to amend the local `WIP review:` commit into a final local commit or push after explicit approval.

Recent user decisions:
User asked to first check for unpushed commits before starting this task; none existed on `main`. This round is restricted to sigma-over-I / P-ADO synthesis planning only, allows a local planning/synthesis commit, forbids push, and requires checkpoint-first workflow with Human review triage.
