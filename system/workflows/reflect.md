---
type: system-workflow
graph-excluded: true
operation: reflect
updated: 2026-07-08
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


## Stage 2.5：Project / synthesis active summary

大型 project 或 synthesis 页面应维护短的 `Agent active summary` / `Active summary for agents`，用于帮助后续任务定位相关 section 和减少启动开销。Active summary 不得替代 source locator、project/synthesis 主体或原文证据。

普通单篇摄入只需要读取 active summary 和相关 section；正式 project-level synthesis / cross-project synthesis 才默认完整读取相关 project/synthesis。若本轮实际修改 project/synthesis 主体、添加 evidence row/source relation/evidence gap/next action，必须同步最小更新 active summary；用户明确要求补充 project/synthesis 时，不得只改 active summary。给现有大型页面新增 active summary 时，只摘录已有页面结构和已有结论，不新增科学判断，并在 Human review triage 中列为 P1。
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

主结论、evidence matrix 归类、用户数据解释、创新点候选和 paper evidence gate 候选通常属于 P0/P1。Planning notes、follow-up sources 与低风险导航可归入 P2/P3。最终复盘采用 compact final recap；P0 分为 `P0 focus: top 3-5` 和 `Remaining P0`，P1 最多逐项列 5 个最重要位置，P2/P3 聚合，并给出“精力有限时建议先看”的 3-5 个具体位置。

综合主体完成、等待用户审核时，若用户未明确禁止任何本地 commit，按 `AGENTS.md` 创建单个本地 `WIP review: <task short name> for user review`，不 push，并在 `system/wip-queue.md` 写入或更新 pending entry。queue 只保留继续审核所需的最新 branch/commit/next action；若后续 amend/rebase 改变 WIP hash，只更新到最新 commit。用户审核完成并要求 final commit/push 后，必须把该 WIP amend 为 final commit，不得另建 review/final commit；用户指定 final message 时原样使用，未指定时由 Codex 推荐直接相关的 message 并在最终报告中说明。

若上一轮处于 project review、synthesis review、cross-project synthesis review、waiting for user review、waiting for user P0/P1 review 或 `WIP review:` 状态，且用户给出审核意见并表示“审核完毕”“已审核”“除以上几点外无问题”“除以上两点外无问题”“P0/P1 已审核通过”“可以提交”“请 commit/push”“审核完毕，请 commit/push”等同义表达，应自动识别为 `review-finalization request`。除非用户明确说“不要更新 overview”“不要刷新 QMD”“不要 push”“只修改不 finalization”“只修改，不提交”“只 commit，不 push”，默认执行：按审核意见做最小修改，处理用户明确确认范围内的 `needs_review`，确认无 unresolved P0/locator gaps 后更新 `knowledge/overview.md`，执行 QMD refresh，运行检查，将对应 WIP amend 为 final commit，默认 push，在同一个 finalization 流程中更新 queue，并在任务真正完成、成功 push 或被明确关闭时写入 `system/review-history.md`，刷新 Active handoff，追加 short log，并在最终复盘报告 overview/QMD/commit/push/handoff/queue/review history/log 状态。

若仍有 unresolved P0、locator gaps、审核意见未落实、审核意见无法唯一映射到具体 project/synthesis statement、project/synthesis 仍存在高风险不确定内容，或 HEAD 不是对应 WIP 且无法确认归属，不得强行 finalization；应停止并报告阻塞，必要时 safe suspend。若用户明确不要 overview/QMD/push/只修改不 finalization，或 push 状态无法确认，则保留该任务在 `system/wip-queue.md`，不得写入 `system/review-history.md` 的 completed 区。

Project、synthesis、cross-project synthesis 或 framework 任务正常结束后，必须自动刷新 `system/handoff.md` 的 Active handoff 并向 `system/log.md` 追加一条简短记录；用户不需要每次手动要求。Active handoff 写当前任务状态、commit/push 状态、未完成事项、P0/P1 审核重点、风险和下一步；若任务结束为 WIP、未 push、push 状态 uncertain 或等待审核，同步更新 `system/wip-queue.md`；review 完成且真正 closed 的任务写入 `system/review-history.md`；`system/log.md` 只写短事件，不保存长复盘。

若综合任务执行余量不足、检查失败需要用户决策、project/synthesis 修改未完成，或无法可靠完成，应进入 safe suspend：停止新增科学 claim，记录已完成步骤、已修改文件、未完成项、未核查 locator / claim gaps、P0/P1 风险和 continuation prompt；必要时创建本地 WIP checkpoint，但不 push。
