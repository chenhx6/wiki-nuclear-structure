---
type: system-handoff
graph-excluded: true
updated: 2026-07-14
---

# 跨会话交接
## Active handoff

Current active task:
Nature Skills full installation for Codex is complete; Wiki has only lightweight governance records for the install.

Current branch / local commit:
`main` at `6add991` before local record edits. Nature Skills clone is outside the Wiki at `C:\Users\22721\ai-skills\nature-skills`; Codex global skills target is `C:\Users\22721\.codex\skills`. No Wiki commit or push has been performed for this install-record task.

Last task status:
Cloned `https://github.com/Yuan1z0825/nature-skills.git` to `C:\Users\22721\ai-skills\nature-skills` at commit `b98b53ef5e8f15d9159682bf7587301a16b0747f`. Because Git Bash lacked `rsync`, the top-level `skills/` directories were mirrored into `C:\Users\22721\.codex\skills` with `robocopy /MIR`, and the upstream `scripts/update-codex-skills.sh --check` reports `MATCH` for `_shared` and all `nature-*` directories.

Unfinished items:
Open a new Codex conversation/session before expecting the newly installed Nature Skills to appear in the available skill list. Optional Python/MCP/API dependencies for individual skills were not installed and should be configured only when a concrete task needs them.

P0 focus:
When using Nature Skills for Wiki writing, first establish evidence boundaries from `knowledge/sources/`, `raw/`, locators and user judgement; Nature Skills may polish, draft, read, figure, cite or respond, but cannot override Wiki evidence policy or paper evidence gate.

Remaining P0:
No science-content P0 is introduced by this install. For future paper use, source/raw locator checks remain mandatory.

Risks:
The upstream install script could not copy because `rsync` is absent, so this install used equivalent directory mirroring plus upstream `--check`. Do not install optional dependencies or write credentials/API keys into the Wiki; configure them separately only when needed.

Checks:
Write-entry preflight was clean: `git status` had no diff/staged files, EOL cleanup reported 0 refreshed/restored/unsafe/mixed, and post-clean status stayed clean. Nature Skills upstream `--check` passed with all directories matching. Final `python system/scripts/wiki_lint.py --fail-on error` passed with 0 errors, 11 existing warnings and 0 info; `git diff --check` passed.

Next prompt / continuation phrase:
To update Nature Skills later: `cd C:\Users\22721\ai-skills\nature-skills`, run `git pull`, then run `scripts/update-codex-skills.sh --pull` if `rsync` is available, or mirror the same `skills/` directories and run `scripts/update-codex-skills.sh --check`.

Recent user decisions:
User changed the earlier Stable-only plan to full Nature Skills installation: "都下了吧，有啥用啥，省了再下". Do not add the full Nature Skills repo into Wiki Git; keep only lightweight records in `system/memory.md`, `system/handoff.md` and `system/log.md`.

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
