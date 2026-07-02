---
name: wiki-evidence-query
description: >-
  Nuclear-structure wiki evidence-based Q&A for answers based on the existing
  knowledge base, including wobbling or transverse wobbling vs signature partner,
  chiral doublet, gamma-soft/gamma-rigid deformation, gamma deformation, A≈130
  nuclei, band structures, and the evidence required by experimental criteria.
  Use when answers must distinguish observation, experimental criteria, model
  results, author interpretation, and synthesis, with traceable sources. Default
  to read-only answering; do not use for paper ingestion, Wiki edits,
  raw/data/image changes, repository governance, file organization, planning,
  Git operations, scripts, automations, or schedulers.
---

# Wiki Evidence Query

Answer evidence-based nuclear-structure questions from the existing Wiki. Keep this skill instruction-only and read-only by default.

## Workflow

1. Follow `AGENTS.md` before all other instructions.
2. By default, read `README.md`, `system/handoff.md`, `system/memory.md`, `system/workflows/query.md`, `system/evidence-policy.md`, and `USER_GUIDE.md`.
3. Read `PLAN.md` only when the question involves phase planning, research priorities, long-term exploration, literature selection, or the user explicitly requests it.
4. Start at `knowledge/index.md`. Then inspect the relevant `concepts`, `observables`, `nuclei`, `bands`, `sources`, and `synthesis` pages.
5. Trace each core claim to a source page or a source marker on a knowledge page. When necessary, check the corresponding `raw/` material for an exact locator, but never modify `raw/`.
6. Apply `system/evidence-policy.md`: keep observations, criteria, model outputs, author interpretations, and synthesis distinct; preserve competing explanations and evidence dependence.
7. If the Wiki lacks adequate attribution, state exactly: “知识库当前未给出足够出处”. Do not fill gaps from memory or guess.

## Answer structure

Use only the sections needed for the question, while preserving the distinctions:

- Brief answer
- Evidence table
- Observed facts / 观测事实
- Experimental criteria / 实验判据
- Model results / 模型结果
- Author interpretation / 作者解释
- Synthesis / 综合判断
- Evidence gaps / 证据缺口
- Suggested follow-up query

In the evidence table, identify the statement type, supporting page or source, precise locator when available, and limitation or competing interpretation.

## Read-only boundary

By default, answer the question only. Do not modify Wiki files, create knowledge pages, rewrite existing pages, update `PLAN.md`, or update `system/handoff.md`. Only perform file changes when the user explicitly requests a file-modification task; route paper ingestion and knowledge-page maintenance to their project workflows rather than this skill.

## Safe suspend

If context, token, 5h quota, or execution headroom is insufficient for stable completion, stop expanding scope. If the task has already produced file changes, follow the project safe suspend rules and update `system/handoff.md` with completed work, remaining work, modified files, risks, and a directly reusable continuation prompt. Never commit or push automatically. Tell the user to wait for quota refresh and then send “继续”.
