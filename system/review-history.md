---
type: system-review-history
graph-excluded: true
updated: 2026-07-10
---

# Review history

This page tracks completed human-review rounds. A review round is recorded when the user's substantive review has clearly ended. Git commit, push, merge, overview, QMD, task closure, and paper readiness are not review triggers.

## Completed review rounds

<!-- Append real completed human-review rounds here. Do not backfill old history during framework setup. -->

## Entry template

```markdown
### YYYY-MM-DD — <review task name> — round <N>

- review scope:
- user decisions:
- corrections requested:
- unresolved issues:
- next action:
- related pages:
- review commit message:
```

## Rules

- Create an entry only after a substantive human-review round has clearly ended.
- Do not require a fixed trigger phrase; judge the entire user message and context.
- If review completion is ambiguous, do not create an entry.
- Review history records the human-review event, not commit/push/finalization/overview/QMD history.
- Review history and Pending WIP may coexist for the same task.
- A completed review round does not require the task to be closed.
- Support multiple rounds by appending new dated entries; do not overwrite earlier rounds.
- Keep entries short and index-like; do not copy long review reports.
- Do not store raw source text or full claim bodies here.
- Use this page to answer questions such as "which review rounds were completed recently?".
- `review commit message` identifies the commit that implements the decisions from this human-review round. It does not imply task closure, finalization, or push completion.
- Record `review commit message` only when a real review commit exists or is being created in the same workflow; do not use placeholders.
- Do not record WIP/review/final commit hashes or push status here.
- If the user explicitly forbids a commit or Git safety blocks commit creation, omit `review commit message` and record the remaining action in queue/handoff instead.
- Do not backfill old completed reviews unless the user explicitly requests a historical audit.
