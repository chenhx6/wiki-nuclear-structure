---
type: system-wip-queue
graph-excluded: true
updated: 2026-07-10
---

# Pending WIP queue

This page tracks pending local WIP/review tasks that still need follow-up work. Keep entries short. Do not store long reports here. `system/review-history.md` records completed human-review rounds; the same task may appear in both places.

## Active entries

No active WIP entries.

## Legacy completed entries

These entries predate `system/review-history.md`. Keep them as legacy context during framework setup; do not backfill or migrate them automatically in this task. Future human-review rounds should be appended to `system/review-history.md`, while queue follow-up remains a separate judgment.

### Sigma-over-I writing-support synthesis
- status: user review finalized; final commit created from the prior `WIP review:` task and ready for push on `main`
- branch: `main`
- commit: current HEAD final `Create sigma-over-I writing-support synthesis`
- files: sigma-over-I project page; sigma-over-I writing-support synthesis; repaired `knowledge/index.md`; `sigma-over-i` and `magnetic-substate-population` concept pages; `spin-alignment-attenuation-factor`; overview; handoff/log/queue
- review needed: none for the current project/synthesis wording round; the low-spin caution remains intentionally bounded rather than universal
- overview/QMD: overview refreshed; `qmd.cmd update`, `qmd.cmd embed -c nuclear-knowledge`, and `qmd.cmd status` succeeded
- next action: optional follow-up is to map the actual P-ADO `sigma/I` code/input convention and calibration-transition strategy before writing code-facing equations
- risks: `.obsidian/` and `raw/zotero/wiki-inbox.bib` remain external/user changes and were not included

### Article10-11 supplemental spin-alignment assumption sources
- status: user review round completed
- execution status: corresponding review-side commit was pushed to `origin/main`
- branch: `main`
- commit: `f4934e7` (`Ingest supplemental spin-alignment assumption sources`)
- files: Ekstrom 1979 and Ionescu 1981 source pages; direct-feeding / compound-nucleus-reaction-model / spin-alignment-attenuation-factor pages; sigma-over-I project; overview; PLAN; handoff/log/queue
- review needed: none for EK79-*, IO81-1..10, or SIO-PROJ-16/17/18/19
- overview/QMD: overview refreshed; `qmd.cmd update`, `qmd.cmd embed -c nuclear-knowledge`, and `qmd.cmd status` succeeded
- next action: optional scientific follow-up is to map the actual P-ADO `sigma/I` code/input convention before writing final equations
- risks: `.obsidian/` and `raw/zotero/wiki-inbox.bib` remain external/user changes and were not included

### Article7-9 sigma-over-I practice sources
- status: user review round completed
- execution status: WIP ingest was amended to a later commit and pushed to `origin/main`
- branch: `main`
- commit: final commit created from prior local `WIP ingest: article7-9 sigma-over-I practice sources for user review`
- files: Chiara 2012, Summary 2013 and Gray 2020 source pages; sigma-over-I project; spin-parity-assignment/TDPAD/g-factor method pages; sigma-over-I concept; index/overview/questions; handoff/log/queue
- review needed: none for CH12-*, SB13-*, G20-* or SIO-PROJ-13/14/15; related method/concept pages remain page-level `unreviewed`
- overview/QMD: overview refreshed; QMD update/embed/status succeeded after sandbox escalation
- next action: map actual P-ADO `sigma/I` code/input convention before writing final equation-level synthesis
- risks: `.obsidian/` and `raw/zotero/wiki-inbox.bib` remain external/user changes and were not included; Summary 2013 `sigma/I = 0.3` stays at guide-level background

### Article4-6 sigma-over-I deorientation/formalism sources
- status: user review round completed
- execution status: WIP ingest was amended to a later commit and pushed to `origin/main`
- branch: `main`
- commit: final commit created from WIP `0e3414d` with message `Finalize article4-6 sigma-over-I source review`
- files: Cejnar 1996, Radeck 2012 and Lauritsen 2025 source pages; new `152Dy` nucleus/experiment pages; deorientation/angular-correlation/tracking-array anchors; sigma-over-I project; index/overview; handoff/log/queue
- review needed: no source/project P0 remains; new `152Dy` nucleus/experiment pages are narrow Lauritsen-derived entries and remain page-level `unreviewed`
- overview/QMD: overview refreshed; QMD update/embed/status succeeded after sandbox escalation
- next action: map actual P-ADO `sigma/I` code/input convention and user-data conditions before writing final equations
- risks: `.obsidian/`, `knowledge/concepts/spin-alignment.md`, and `raw/zotero/wiki-inbox.bib` remain uncommitted external/user changes and were not included

### Sigma-over-I alignment sources
- status: user review round completed
- execution status: corresponding local commit remained unpushed because GitHub/proxy connection failed at that time
- branch: `wip-sigma-over-i-alignment-review`
- commit: `Finalize sigma-over-I alignment source review` local final commit on `wip-sigma-over-i-alignment-review`
- files: Draper 1970, Zobel 1980, Zobel 1983 source pages; sigma-over-I project; overview; handoff/log/queue
- review needed: none identified for DR70-3/6/7, Z80-2/3/10/Fig.5, or Z83 source claims
- overview/QMD: overview refreshed; QMD update/embed/status succeeded after sandbox escalation
- next action: retry `git push origin HEAD:main` or a working proxy push, then map actual P-ADO `sigma/I` input convention and user-data conditions before writing final equations
- risks: `.obsidian/` and `raw/zotero/wiki-inbox.bib` remain uncommitted external/user changes and were not included

## Rules

- Add or update an entry when a task ends as WIP, user-review pending, safe-suspended, not pushed, or has uncertain push status.
- Keep Active handoff short; use this queue for multiple parallel pending WIPs.
- Do not add raw content, source-claim bodies, or long reports here.
- Pending entries only need the latest branch / commit / next action needed to continue review or push; do not preserve every temporary commit/push state here.
- If a WIP commit hash changes after amend or rebase, update the latest branch/commit pointer rather than keeping the old temporary state.
- If a human-review round clearly ends, `system/review-history.md` may receive a new entry even when this queue entry still remains active.
- After a review round is recorded, independently decide whether this queue entry should remain, be updated, or be removed; do not assume a one-way queue-to-history migration.
- If push is skipped or push status is uncertain, keep the task in the pending queue and record that state explicitly rather than guessing completion.
- If the user starts a new ingest while prior WIPs remain unreviewed, keep prior WIPs in this queue instead of overwriting them.
- Before a new ingest/project/synthesis writes files, compare its expected files with active entries. No overlap allows an independent WIP; shared scope continues the original WIP; dependent work records its upstream task/commit; unresolved shared-file overlap is deferred or sent to the user before editing.
- Never record two WIPs as independent when they silently modify the same file. Add a short `depends on` field when dependency is the chosen resolution.
