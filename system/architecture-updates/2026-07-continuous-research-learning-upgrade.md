---
type: system-architecture-update
graph-excluded: true
status: validated
created: 2026-07-15
updated: 2026-07-15
upgrade: continuous-research-learning
baseline_branch: main
baseline_commit: 803a19d6a92546475c6a7ab18386b8e1bcb4b45c
implementation_branch: codex/continuous-research-learning-upgrade
validation_status: validated
final_push_target: origin/main
push_authorization: not-authorized
push_state: ready-for-push
---

# Continuous research learning upgrade

This page is the release record for the upgrade from an evidence database with local research workspaces to an auditable continuous research-learning system. It records motivation, approved architecture decisions, phase gates, compatibility, validation, and rollback. It is not the canonical owner of active schema, workflow, evidence, review, query, or Skill rules.

## Current phase and scope

- Current phase: Phase 5 complete — local release closeout at `ready-for-push`.
- Architecture status: `validated`.
- Baseline: `main` at `803a19d6a92546475c6a7ab18386b8e1bcb4b45c`, aligned with `origin/main` and clean at Phase 0 entry.
- Implementation branch: `codex/continuous-research-learning-upgrade`.
- The user-approved continuous Goal execution through Phase 5 is complete on the implementation branch; no push is authorized.
- Phase 1 is `2201f4a`, Phase 2 is `c0d9201`, Phase 3 is `4515497`, and Phase 4 is `25945ab`. Phase 5 records the validated local release state without changing science conclusions or the QMD collection definition.

## Upgrade motivation

The Wiki already supports traceable source ingestion, structured knowledge pages, project and synthesis workspaces, claim locators, evidence boundaries, Human review, and Git-governed finalization. Its default behavior remains closer to a structured evidence database than a stable research-learning loop.

The upgrade aims to make high-value research tasks reliably support deep problem understanding, method/design logic, evidence-chain reconstruction, competing explanations, conditional transfer, failure boundaries, reverse tests, research-question formation, and revision of earlier understanding without allowing provisional Agent reasoning to masquerade as source evidence or accepted knowledge.

The goal is not to create more pages, fields, links, shared-file edits, or longer answers by default.

## Previous behavior

- Source pages record what a paper reports and can support claims, locators, interpretations, model results, and limitations.
- Project and synthesis pages can support cross-source comparison and counter-evidence, but research-like reasoning appears unevenly and is not a stable default ingest loop.
- The four `reading_depth` values record reading completion, while user-level ingest modes have not yet been canonically separated in repository rules.
- Valuable but immature cross-source reasoning has no dedicated controlled owner between transient output and formal project/synthesis knowledge.
- Ordinary Wiki Q&A is evidence-calibrated and should remain direct rather than automatically expanding into a full research-learning workflow.

## Target behavior

- Keep user-selected ingest mode separate from completed `reading_depth`.
- Make standard deep ingest reliably check paper question, motivation, design logic, key evidence chain, assumptions, limitations, relation to relevant knowledge, transfer potential and failure boundaries, competing explanations, reverse tests, research-question potential, revision need, persistence, promotion, and Human review.
- Treat those checks as scientific judgement, not fixed output quotas.
- Allow Agent reasoning to be rich while controlling what is persisted and promoted.
- Add a narrowly governed provisional research-reasoning layer only when losing the reasoning would cause meaningful research loss.
- Keep ordinary Q&A from treating provisional research reasoning as formal evidence.
- Preserve user authority over mode selection, Human review, promotion, Phase transitions, commit finalization, merge, and push.

## User-approved architecture decisions

### 1. Three user-level ingest modes

The canonical names are:

1. 定向问题阅读模式;
2. 标准深入阅读模式;
3. 严格全证据核查模式.

If the user does not specify a mode, use 标准深入阅读模式. The Agent may recommend a switch but may not switch modes without the user's explicit instruction. If the user does not respond to a recommendation, continue in the current mode.

- 定向问题阅读模式 is limited to a user-specified question, section, figure, table, formula, or criterion. It may inspect the target area deeply, must state what remains uncovered, and does not silently become a full-paper or broad synthesis task.
- 标准深入阅读模式 follows the paper's main line and key evidence, checks research-learning opportunities, and persists only scientifically grounded, reusable results.
- 严格全证据核查模式 is user-selected for exhaustive key-evidence, appendix/supplementary, formula/data-chain, broader conflict, or manuscript-grade checking.

These modes do not map one-to-one to `metadata-only`, `skimmed`, `read`, or `deep-read`. A narrowly targeted question may be checked deeply without justifying `deep-read` for an incompletely read paper.

### 2. Completed reading state

Source pages should normally retain:

