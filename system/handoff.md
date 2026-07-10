---
type: system-handoff
graph-excluded: true
updated: 2026-07-10
---

# 跨会话交接
## Active handoff

Current active task:
Framework-only skill/query sync: optimize `wiki-evidence-query` for open-world, low-token, evidence-calibrated Q&A.

Current branch / local commit:
`main`. This round is limited to `.agents/skills/wiki-evidence-query/SKILL.md`, `system/workflows/query.md`, `system/evidence-policy.md`, and required handoff/log synchronization. Pre-existing external/user changes remain in `.obsidian/app.json`, `.obsidian/community-plugins.json`, `.obsidian/graph.json`, and `raw/zotero/wiki-inbox.bib`; they are not part of this task and must remain unstaged.

Last task status:
Repositioned `.agents/skills/wiki-evidence-query/SKILL.md` so the Wiki is the preferred personalization/calibration layer rather than a closed corpus; removed default rereads of startup files and broad governance files; added general-background / external-verification routing, Fast/Standard/Deep paths, ordinary vs strict mode split, state-file evidence boundaries, answer-scaling, and stop conditions; minimally synchronized `system/workflows/query.md` so ordinary mode may use stable general background without presenting it as Wiki evidence; and corrected `system/evidence-policy.md` from four to six statement classes in the section heading.

Unfinished items:
No further framework inconsistency is identified from this sync. Create the requested commit on `main` and push it to `origin/main` if network access succeeds.

P0 focus:
1. Ordinary answers may use calibrated general scientific background when the Wiki is incomplete, but they must not present that background as Wiki-grounded evidence.
2. Strict paper-evidence review remains conditional; `Review history`, `WIP queue`, `handoff`, and `log` stay workflow metadata rather than scientific evidence.

Remaining P0:
None identified for this framework-only skill/query sync.

Risks:
Keep external `.obsidian/` and `raw/zotero/wiki-inbox.bib` changes outside this commit. Future edits to the skill should preserve the new evidence/provenance boundaries and avoid drifting back to default all-file loading or automatic raw/external retrieval for simple questions.

Checks:
Run `git status --short`, `git diff --stat`, `git diff --check`, targeted `rg` audits for personalization-layer wording / conditional reads / path layering / read-only boundaries, and `python system/scripts/wiki_lint.py --fail-on error`. This framework task must not modify `raw/`, science pages, `PLAN.md`, `system/schema.md`, or lint/test code.

Next prompt / continuation phrase:
Continue from the optimized skill by testing a concrete query scenario or by requesting additional workflow synchronization only if a real conflict remains.

Recent user decisions:
User requested a small-scope skill/framework sync: optimize `wiki-evidence-query` for Wiki-informed open-world Q&A, keep ordinary evidence-calibrated mode, preserve paper evidence gate, avoid default broad file loading, avoid state-file writes during read-only Q&A, and keep the diff small and reviewable.

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
