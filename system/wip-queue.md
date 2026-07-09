---
type: system-wip-queue
graph-excluded: true
updated: 2026-07-09
---

# Pending WIP queue

This page tracks local WIP tasks that are not yet finalized. Keep entries short. Do not store long reports here.

## Active entries

None.

## Completed entries

### Article4-6 sigma-over-I deorientation/formalism sources
- status: user review finalized; WIP ingest amended to final commit and pushed to `origin/main`
- branch: `main`
- commit: final commit created from WIP `0e3414d` with message `Finalize article4-6 sigma-over-I source review`
- files: Cejnar 1996, Radeck 2012 and Lauritsen 2025 source pages; new `152Dy` nucleus/experiment pages; deorientation/angular-correlation/tracking-array anchors; sigma-over-I project; index/overview; handoff/log/queue
- review needed: no source/project P0 remains; new `152Dy` nucleus/experiment pages are narrow Lauritsen-derived entries and remain page-level `unreviewed`
- overview/QMD: overview refreshed; QMD update/embed/status succeeded after sandbox escalation
- next action: map actual P-ADO `sigma/I` code/input convention and user-data conditions before writing final equations
- risks: `.obsidian/`, `knowledge/concepts/spin-alignment.md`, and `raw/zotero/wiki-inbox.bib` remain uncommitted external/user changes and were not included

### Sigma-over-I alignment sources
- status: user review finalized; local final commit created; not pushed due GitHub/proxy connection failure
- branch: `wip-sigma-over-i-alignment-review`
- commit: `Finalize sigma-over-I alignment source review` local final commit on `wip-sigma-over-i-alignment-review`
- files: Draper 1970, Zobel 1980, Zobel 1983 source pages; sigma-over-I project; overview; handoff/log/queue
- review needed: none identified for DR70-3/6/7, Z80-2/3/10/Fig.5, or Z83 source claims
- overview/QMD: overview refreshed; QMD update/embed/status succeeded after sandbox escalation
- next action: retry `git push origin HEAD:main` or a working proxy push, then map actual P-ADO `σ/I` input convention and user-data conditions before writing final equations
- risks: `.obsidian/` and `raw/zotero/wiki-inbox.bib` remain uncommitted external/user changes and were not included

## Rules

- Add or update an entry when a task ends as WIP, user-review pending, safe-suspended, or not pushed.
- Keep Active handoff short; use this queue for multiple parallel pending WIPs.
- Do not add raw content, source-claim bodies, or long reports here.
- When a WIP is finalized and pushed, mark it done or move it to a short completed section.
- If the user starts a new ingest while prior WIPs remain unreviewed, keep prior WIPs in this queue instead of overwriting them.
