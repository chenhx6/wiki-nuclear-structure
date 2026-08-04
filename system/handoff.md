---
type: system-handoff
graph-excluded: true
updated: 2026-08-04
---

# 跨会话交接
## Active handoff

Current active task:
Wiki scheduled-runner profile-marker false-negative repair is implemented locally. Schema 2 now treats the trusted project config and real capability checks as authoritative; a missing `CODEX_PERMISSION_PROFILE` is a warning rather than a failure. Automation and the `131Ce` weekly self-test remain paused by current user instruction.

Current branch / local commit:
Branch `codex/wiki-automation-permission-preflight`; local final commit `Fix Wiki scheduled profile marker preflight`, not pushed.

Last task status:
The controlled `Run now` safely stopped before startup/Git/raw/science because the scheduled runner did not export `CODEX_PERMISSION_PROFILE`; the same `ID=wiki` then paused itself. No repository or external write occurred. The repaired preflight first attests `.codex/config.toml` and then runs the existing capability matrix; a real Wiki simulation with the marker removed returned exit `0`, preserved the protected BibTeX hash, passed both write probes and both read sentinels, and left no probe residue.

Unfinished items:
The unique `ID=wiki` prompt has been updated in place through the Codex automation function with the corrected marker semantics and remains explicitly `PAUSED`; no duplicate or run was created. A later user-authorized task may restore `ACTIVE` and perform one controlled `Run now`; do not run it in this task.

P0/P1 review focus:
The local P0 false-negative is closed by the script/tests/governance commit and paused prompt update. P1 remains a new controlled automation receipt with schema 2 exit `0`, Git/raw audit and no Wiki-external writes. Scientific `131Ce` work remains out of scope until that later rollout gate passes.

Risks:
Do not self-inject `CODEX_PERMISSION_PROFILE`, treat a missing marker as proof of missing permissions, edit `.codex`/`.agents`, clean runtime protective DENY, activate or run automation in this task, modify global/other-project settings, push, or stage raw. `raw/zotero/wiki-inbox.bib` remains protected and unstaged at SHA-256 `D01BDB305D07B582DCA30F3C1BAE600F5E6AB3E9E9F5C8EF8C7ACE1E09E2C5AA`.

Checks:
All 18 system tests pass. Wiki lint reports 0 errors, 29 warnings and 231 info. A real Wiki run with `CODEX_PERMISSION_PROFILE` removed exited `0`: config attestation, BibTeX hash, root/`.git` probes and both protected reads passed with the expected warning and no residue. H2, `git diff --check`, explicit staged audit and raw/hash audit pass.

Next prompt / continuation phrase:
After this paused fix is accepted, send: `确认恢复 ID=wiki ACTIVE 并再次受控 Run now；不要 push`.

Recent user decisions:
The user confirmed the scheduled-runner profile-marker false-negative should be fixed while `ID=wiki` remains paused. `wiki_l3` retains `write` for `.codex` and `.agents`; the weekly task still treats them as read-only targets. The inactive `unelevated` workaround must not be restored, and runtime host DENY must not be cleaned.

## Previous active handoff (superseded 2026-07-27 before L3/L4 pilot)

Current active task:
Wiki-scoped filesystem-boundary repair and acceptance are complete: sandbox capability is writable inside `E:\imp\wiki`, read-only outside with `approval_policy=never`, and repository governance remains in force. L3 scientific autonomy is not active and awaits a separate user-started research question.

Current branch / local commit:
`main` contains the finalized local commit `Finalize Wiki-scoped L3 boundary and literature ingress`, one commit ahead of `origin/main`, not pushed. The protected pre-existing `raw/zotero/wiki-inbox.bib` change remains unstaged at baseline SHA-256 `94C7B0370B4CC75206463E5E5D594E71C2EDFC92DE2E602260CCFB4111667B35`.

Last task status:
The user removed all orphan DENY ACEs from `.codex`, `.agents` and `.git`; restart verification shows zero explicit DENY on all three. Project config/hash, hook absence, TOML parse, PowerShell/Node startup, Wiki-internal CRUD, Git index write/unstage, external create/overwrite/rename/delete denial, valid empty state JSON, clean new sandbox logs, `git diff --check` and Wiki lint all pass. A genuinely independent ordinary project also passed local CRUD with no Wiki hook or `wiki_l3` environment value.

Unfinished items:
No permission-boundary item remains. Optional next actions are a user-started L3 research trial and, only with explicit authorization, pushing the finalized local commit.

P0 focus:
No permission-boundary P0 remains.

Complete unresolved P0 inventory:
None. L3 scientific behavior and downloader trials remain out of scope and require a later user-started task.

Risks:
The user-level config file hash changed during restart even though its selected permission semantics remain `:workspace + on-request + user`, with no global custom profile and no machine requirements. The ordinary control reported host reviewer state `auto_review`; this is a P1 runtime discrepancy from `approvals_reviewer=user`, not evidence that Wiki `wiki_l3` leaked. Shell `Remove-Item` policy is distinct from filesystem ACLs; file deletion was verified through `apply_patch`.

Checks:
All temporary probes and ACL backups were removed. Config SHA-256 is `988956B8D295C72A4A00B71D5698DAE72904CE8C62A94AC1167AB13552CDFE99`; all three special directories have zero explicit DENY; state JSON is 22 bytes, zero NUL and zero principals; the new log segment has zero deny-read parse/apply/setup errors. Internal CRUD/Git index, external mutation denial and ordinary-project isolation pass. Wiki lint: 0 errors, 28 existing warnings, 209 review infos. Protected BibTeX remains unchanged and unstaged.

Next prompt / continuation phrase:
To start the deferred scientific-autonomy trial: `开始 L3 试验：<具体研究问题>`

Recent user decisions:
Wiki-inside sandbox capability is fully writable, but AGENTS governance for raw evidence, PLAN, destructive actions and push remains. Wiki external writes are mechanically unavailable with `approval_policy=never`; external changes are user-manual only. L3 experimentation will be started separately by the user after this boundary passes. Push is not authorized.

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
