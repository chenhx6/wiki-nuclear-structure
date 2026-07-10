---
type: system-workflow
graph-excluded: true
operation: ingest
updated: 2026-07-10
---

# INGEST：来源摄入流程

原则：一次精确处理一个来源；原始文件只读；先建证据链，再做物理解读。

## 策略选择

开始摄入前，默认只读取 [ingest-strategies.md](ingest-strategies.md) 运行时短规则，并遵守其中的共同规则。普通单篇摄入不默认读取 [ingest-strategies-detail.md](ingest-strategies-detail.md)；这里的 detail 指 workflow 教程、策略说明、长示例、复杂案例和历史说明，不是 PDF 阅读深度。只有用户要求解释策略、修改 workflow、短规则不足以判断、要求 detailed workflow recap / detailed strategy-policy audit，或明确要求查阅详细教程时才读取 detail。

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

普通单篇摄入指：一篇目标文献、明确 PDF 路径、明确 BibTeX key、明确摄入策略、明确研究主题、明确 project 关系，且不要求跨文献综合、修改 workflow、解释摄入策略、detailed workflow recap 或 detailed strategy-policy audit。普通单篇摄入不默认读取 detail 教程，但这不表示降低 PDF 阅读深度。

多篇摄入不自动等于复杂摄入。若用户一次给出多篇文献但要求逐篇摄入，Codex 应按“一篇一篇顺序摄入”执行；每篇都必须保持 source note、claim kind、locator、needs_review、project relation 和 Human review triage 标准，并有自己的 source-level / claim-level 审核重点。不得因为多篇文献在同一提示词中出现，就合并成粗略批处理。只有多篇之间需要跨文献比较、冲突证据判断、project/synthesis 大综合、策略选择不明确，或用户要求 detailed strategy-policy audit 时，才读取 detail 教程。

开始新文献前检查 HEAD commit message，并在任务涉及未完成 WIP、review continuation 或非串行工作时读取 `system/wip-queue.md`。若 HEAD 是 active `WIP ingest:` 或 `WIP suspend:`，不得在同一分支直接开始下一篇摄入；先按 handoff/queue finalize/amend 当前 WIP，或等待用户明确要求另开分支、分离 pending WIP、放弃 WIP。

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
## 2.1 PDF staged evidence reading

默认正式文献摄入保持深度读取，不应停留在 `metadata-only` 或 `skimmed`；普通正式摄入至少应达到 `read`。涉及核心争议、关键实验、重要理论框架、project/synthesis 主证据链的文献，应以 `deep-read` 级核查为目标。Reading-depth 标记必须反映实际完成范围，不得把 `metadata-only` 或 `skimmed` 写成 `read` / `deep-read`。

Staged evidence reading 只是阅读顺序优化，不是降低摄入标准，也不是默认快速 skim。可以节省的是启动治理文件、handoff/log、QMD、无过滤扫描、过长 workflow 和超长复盘；不能节省的是核心证据读取、locator、claim kind、关键图表/公式/数值核查。

1. 先读取 title、abstract、introduction、conclusion/summary，建立论文主线。
2. 再识别 sections、experiment/theory/method/results/discussion 边界，以及 figures、tables、equations、appendix 和 supplemental references。
3. 对 key claims 相关的 method/results/discussion、figures/tables/equations/captions 深入读取，重点核查 transition、spin/parity、multipolarity、mixing ratio、ADO/DCO、polarization、lifetime、B(E2)/B(M1)、wobbling energy、model parameters、PES、calculated spectra 等高风险内容。
4. 每条 key claim 回查 locator；locator 不确定且影响核心判断时保留 `needs_review: true`。
5. token 或执行余量不足时进入 safe suspend，写明已完成读取阶段、未完成 section/figure/table/claim locator 和下一轮继续提示词，不得省略核心读取或把未完成读取伪装成完成。

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

## 3.1 Scope and nucleus-page decision

Do not use mass region alone as an exclusion or inclusion criterion.

During ingest, decide whether to create or update a source page, nucleus page, band page, concept page, method page, or project link based on:

1. source-supported low-energy nuclear-structure information;
2. reusable level-scheme, band-structure, transition, spin-parity, configuration-assignment, collective-motion, or competing-interpretation content;
3. reusable experimental-observable or analysis-method content, such as angular distribution, angular correlation, DCO ratio, linear polarization, ADO, mixing ratio, or alignment;
4. comparative value for current or future low-energy nuclear-structure questions;
5. explicit user-declared priority in the current request or repository records.

A source outside the current main research anchor may still justify lightweight nucleus, method, concept, band, or project pages if it contains reusable, source-supported nuclear-structure information. If a source is kept source-only, the reason must be evidence density, reuse value, or task scope, not mass region alone.

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