- completed `reading_depth`;
- covered scope;
- not-covered scope and material caveats.

Default-mode selection and mode-switch recommendations are task-control information and are not repeated permanently in every source. Non-default mode selections may first be retained in WIP, handoff, finalization reports, or pilot records. The pilot must test whether this is sufficient before any `ingest_mode` field is considered.

### 3. Implementation isolation

The upgrade is isolated on `codex/continuous-research-learning-upgrade`. It must not be merged or pushed to `main` without the user's explicit approval.

### 4. Provisional research reasoning

The approved minimum identity is:

- page type: `research-note`;
- directory: `knowledge/research-notes/`;
- Chinese role: 暂定研究推理.

It must not be described as model-subjective knowledge. The directory and page type are not created in Phase 0.

Research notes may preserve high-value grounded but immature cross-source reasoning, conditional transfer, failure conditions, competing explanations, reverse tests, falsification routes, research questions, revision candidates, reusable heuristics, and evidence boundaries. They must not impersonate source facts, author conclusions, reviewed synthesis, adopted project conclusions, stable memory, or ordinary evidence-query sources.

### 5. State-field responsibilities

The implemented responsibilities are:

| Field | Responsibility |
|---|---|
| `status` | General document or page lifecycle. |
| `review_status` | Human-review workflow state. |
| `reasoning_status` | Scientific maturity and disposition of the provisional reasoning. |

A new note should use `review_status: unreviewed` and `reasoning_status: provisional`. `unreviewed` must not be duplicated in `reasoning_status`.

The stable `reasoning_status` values are `provisional`, `promoted`, `rejected`, `superseded`, and `withdrawn`, as implemented in Phase 2. The three fields must not create contradictory sources of truth.

`revised` is a history event, not a stable maturity state. After revision, the note returns to the appropriate stable reasoning state; human-review state remains in `review_status`. Revision history records the reason and triggering evidence.

### 6. Agent creation authority

In an already authorized ingest, reflect, project, synthesis, or other research-writing task, the Agent may create a research note only when the persistence gate is met. Creation is neither review nor promotion. The note must have grounded evidence, explain why it is worth preserving, and appear in Human review triage. Ordinary Q&A does not create research notes automatically.

The user may accept, modify, retain as provisional, reject, withdraw, or request deletion of a draft that has not been formally accepted.

### 7. Query and QMD routing

The MVP continues to use the existing `nuclear-knowledge` QMD collection. Path, page type, `reasoning_status`, query workflow, and the evidence-query Skill must prevent ordinary Q&A from treating research notes as formal evidence.

The two-paper pilot must test this isolation. A separate collection is considered only in Phase 4 if research notes repeatedly crowd ordinary candidates or are misused.

### 8. Human review and research output

- P0 has no per-paper total cap.
- Every P0 remains individually readable, evidence-linked, inference-labelled, and reviewable.
- P0 may be reviewed in batches, but remaining items cannot be hidden, downgraded, or silently promoted.
- Transfer, reverse tests, competing explanations, and research questions are capabilities to evaluate, not quotas to fill.
- A justified decision not to transfer or not to create a research question is valid.
- Persistence and promotion gates constrain knowledge writes, not the Agent's ability to reason.

### 9. Push-state semantics

This record retains final push target, user authorization, validation result, and `ready-for-push`. Actual commit hashes and push success are recorded by Git, Active handoff, and the short log. Do not create a pure status-fix commit merely to write `pushed: true` here.

Phase 0 had no push authorization, and the completed local upgrade still has no push authorization.

### 10. Pilot and performance decisions

The candidates were later fixed for the Goal-authorized pilot:

- method/criterion candidate: Kibédi 2008 BrIcc;
- project-related candidate: Nomura 2022 low-spin wobbling IBFM.

They were not started from the Phase 0 candidate list alone; the later Goal authorization explicitly fixed both papers before Phase 3.

Performance benchmarking is deferred to a separately authorized task in a disposable worktree or otherwise isolated environment. It is not an MVP blocker and must not be mixed with science WIP or the two-paper pilot.

## Canonical ownership

This section records release-level ownership decisions; active rules remain in the listed canonical files rather than this release record.

- Ingest modes and the standard deep-ingest loop: ingest workflow.
- Reading-state fields and research-note type/fields: schema.
- Source analytical reconstruction: ingest workflow and source template.
- Provenance, provisional reasoning, and promotion boundaries: evidence policy.
- Research-note lifecycle and project/synthesis revision: reflect workflow.
- Ordinary versus research-task retrieval: query workflow.
- Human review acceptance checks: workflow owners with `check.md` as derived validation.
- User-facing explanations: USER_GUIDE and USER_GUIDE_DETAIL.
- Evidence-query Skill: thin routing adapter that references canonical owners.
- This architecture update: historical release record only, never an active rule owner.

