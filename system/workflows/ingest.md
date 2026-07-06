---
type: system-workflow
graph-excluded: true
operation: ingest
updated: 2026-07-06
---

# INGEST：来源摄入流程

原则：一次精确处理一个来源；原始文件只读；先建证据链，再做物理解读。

## 策略选择

开始摄入前，从 [ingest-strategies.md](ingest-strategies.md) 选择默认策略，并遵守其中的 Global ingest rules：

- `review-ingest`
- `experiment-ingest`
- `theory-ingest`
- `method-ingest`
- `targeted-ingest`
- `project-ingest`
- `daily-ingest`
- `claim-review-update`
- `data-analysis-bridge`

同一文献可以组合两个直接相关的策略，例如 `experiment-ingest + project-ingest`，但不得借组合策略扩大到用户未要求的页面或结论。用户只需提供目标路径、BibTeX key、策略、研究主题、project 关系、特别注意事项和 commit/push policy；无需重复策略默认清单。

开始新文献前检查 HEAD commit message。若 HEAD 是 active `WIP ingest:` 或 `WIP suspend:`，不得开始下一篇摄入；先按 handoff finalize/amend 当前 WIP，或等待用户明确要求另开分支、放弃 WIP。

## 1. 预检

1. 按 `AGENTS.md` 完成会话启动。
2. 确认目标位于 `raw/`；若不是，只读分析但不正式摄入。
3. 计算 SHA-256，记录文件大小和修改时间。
4. 查找 DOI、题名、作者、期刊、年份和已有 `canonical_source`，避免重复。
5. 若有 Zotero/BibTeX 元数据，记录 citation key、Zotero item key 和 select URI。
6. 检查 `system/vocabulary.md`、现有 aliases 和文件 slug。
7. 判断来源类型，并按 `system/workflows/ingest-strategies.md` 确认 ingest strategy。

citation key 只可在 DOI、题名或文件名能够唯一匹配 BibTeX 条目时写入；无法唯一匹配则留空并在复盘中列出，不得猜测或改写 `.bib`。

## 2. 阅读深度

在来源页标记：

- `metadata-only`：仅获得书目信息；
- `skimmed`：阅读摘要、结论和关键图表；
- `read`：完整阅读正文；
- `deep-read`：核对关键数据、图表、方法和补充材料。

不得把 `metadata-only` 或 `skimmed` 写成已经精读。

## 3. 核结构信息抽取

按来源实际内容抽取，缺失项留空：

- 涉及核素、质量区和核反应；
- 束流、靶核、束流能量、蒸发道、余核；
- 探测装置、触发条件和符合关系；
- 能级、自旋宇称、γ 跃迁能量、相对强度、分支比和不确定度；
- DCO/角分布、线偏振、内转换、寿命等指认证据；
- 转动带或双重带标签；
- 组态指认、形变参数和理论模型；
- 作者的主解释、竞争解释与明确限制；
- 可精确定位的页码、图号、表号或补充材料位置。

## 4. 建立来源页

使用 `system/templates/source-template.md` 创建 `knowledge/sources/<slug>.md`。

每条关键主张标记为：

- 实验事实；
- 实验判据；
- 作者解释；
- 模型结果；
- 我们的推断或综合判断。

无法核实的内容标记 `needs-human-review`。

新建页面默认 `review_status: unreviewed`。页面级人工审阅与 claim-level `needs_review` 分开维护；Codex 不得因用户浏览过页面而自动清除具体 claim 的待审状态。

## 5. 更新领域页面

1. 核素信息更新到 `knowledge/nuclei/`。
2. 具体能带或双重带更新到 `knowledge/bands/`。
3. 物理现象和解释框架更新到 `knowledge/concepts/`。
4. 束流、靶、反应道和装置更新到 `knowledge/experiments/`。
5. 理论框架更新到 `knowledge/models/`。
6. 诊断观测量更新到 `knowledge/observables/`。
7. 实验分析、数据处理或计算方法更新到 `knowledge/methods/`。
8. 新来源与旧来源发生冲突时，并列写入，不静默覆盖。
9. 只有长期可复用的内容才进入综合页。

## 6. 人工复核门

以下变化必须向用户展示后再落为确定结论：

- 新的自旋宇称或组态指认；
- 从“候选”升级为较强的结构解释；
- γ-soft 与 γ-rigid 之间的判断；
- wobbling、chiral doublet 或其他竞争解释的取舍；
- `confidence: high`；
- 概念页或能带页的合并。

只有用户明确确认某条 claim 或明确圈定的一组 claims 已完成复核，Codex 才能把相应 `needs_review: true` 改为 `false`。未复核内容可以帮助定位问题，但不能进入论文级证据池。

## 7. 收尾与 WIP lifecycle

- 更新 `knowledge/index.md` 和 `knowledge/overview.md`；
- 检查是否推进 `knowledge/questions.md` 中的开放问题；
- 向 `system/log.md` 追加 ingest 记录；
- 更新 `system/handoff.md`；
- 执行 `check.md` 中与本次摄入相关的项目。
- 最终复盘列出：修改文件、新增 claims、待人工复核的文件与 claims、缺失原始文献、竞争解释和仍未解决的证据缺口。
- 按选定策略补充对应的专项复盘项目；不得用通用复盘替代策略要求。
- 最终复盘必须按 `system/workflows/ingest-strategies.md` 输出 Human review triage：列出 source-level、claim-level、locator-sensitive、project/synthesis-related 审核点和低风险导航修改，并给出精力有限时最值得先看的 3–5 个位置。多篇摄入必须按每篇分别列 P0/P1。

### 7.1 Ingest completion

摄入主体完成后：

1. 运行 `git status --short`、`git diff --stat`、`git diff --check`；
2. 运行 `python system/scripts/wiki_lint.py --fail-on error`；
3. 检查通过且用户未明确禁止任何本地 commit 时，显式暂存本轮摄入相关文件，不使用 `git add .`；
4. 创建本地 `WIP ingest: <paper short name> for user review` commit；
5. 不 push；
6. 最终复盘列出 WIP hash、message、未 push、待审核文件、待审核 claim ID 和 Human review triage。

WIP ingest 只表示等待用户审核的本地检查点，不表示科学内容已人工复核。若用户明确禁止本地 WIP，保留工作树 diff，并在 diff 较大时提示可能产生 Codex、Git 或文件监听的持续 CPU 负担。

### 7.2 Review finalization

用户审核后：

1. 只根据审核报告修改明确提到的 source、claim、project 或 `review_status`；
2. 不自动清除审核报告未提到的 `needs_review`；
3. 重新运行 Git 检查和 Wiki lint；
4. 重新输出 Human review triage，列明已处理项目、仍保留的 P0/P1 和 paper evidence gate 影响；
5. P0 尚未审核时不建议 final amend 或 push，默认保留 WIP 等待用户确认；
6. 确认 HEAD 是对应的 WIP ingest commit 后，使用 `git commit --amend` 把 WIP 转换为 final commit，不新建额外 review commit；
7. 用户指定 final commit message 时原样使用；未指定时由 Codex 根据实际摄入与审核修改推荐直接相关的 message，并在最终报告中说明；
8. 检查通过后，只有用户允许 final push 时才执行 `git push origin main`；
9. final push 后确认工作树中没有残留该文献摄入相关 diff。

如果 HEAD 不是对应 WIP，或无法确认 WIP 归属，停止并询问用户，不得擅自 amend。Finalization 使用 amend，避免 WIP commit 累积。
