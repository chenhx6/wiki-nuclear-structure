---
type: output
title: Continuous Research-Learning v2 compactness and release audit
created: 2026-07-28
updated: 2026-07-28
status: provisional
review_status: unreviewed
tags: [governance, l3, l4, weekly-self-test, audit]
---

# Continuous Research-Learning v2 compactness and release audit

## Scope

Audit the canonical ownership, trigger logic, weekly self-test behavior, `131Ce` L3/L4 pilot, permissions, Git publication state, and stale/duplicated guidance. No automation was created or enabled.

## P0

1. **Remote publication:** blocked at Git authentication. Codex bundled Git 2.53 with command-scoped `GIT_EXEC_PATH` can read `origin/main`, but non-force push dry-run exits 128 without a usable diagnostic. The audited release candidate preserves fast-forward ancestry and contains no user PDFs or Zotero changes. System Git 2.55, force push and credential reconfiguration were not used; no remote mutation or tag creation occurred.
2. **Formal science status:** all lifetime-informed physical conclusions remain provisional. Li 2004 Table 1 claims LI04-1–4 passed claim-level human visual review; LI04-5, the source page as a whole, band mapping and model interpretation remain unreviewed or review-on-use. Singh/Li dependency and Petrache HD identity are isolated in data lineage.
3. **Permission/raw:** `.codex/config.toml`, ACLs, hooks, user config and other projects were not changed. The three user PDFs and `wiki-inbox.bib` were read-only and excluded from staging.

## P1

- `system/workflows/autonomous-research.md` remains the sole full owner of L0–L4, statuses, weekly self-test and manual L4 gate.
- `USER_GUIDE.md` no longer carries a second level-by-level definition; it provides trigger examples and a canonical link.
- The architecture update was compressed from a duplicate operating manual to a decision record, permission-repair conclusion, pilot result and release state.
- The isolated release branch identifies itself as v2 while explicitly recording `local-release-candidate-auth-blocked`; remote publication is not claimed.
- query/ingest/reflect and Wiki evidence-query Skill are short routers; `check.md` remains executable acceptance criteria rather than a second workflow.

## Weekly self-test dry runs

| Scenario | Simulated decision | Expected persistent effect | Result |
|---|---|---|---|
| No material finding | self-check finds no claim change | no branch, file or empty commit | pass |
| High-value competing explanations | question can change core belief and has testable alternatives | enter scoped L3; report milestone/stop reason | pass |
| Real-data analysis required | L3 identifies a data-dependent hypothesis | create `candidate-L4`, checkpoint and safe suspend; wait for manual start | pass |
| Existing review WIP | completed-but-awaiting-review scientific WIP exists | do not stack a second unreviewed scientific commit; report/continue read-only | pass |

These are policy path dry runs against the canonical workflow, not evidence that an external scheduler executed. No automation receipt exists.

## De-duplication audit

- Full level table: one owner (`autonomous-research.md`).
- Status vocabulary and L4 gate: one owner.
- User guide: examples only.
- Architecture update: historical decision/result only.
- Routers: links and task-specific responsibilities only.
- No second questions, failure, decision, project or output system was introduced.

## `131Ce` L3/L4 acceptance

- L3 formed a falsifiable competition matrix and identified the highest-information lifetime source.
- L4 used published numerical data, hashes, units, uncertainty/limit semantics, code, tests, negative checks and belief revision.
- Workflow verdict: passed.
- Scientific verdict: provisional; configuration/signature remains leading, γ-soft core response is strengthened but not decisive, shape coexistence is a nuclear-level candidate rather than a thesis-band conclusion, chirality/wobbling remain unsupported.

## Release recommendation

The Li 2004 claim-level P0 review is complete and the user has authorized local finalization. Build and validate the local release candidate, but do not claim a remote release or create/push the tag while direct-main authentication remains blocked. Once authentication works, fresh-fetch, verify fast-forward ancestry, push `main`, wait for Wiki lint, and then create the annotated tag without force pushing.