## Phase roadmap and gates

### Phase 0 — decisions and baseline

Completed in `13d803e`: recorded the clean baseline, approved decisions, implementation branch, deferred decisions, compatibility, and rollback without changing active rules or science content.

### Phase 1 — core governance

Completed in `2201f4a`: separated user modes from reading states and defined the standard deep-ingest loop, analytical-reconstruction boundary, provisional reasoning and promotion boundary, Human review behavior, ordinary/research routing, project/synthesis revision, and canonical ownership.

### Phase 2 — controlled research-note layer

Completed in `c0d9201`: fixed the five-state enum, treated `revised` as a history event, and added the directory/type/template, lifecycle and promotion/rejection rules, single-collection query isolation, lint/check support, and thin Skill/Guide synchronization. No note instance was created because neither pilot passed the persistence gate.

### Phase 3 — two-paper pilot

Completed in `4515497` with Kibédi 2008 BrIcc and Nomura 2022 low-spin wobbling IBFM. The pilot added auditable paper question, design logic, evidence chain, analytical reconstruction, transfer/failure/reverse-test assessment, and persistence decisions without changing existing claim IDs.

## Phase 3 pilot outcome

### Kibédi 2008 BrIcc

- Existing evidence quality was sufficient; the source already contained formulas, uncertainty boundaries, vacancy/interpolation limits and canonical method links.
- The supplement reconstructs the data-evaluation design and identifies transfer/failure conditions for ICC-based mixing-ratio inference.
- No research note was justified: the transferable result is source-grounded and already owned by `internal-conversion-analysis`; no new cross-source hypothesis would be lost.
- No project/synthesis/overview update was justified.

### Nomura 2022 low-spin wobbling IBFM

- Existing evidence quality was sufficient; the source already separated model results, experimental comparisons, author interpretation, exceptions and limitations.
- The supplement reconstructs the EDF-to-IBFM-to-electromagnetic-observable reasoning chain and makes the model-transfer boundary explicit.
- No research note was justified: the high-value cross-source question and competing-model boundary are already owned by the low-spin-wobbling project and synthesis; a note would duplicate them.
- No project/synthesis/overview update was justified because no evidence matrix or current conclusion changed.

### Pilot review and cost

- Science P0: none identified.
- P1 review completed on 2026-07-15: the user accepted both `Analytical Reconstruction` sections without scientific objection. Both source pages returned to `human-reviewed`; existing claim IDs and claim-level `needs_review` were unchanged.
- Science-content files changed: two source pages. Shared science pages changed: zero. Research notes created: zero.
- The pilot demonstrates that “no reliable new persistent inference” is a valid outcome and that the new loop need not create extra pages.

### Phase 4 — revision and validation

Completed in `25945ab`: tightened nonempty evidence and promotion/review consistency checks; validated ordinary-Q&A exclusion in both query workflow and evidence-query Skill; verified that user mode remains separate from reading completion; and retained the existing single QMD collection.

## Phase 4 validation result

- Wiki lint: 0 errors; 11 pre-existing reaction/element warnings; two expected Human-review infos for pilot sections.
- Unit/integration tests: 9 passed, including invalid maturity state, missing promotion target, empty grounded evidence, promoted-without-review, and ordinary-query exclusion contract.
- QMD: available with the existing `nuclear-knowledge` single collection; status was read only. No research-note Markdown instance exists, so current retrieval cannot surface one. The workflow/Skill path/type filter and grounded-source readback contract are in place for future notes.
- Collection decision: retain one collection for MVP. There is no observed crowding or misuse evidence that would justify a second collection; real-note retrieval behavior remains a future operational observation.
- Ingest modes and reading state: canonical rules and derived guidance consistently separate them; residual language that preassigned a depth state was removed.
- Project/synthesis promotion: no pilot evidence changed formal conclusions, so the no-update gate worked; no provisional reasoning was silently promoted.
- Human review: P0 remains uncapped and fully identifiable; the pilot produced no P0 and two scoped P1 sections. Lint is explicitly structural, not scientific approval.
- Safe suspend/recovery: existing branch/WIP/handoff rules remain compatible; no runtime suspend was required in the pilot.
- Promoted-note backlink behavior is structurally enforced but cannot be demonstrated on a real note because neither pilot met the creation gate. This is a transparent deferred operational validation, not a reason to create a synthetic knowledge page.

### Phase 5 — release closeout