- 更新 `knowledge/index.md`；`knowledge/overview.md` 按阶段性更新规则判断是否 deferred。
- 普通单篇摄入如果只是新增 source、少量 claims 或最小 project relation，overview update 可以 deferred；最终复盘写明 `overview update deferred`、原因和建议补跑时机。
- 新建或显著更新 project/synthesis、批量摄入、主题知识地图结构性变化、paper evidence gate 或 major concept map 变化，或用户明确要求时，才更新 overview。
- 若实际修改大型 project/synthesis 主体、添加 evidence row/source relation/evidence gap/next action，必须同步最小更新该页 `Agent active summary`；如果页面没有 active summary 且本轮实际修改该页，应创建短 summary。
- QMD refresh 不是普通单篇摄入固定收尾成本；可只运行轻量状态检查，或写明 `QMD refresh deferred`、原因和建议补跑时机。批量摄入、多篇文献完成、用户明确要求或大型 project/synthesis 依赖最新检索时，再运行 `qmd update` / `qmd embed`。
- 检查是否推进 `knowledge/questions.md` 中的开放问题；不为形式完整而新增重复问题。
- 向 `system/log.md` 追加简短 ingest 记录，更新 `system/handoff.md` 的 Active handoff；用户不需要每次手动要求 handoff/log 收尾。
- 摄入结束但用户未审核时，创建本地 WIP ingest commit、不 push，并在 `system/wip-queue.md` 写入或更新 pending entry；queue 只保留继续审核所需的最新 branch/commit/next action，overview/QMD 可按规则 deferred 到 review-finalization。
- handoff/log 不保存长复盘；Active handoff 记录任务状态、commit/push 状态、未完成事项、P0/P1 审核重点、风险和下一步。
- 执行 `check.md` 中与本次摄入相关的项目。
- 最终复盘采用 compact final recap：Result status、commit/push、关键文件、Human review triage、checks、next action。
- 最终复盘必须按 `system/workflows/ingest-strategies.md` 输出控长 Human review triage：P0 focus top 3-5、Remaining P0、P1 最多 5 个、P2/P3 聚合，并给出精力有限时最值得先看的 3-5 个位置。多篇摄入必须按每篇分别列 P0/P1。

### 7.1 Ingest completion

摄入主体完成后：

1. 运行 `git status --short`、`git diff --stat`、`git diff --check`；
2. 运行 `python system/scripts/wiki_lint.py --fail-on error`；
3. 检查通过且用户未明确禁止任何本地 commit 时，显式暂存本轮摄入相关文件，不使用 `git add .`；
4. 创建本地 `WIP ingest: <paper short name> for user review` commit；
5. 不 push；
6. 更新 `system/wip-queue.md` 的 pending entry，列出短 task name、branch、commit、review needed、overview/QMD deferred 和 next action；若后续 amend/rebase 改变 WIP commit hash，只更新到最新 commit；
7. 最终复盘列出 WIP hash、message、未 push、待审核文件、待审核 claim ID 和 Human review triage。

WIP ingest 只表示等待用户审核的本地检查点，不表示科学内容已人工复核。若用户明确禁止本地 WIP，保留工作树 diff，并在 diff 较大时提示可能产生 Codex、Git 或文件监听的持续 CPU 负担。

### 7.2 Review finalization

用户审核后，若上一轮处于 `WIP ingest:` / source review / waiting for user review / waiting for user P0/P1 review 状态，且用户给出审核意见并表示“审核完毕”“已审核”“除以上几点外无问题”“除以上两点外无问题”“P0/P1 已审核通过”“可以提交”“请 commit/push”“审核完毕，请 commit/push”等同义表达，应自动识别为 `review-finalization request`。除非用户明确说“不要更新 overview”“不要刷新 QMD”“不要 push”“只修改不 finalization”“只修改，不提交”“只 commit，不 push”，默认进入 finalization。

Finalization 包括：

1. 只根据审核报告修改明确提到的 source、claim、project 或 `review_status`；
2. 不自动清除审核报告未提到的 `needs_review`；
3. 处理用户明确确认范围内的 `needs_review` 状态；
4. 若仍有 unresolved P0、未核查 locator gaps、审核意见未落实，或 source 仍存在高风险不确定内容，不得强行 finalization，应 safe suspend 或报告阻塞；
5. 若审核意见已落实且无 unresolved P0，更新 `knowledge/overview.md`；
6. 执行 QMD refresh（`qmd.cmd update`、`qmd.cmd embed -c nuclear-knowledge`、`qmd.cmd status`）；
7. 重新运行 Git 检查和 Wiki lint；
8. 重新输出 Human review triage，列明已处理项目、仍保留的 P0/P1 和 paper evidence gate 影响；
9. 确认 HEAD 是对应的 WIP ingest commit 后，使用 `git commit --amend` 把 WIP 转换为 final commit，不新建额外 review commit；
10. 用户指定 final commit message 时原样使用；未指定时由 Codex 根据实际摄入与审核修改推荐直接相关的 message，并在最终报告中说明；
11. 默认执行 `git push origin main`；若用户明确“不要 push”，只 final commit 不 push；
12. 在同一个 finalization 流程中刷新 `system/handoff.md` Active handoff、更新或清除 `system/wip-queue.md` 对应 entry，并在任务已真正完成、成功 push 或被明确关闭时，将其迁移或摘要写入 `system/review-history.md`；
13. 向 `system/log.md` 追加短记录；
14. 最终复盘报告 overview、QMD、commit、push、handoff、queue、review history 和 log 状态。

如果 HEAD 不是对应 WIP，或无法确认 WIP 归属，停止并询问用户，不得擅自 amend。若用户明确“不要更新 overview”“不要刷新 QMD”“不要 push”或“只修改不 finalization”，则不得把该任务移动到 `system/review-history.md` 的 completed 区。若 push 状态无法确认，应 safe suspend，并在 handoff/queue 中写明 `push status: uncertain`。Finalization 使用 amend，避免 WIP commit 累积，也避免在 push 后再额外创建 queue/status 修正 commit。
