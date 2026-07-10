---
type: system-handoff
graph-excluded: true
updated: 2026-07-10
---

# 跨会话交接
## Active handoff

Current active task:
Framework-only workflow correction: refine human-review history semantics, review-commit traceability, and evidence-calibrated reasoning boundaries.

Current branch / local commit:
`main`. This round is limited to framework files for workflow/docs/checklist synchronization. Pre-existing external/user changes remain in `.obsidian/app.json`, `.obsidian/community-plugins.json`, `.obsidian/graph.json`, and `raw/zotero/wiki-inbox.bib`; they are not part of this task and must remain unstaged.

Last task status:
Refined `system/review-history.md` so it is triggered by the clear end of a substantive human-review round rather than by commit/push/task closure; replaced queue-to-history migration language with append review history + independently judge queue retention; unified Git helper wording to `review commit message`; and added evidence-calibrated reasoning boundaries so ordinary answers can still provide the best supported synthesis without pretending to satisfy manuscript-level evidence by default.

Unfinished items:
No framework blocker is identified in this correction task. Future review-finalization rounds should treat Review history as append-only human-review rounds, keep queue/history logically independent, and use strict paper evidence gate only when the task is actually manuscript-grade.

P0 focus:
1. Review history should be written only when the user's substantive review has clearly ended; fixed trigger words are not required, but ambiguity still blocks automatic entry creation.
2. Review history records `review commit message` only as a human-readable search aid; it must not record hash/push state or imply task closure/finalization completion.

Remaining P0:
None identified for this framework-only workflow correction.

Risks:
`system/wip-queue.md` still contains legacy completed entries from before the corrected human-review-history semantics; they are intentionally left untouched in this task. Keep external `.obsidian/` and `raw/zotero/wiki-inbox.bib` changes outside future commits unless the user explicitly asks otherwise.

Checks:
Run `git status --short`, `git diff --stat`, `git diff --check`, targeted `rg` audits for old review-history trigger logic / Git fields / evidence wording, and `python system/scripts/wiki_lint.py --fail-on error`. This framework task must not modify `raw/`, science pages, `PLAN.md`, `system/schema.md`, or lint/test code.

Next prompt / continuation phrase:
Continue framework workflow maintenance by treating Review history as human-review-round history, keeping queue/history independent, and using evidence-calibrated ordinary answers unless a strict paper evidence review is explicitly requested.

Recent user decisions:
User requested a framework-only correction: Review history must be triggered by the clear end of a substantive human-review round rather than by commit/push/task closure; fixed trigger phrases are not required; Review history may coexist with Pending WIP; Git helper field should be `review commit message`; and ordinary answers should use evidence-calibrated reasoning rather than defaulting to strict paper evidence gate.

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
