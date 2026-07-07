---
type: system-policy
graph-excluded: true
updated: 2026-07-05
---

# 论文级证据门

本规则用于判断 Wiki 内容能否进入论文级证据池。它不是论文写作模板，也不表示当前 Wiki 已完整覆盖文献。

## 科学主张准入条件

论文正文使用 Wiki 支撑科学主张时，至少满足：

1. 来源页经过页面级人工复核，或该具体 claim 已由用户明确复核；若 claim 仍标记 `needs_review: true`，页面级 `human-reviewed` 不能替代该 claim 的明确复核；
2. claim 有精确 locator，例如页码、图号、表号、能级、跃迁或数据位置；
3. 明确区分 observed fact、experimental criterion、model result、author interpretation 和 synthesis；
4. 关键解释已经检查竞争解释或完成反向检验；
5. 回到原始 source 和必要的 raw 原文，不能用 synthesis 代替原始文献；
6. citation key 已存在；缺失时只能列为待补，不得编造；
7. 未人工复核的 claim 只能作为阅读线索，不得写成确定结论。

Wiki 未收录某类文献，只能写“当前知识库未覆盖”。不得据此声称“没有相关工作”“文献已经完整覆盖”或“一篇不漏”。

## Human review triage gate

任何准备进入 paper evidence gate 的 claim、project statement、synthesis-supporting statement 或 data-analysis-derived statement，默认必须列为 P0 或 P1 审核对象。P0/P1 人工审核是准入的必要步骤；未完成时，不得描述为“可直接用于论文”“可直接作为论文结论”“已经进入 paper evidence gate”或“无需回原文引用”。

Synthesis 可以组织跨来源思路，project 可以推进证据链，但两者都不能替代 source 和原文 locator。论文写作仍须回到原始来源，并满足本文件的全部准入条件。P0 尚未审核时，不建议把对应 WIP amend 为 final commit 或 push。

进入 paper evidence gate 的最终复盘应采用控长 triage：P0 focus 先列 top 3-5，Remaining P0 压缩列出，P1 最多列 5 个最重要位置，P2/P3 聚合；每个 P0/P1 仍必须保留文件、claim/section、locator、审核事项和风险。

## 投稿前漏引检查

投稿前至少检查：

1. 已精读 Wiki 中的相关 source 和 synthesis；
2. 更大的本地全文语料或文献库；
3. 必要时在线学术检索；
4. 记录检索式、检索日期、数据库或语料范围及覆盖限制。

本检查完成前，不得把 Wiki 的来源集合描述为领域完整书目。

## 未来写作 Skill 接口

当前阶段只预留接口，不创建写作 Skill。

未来写作 Skill 可辅助 literature review、introduction/background、创新点候选梳理、claim-to-paragraph、related-work 比较和 evidence-table-to-paragraph。它应优先读取：

- `README.md`、`AGENTS.md`；
- `system/evidence-policy.md`、本文件和 `USER_GUIDE.md`；
- 相关 source、synthesis、concept、observable、nucleus 和 band 页面；
- `.bib` citation key 信息；
- 用户提供的数据处理结果和人工确认结论。

生成论文级文字前必须检查 source、locator、claim kind、citation key、人工复核状态、竞争解释/反向证据，并确认没有把 synthesis 当作原始文献。

允许输出草稿段落、证据表、创新点候选、related-work 对比、引用候选及缺失证据/待人工确认清单。不得自动：

- 宣称文献完整覆盖；
- 把未复核 claim 写成确定结论；
- 把 synthesis 当作原始文献引用；
- 编造 citation key 或实验数据；
- 替用户决定最终创新性；
- 修改论文正文或提交 Git，除非用户明确要求。

满足以下条件后再考虑创建写作 Skill：

- source/synthesis 层已经较稳定；
- citation key 基本补齐；
- 本证据门已经实际执行；
- 至少存在一个真实 project 或 synthesis 闭环案例；
- 用户已有数据处理结果或明确写作目标。

候选名称仅作接口记录：`wiki-paper-draft`、`wiki-literature-review`、`wiki-innovation-map`、`wiki-claim-to-paragraph`。
