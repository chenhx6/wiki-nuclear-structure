---
type: system-handoff
graph-excluded: true
updated: 2026-07-07
---

# 跨会话交接

## Active handoff

Current active task:
Awaiting user review of local framework commit 769b9ab, Optimize Wiki ingest startup and recap budget.

Current branch / local commit:
main; local framework commit 769b9ab created and not pushed.

Last task status:
Framework optimization completed. Active-only handoff, log tail-only rule, QMD deferred policy, no unfiltered recursive scan rule, compact recap rule, active summary sync rule, PDF staged evidence reading, ingest-strategies split, and overview staged update policy were implemented.

Unfinished items:
User should review P0 focus files before push.

P0 focus:

1. AGENTS.md: startup order, README stable-entry rule, active handoff, log tail-only, QMD deferred, no recursive scan, compact recap, automatic handoff/log closeout, safe suspend/checkpoint.
2. system/workflows/ingest-strategies.md: runtime short rules, detail meaning, ordinary single-paper ingest definition, multi-paper sequential ingest rule, PDF staged evidence reading, active summary, overview deferred, compact triage.
3. system/workflows/ingest.md: ordinary ingest no longer forces QMD embed or overview rewrite, while preserving deep source reading, correct reading-depth labels, and safe suspend if core reading is incomplete.
4. system/handoff.md and system/archive/handoff-history-2026-07.md: active handoff is short and prior history is preserved.

Remaining P0:
none identified.

Risks:
Do not stage .obsidian/graph.json, raw/zotero/wiki-inbox.bib, raw PDFs, source claims, review statuses, PLAN.md, science knowledge pages, lint scripts/config/tests, or unrelated files.

Next prompt / continuation phrase:
继续审核 Optimize Wiki ingest startup and recap budget 的 P0 focus；当前 commit 为 769b9ab，尚未 push。

Recent user decisions:
Keep default deep PDF evidence reading; optimize only startup overhead, QMD refresh, recursive scans, strategy loading, overview rewrites, and recap length. Do not treat workflow detail loading as PDF reading depth. Future normal task completion should automatically refresh Active handoff and append a short log; long or incomplete tasks should safe suspend with a continuation prompt.

## Archived handoff history

Full pre-optimization handoff history was preserved in `system/archive/handoff-history-2026-07.md`. Do not read archive by default; only read it when the user asks for historical audit or the active handoff is insufficient to resolve a concrete conflict.
