---
type: system-workflow
graph-excluded: true
operation: reflect
updated: 2026-07-06
---

# REFLECT：综合与反向检验

## Stage 0：反证优先

在形成结论前主动寻找：

- 与目标解释不一致的跃迁、寿命或强度行为；
- 支持替代模型的计算或实验；
- 不满足判据前提的情况；
- 同一实验数据的不同解释；
- 来源之间并非独立的证据链。

未找到反证时，写明“未找到”而不是“没有反证”。

## Stage 1：证据矩阵

建议按下表组织：

| 主张 | 支持证据 | 反证/限制 | 替代解释 | 来源独立性 | 当前置信度 |
|---|---|---|---|---|---|

对 wobbling、chiral doublet、γ-soft/γ-rigid 等主题，不能省略“替代解释”和“判据前提”。

## Stage 2：深度综合

- 完整读取关键来源页，必要时回到 raw 原文；
- 识别哪些是观测，哪些是解释；
- 说明模型依赖、参数依赖和约定；
- 使用 `system/templates/synthesis-template.md` 写入综合页。

## Stage 3：Gap Analysis

寻找：

- 只有单一或非独立来源支持的重要主张；
- 缺少精确 locator 的关键数值；
- 缺少寿命、偏振、角关联等区分性观测；
- 多次出现但尚无独立页面的核素、能带或概念；
- 可能改变结论的新实验或计算。

## Stage 4：人工决策

涉及 `confidence: high`、概念合并或研究方向决策时，展示证据矩阵并等待用户确认。

若综合结果将用于论文级主张，还必须通过 `system/paper-evidence-gate.md`：回到原始 source/raw、检查 locator、claim kind、人工复核状态、citation key 和竞争解释。综合页自身不能替代原始文献。

## Stage 5：Human review triage

Project、synthesis 或跨来源 reflect 完成后，必须按 `system/workflows/ingest-strategies.md` 的统一格式输出 Human review triage。至少评估：

- synthesis 主结论和 “What is established vs what is not”；
- project evidence matrix 中 supporting/counter/alternative source 的归类；
- cross-source interpretation 和 “Current Wiki understanding”；
- 需要回 source/locator 核对的位置；
- 可能过度裁决、把模型解释写成事实，或把 synthesis 写成 paper conclusion 的段落；
- Motivation/why this matters 中可能过强的判断；
- innovation candidate notes、data-analysis bridge 和争议性解释总结。

主结论、evidence matrix 归类、用户数据解释、创新点候选和 paper evidence gate 候选通常属于 P0/P1。Planning notes、follow-up sources 与低风险导航可归入 P2/P3。最终复盘必须列出全部 P0、最重要的 P1 和“精力有限时建议先看”的 3–5 个具体位置。

综合主体完成、等待用户审核时，若用户未明确禁止任何本地 commit，按 `AGENTS.md` 创建单个本地 `WIP review: <task short name> for user review`，不 push。用户审核完成并要求 final commit/push 后，必须把该 WIP amend 为 final commit，不得另建 review/final commit；用户指定 final message 时原样使用，未指定时由 Codex 推荐直接相关的 message 并在最终报告中说明。
