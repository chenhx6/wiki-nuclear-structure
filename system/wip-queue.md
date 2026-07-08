---
type: system-wip-queue
graph-excluded: true
updated: 2026-07-08
---

# Pending WIP queue

This page tracks local WIP tasks that are not yet finalized. Keep entries short. Do not store long reports here.

## Active entries

### Sigma-over-I alignment sources
- status: waiting for user P0/P1 review
- branch: `wip-sigma-over-i-alignment-review`
- commit: `7b1e52a` (`WIP ingest: sigma-over-I alignment sources for user review`)
- files: sigma-over-I/P-ADO source, project, concept, method, observable, index, questions, handoff and log changes created by the WIP ingest
- review needed: Draper DR70-3/6/7; Zobel 1980 Z80-2/3/10; Zobel 1983 Z83-5/8/9; project wording in How This Supports P-ADO / NST Introduction
- overview/QMD: deferred until review-finalization
- next action: user review, then use the review-finalization trigger to amend/finalize the WIP ingest
- risks: do not push this WIP before user review; do not mix it into framework commits on `main`

## Completed entries

None yet.

## Rules

- Add or update an entry when a task ends as WIP, user-review pending, safe-suspended, or not pushed.
- Keep Active handoff short; use this queue for multiple parallel pending WIPs.
- Do not add raw content, source-claim bodies, or long reports here.
- When a WIP is finalized and pushed, mark it done or move it to a short completed section.
- If the user starts a new ingest while prior WIPs remain unreviewed, keep prior WIPs in this queue instead of overwriting them.
