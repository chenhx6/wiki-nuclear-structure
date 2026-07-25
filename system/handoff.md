---
type: system-handoff
graph-excluded: true
updated: 2026-07-26
---

# 跨会话交接
## Active handoff

Current active task:
Configure all practical Nature Skills runtime dependencies except API keys, then commit and push the related Wiki records.

Current branch / local commit:
Wiki `main` at `96c3745`, aligned with `origin/main`; final commit and push are explicitly authorized for the three Nature setup records only. User `raw/zotero/wiki-inbox.bib` remains protected and unstaged. Nature Skills clone is at `8d674eb50454d4b49d3e0be625a121ad4863840b`.

Last task status:
Installed the downloader, patent-document and CNIPA/Playwright Python requirements, resolved the existing Gradio compatibility boundary with `pdfplumber 0.11.4` plus `Pillow 10.4.0`, installed Playwright Chromium, and registered the global `academic-search` MCP through an isolated `uv` runtime. No API key was requested, stored or configured.

Unfinished items:
Restart Codex or open a new task before using the newly registered MCP tools. Institutional access still requires the user's authenticated browser session; the configured library entry failed its current network health check and may require campus/VPN routing or manual browser authentication. The previously proposed L3-L4 autonomy design remains a separate future task.

P0 focus:
No dependency-installation P0 remains. When Nature Skills are used for manuscript work, preserve the Wiki evidence policy, paper evidence gate, source/raw locator checks and user scientific judgment.

Complete unresolved P0 inventory:
None for dependency installation. The institution route is configured but not network-verified.

Risks:
API-key routes remain deliberately unconfigured. Scopus/ScienceDirect and other key-dependent providers must not be reported as available. Do not let `nature-downloader` write directly into protected Wiki evidence paths without explicit authorization and source verification, and never store personal email, institutional credentials, cookies or tokens in the public Wiki.

Checks:
Write-entry preflight passed with cleanup exit 0. `pip check` reports no broken requirements; downloader/patent imports pass; Playwright lists Chromium, headless shell and FFmpeg; Node is `v24.18.0`; the citation converter reaches PubMed and CrossRef successfully; `academic-search` is globally registered and enabled. Downloader credentials remain empty. Only protected `raw/zotero/wiki-inbox.bib` and the three authorized system records are dirty.

Next prompt / continuation phrase:
After restarting Codex, verify that the `academic-search` MCP tools appear, then run one small PubMed/CrossRef literature search and one OA-only downloader test outside protected Wiki paths.

Recent user decisions:
User explicitly deferred all API-key applications because they cannot be obtained quickly, supplied a local contact email and two institutional entry candidates for configuration, and authorized the remaining automatic setup plus final commit and push. Personal configuration values must remain outside the public repository.

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