Completed locally: finalized this release record, compatibility and validation results, derived guidance and short state records; refreshed the existing QMD index after the two-source pilot; audited checks and staged files; and stopped at `ready-for-push`. Push remains explicitly unauthorized.

## Release outcome

- The Wiki now has a canonical default standard deep-ingest loop that evaluates understanding, evidence-chain reconstruction, conditional transfer, failure boundaries, competing explanations, reverse tests, research questions, revision need, persistence and Human review without imposing output quotas.
- User ingest modes and completed `reading_depth` are separate concepts; source pages record actual coverage rather than inferred task mode.
- The controlled `research-note` layer exists with distinct lifecycle, review and scientific-maturity fields. No real note was created because the pilot persistence gate rejected duplication and low-value persistence.
- Ordinary Q&A excludes research notes by path/type contract; research tasks must label provisional use and return to grounded sources. Static tests pass; ranking behavior with a genuine future note remains deferred.
- P0 has no total hard cap and cannot be hidden by aggregation. The pilot identified no P0; its two scoped P1 analytical sections were subsequently accepted by the user.
- Project, synthesis and overview were not mechanically rewritten; neither pilot changed their formal knowledge state.

## Compatibility and migration

- New ingests use the implemented workflow after this branch is reviewed and integrated.
- Existing sources are upgraded only when reused, reviewed, or admitted to paper evidence.
- Do not infer historical user mode from `reading_depth`.
- Do not backfill user mode across old sources.
- Do not create research notes retrospectively in bulk.
- Do not convert old Personal Notes mechanically.
- Existing claim-kind variants remain forward-compatible until a separately reviewed migration policy exists.
- Do not add new frontmatter to all historical pages.
- Project and synthesis pages change only when evidence causes a real knowledge revision.
- QMD continues with the existing collection during the MVP; reconsider separation only if genuine notes later crowd or contaminate ordinary retrieval.

## Rollback strategy

- Keep implementation changes separated by phase so an unsuccessful phase can be reverted without resetting user work.
- If Phase 1 fails, revert governance changes without touching science pages.
- If Phase 2 fails before real notes exist, remove the unused infrastructure. If notes exist, retain read-only compatibility until they are migrated or deliberately disposed of.
- If a pilot fails, preserve correct source evidence, mark provisional notes rejected or withdrawn as appropriate, and do not promote the failed workflow.
- If ordinary Q&A misuses research notes, restore default exclusion and pause routing expansion.
- If patch or watcher performance becomes unreliable, safe suspend and move benchmarking to the separately authorized isolated task.
- Do not reset, clean, overwrite, or silently delete user work.

## Deferred decisions

- Final `reasoning_status` schema enum: resolved in Phase 2 as the five user-approved stable values; human review remains solely in `review_status`.
- Real-note retrieval ranking and promoted-note operational backlink behavior: evaluate when a genuine research note passes the creation gate; do not manufacture one for testing.
- Independent QMD collection: not justified by the current MVP evidence; reconsider only if genuine notes crowd or contaminate ordinary retrieval.
- Performance benchmark: separate future task requiring explicit authorization.
- The two pilot `Analytical Reconstruction` sections completed focused human review on 2026-07-15; this acceptance is recorded independently from the architecture validation.

## Implementation and validation record

- Phase 0 baseline commit: `803a19d6a92546475c6a7ab18386b8e1bcb4b45c`.
- Phase 0 checkpoint: `13d803e Record continuous research-learning upgrade Phase 0`.
- Phase 1 implementation: `2201f4a Define continuous research-learning core governance`.
- Phase 2 implementation: `c0d9201 Add controlled provisional research notes`.
- Phase 3 implementation: `4515497 Pilot continuous research learning on two sources`.
- Phase 4 implementation: `25945ab Validate continuous research-learning isolation`.
- Phase 5 implementation: local release/closeout commit recorded by Git; this file intentionally does not self-record its own commit hash.
- Pilot result: two existing sources supplemented; no science P0, two scoped P1 sections later accepted by the user, no research note, and no shared project/synthesis/overview change.
- Validation result: after release cleanup, Wiki lint reports 0 errors, 11 known warnings and 0 info; 9 unit/integration tests pass; QMD update/embed/status succeeds in the unchanged single collection; Git and EOL audits pass.
- Final push target: `origin/main`.
- Push authorization: not authorized.
- Push state: `ready-for-push` locally; no push has been attempted.

## Phase 0 acceptance

- Ten architecture decisions are recorded.
- The implementation branch is isolated from `main`.
- The baseline is recorded.
- No Phase 1 rule, science content, research-note directory, schema, template, workflow, Skill, Guide, check, QMD configuration, pilot, benchmark, commit, or push is performed.
- Phase 0 stops for a user decision before Phase 1.
