# 低能核结构 Wiki 详细使用说明

## 1. Purpose / 文件定位

`USER_GUIDE.md` 是快速使用指南，用于查找入口、常用流程和命令。本文件是详细说明书：当简洁版中的规则、流程或术语不够清楚时，从这里查阅背景和操作边界。

本文件面向用户和研究生，解释如何使用 Wiki。它不替代以下治理文件：

- `AGENTS.md`：Agent 行为契约；
- `system/schema.md`：页面类型与字段规范；
- `system/evidence-policy.md`：证据与置信度政策；
- `system/paper-evidence-gate.md`：论文级证据准入条件。

## 2. What this Wiki is / 这个 Wiki 是什么

当前 Wiki 是证据型知识问答库、研究辅助库和证据导航系统。它用于：

- 从已有知识页定位概念、判据、核素、能带和文献；
- 追踪一条主张来自哪篇论文、哪个位置；
- 区分观测事实、实验判据、模型结果和物理解读；
- 汇总竞争解释、证据缺口和研究决策；
- 将文献证据与数据处理结果连接起来，梳理创新点候选；
- 为后续科研写作准备可审查的证据基础。

## 3. What this Wiki is not / 这个 Wiki 不是什么

本 Wiki：

- 不是最终权威，不能替代原始论文阅读；
- 不保证文献完整覆盖；
- 不能仅凭已有页面生成可直接投稿的确定结论；
- 不能把未人工复核的页面或 claim 当作论文依据；
- 不能因为未收录某类文献就断言“没有相关工作”；
- 不能用 synthesis 页面代替原始文献引用。

论文级结论必须回到 source、必要的 raw 原文、精确 locator、citation key 和人工复核，并通过 paper evidence gate。

## 4. Core layers / 核心层级

| 层级或页面 | 作用 |
| --- | --- |
| `raw/` | 原始论文、笔记、数据和图片；由用户管理，Agent 只读 |
| `knowledge/` | 从来源中整理出的可检索、可交叉引用知识层 |
| source | 记录一篇来源实际报告了什么，并连接 raw 与 citation key |
| nucleus | 汇总一个核素的结构、相关能带、实验和来源 |
| band | 记录一条能带或双重带的观测、指认与证据状态 |
| concept | 解释可复用的概念、定义、适用条件和竞争解释 |
| observable | 记录观测量的定义、提取方法、判别作用和局限 |
| model | 记录理论模型、假设、参数依赖和计算结果 |
| experiment | 记录反应、束流、靶、装置和数据集 |
| synthesis | 跨来源比较支持证据、反证、限制与替代解释 |
| project | 围绕具体研究问题连接证据、数据结果、决策和下一步 |
| `knowledge/index.md` | 正式知识页的导航入口 |
| `system/log.md` | 只追加的操作历史 |
| `system/handoff.md` | 最近任务状态、文件修改和下一次交接 |
| `PLAN.md` | 用户维护的阶段计划、好奇点和长期研究方向 |

`PLAN.md` 管“可能去哪里”，handoff 管“上次停在哪里”。PLAN 不是执行日志或 Agent 可自由整理的任务清单。

## 5. Evidence vocabulary / 证据术语

| 术语 | 含义 |
| --- | --- |
| locator | 页码、图号、表号、能级、跃迁或数据位置等精确定位 |
| citation key | `.bib` 中用于稳定引用文献的键，不得猜测或编造 |
| `claim_kind` | 主张类型；当前 schema 使用此字段，不另造 `claim_type` |
| `review_status` | 页面级审阅状态 |
| `human-reviewed` | 用户已看过页面并完成页面层检查，不代表所有 claim 已确认 |
| `unreviewed` | 页面尚未完成用户页面级检查 |
| `needs_review` | claim-level 待审标记；`true` 表示该具体陈述仍需确认 |
| synthesis | 跨来源综合层，不是原始文献 |
| evidence gap | 当前证据链缺失的来源、观测、定位或验证步骤 |
| competing interpretation | 对同一现象或数据的竞争性解释 |

页面级 `review_status` 和 claim-level `needs_review` 是两个独立状态。Lint 通过只说明自动检查未发现阻断性结构问题，不代表科学内容全部复核完成。

## 6. How to ask knowledge questions / 如何提问

问题中最好说明对象、比较范围、证据分类和出处要求。例如：

```text
根据知识库解释某个概念。区分观测事实、实验判据、模型结果、
作者解释和综合判断；给出来源与 locator。证据不足时明确列出缺口。
```

```text
比较 wobbling 与 signature partner 的实验判据。
只使用当前知识库证据，列出竞争解释，不要把模型结果写成实验事实。
```

```text
当前哪些来源讨论这个问题？请区分原始论文与 synthesis，
并说明哪些 claim 尚未人工复核。
```

可显式调用 `$wiki-evidence-query`。该 Skill 默认只读；知识库缺少足够出处时，应明确报告不足，不用模型记忆补写。

## 7. How to ingest papers daily / 如何日常摄入论文

用户计划逐步形成每天至少摄入 2 篇 A≈130 质量区理论或实验文献的节奏。质量门优先于数量；每篇仍按独立闭环处理：

1. 用户提供论文，或指定 `raw/papers/` 中的新文件；
2. Codex 阅读原文，建立或更新 source 页；
3. Codex 按 schema 更新相关 concept、observable、nucleus、band、model、experiment 和必要的 synthesis；
4. Codex 在复盘中列出新增 claims、待审 claims、竞争解释和证据缺口；
5. 用户审阅 source 页和关键 claims；
6. 完成人工复核后，相应内容才进入论文级证据池。

不要把聊天内容或整批未读文献机械倒入 knowledge。新文献应先检查重复、书目信息、citation key 和原始文件定位。

### WIP ingest → review → final

摄入主体完成且检查通过后，默认流程是：

1. Codex 显式暂存本轮摄入文件，创建本地 `WIP ingest: <paper> for user review`；
2. WIP 不 push，也不代表页面或 claims 已人工复核；
3. 用户继续通过 Codex 内置 Markdown 渲染查看文件并给出审核报告；
4. Codex 只按报告修改明确项目，并推荐 final commit message；
5. Codex 使用 `git commit --amend` 把 WIP 转成 final commit，避免临时 commits 累积；
6. Final commit 通过检查后，只有用户允许才 push。

同一分支最多保留一个 active WIP。旧式“不 commit/push，等待审核”表示不 final commit、不 push，但允许本地 WIP；若要禁止所有本地 commit，需明确写“禁止本地 WIP commit”。Safe suspend 遇到大量 Markdown diff 时也优先采用本地 WIP checkpoint，减少 Codex、Git、编辑器或文件监听的持续 CPU 占用；checkpoint 绝不自动 push。

## 8. How to review claims / 如何人工审阅

人工审阅至少检查：

- 陈述是否忠实于原文；
- claim kind 是否正确；
- locator 是否能精确定位；
- 作者解释、模型结果和实验事实是否分开；
- citation key 是否与来源唯一匹配；
- 是否遗漏限制条件、反证或竞争解释。

用户查看 source 页只足以更新页面级状态，不自动清除 `needs_review: true`。只有用户明确确认某条 claim，或明确圈定的一组 claims，Codex 才能更新对应 claim-level 状态。

### 如何根据审核优先级审核 Codex 输出

文献摄入、project、synthesis、data-analysis-bridge 和 claim-review-update 完成后，Codex 应提供 Human review triage：

- **P0 必须审核**：影响核心科学结论、关键数值/指认、主线综合或论文级证据门的位置。P0 未审核前不建议 final amend 或 push。
- **P1 优先审核**：关键 source claims、evidence matrix、模型假设、跨来源总结、定义和高歧义 aliases。有时间应优先看。
- **P2 可抽查**：背景摘要、follow-up sources、evidence gaps 和 planning notes，按文件抽查即可。
- **P3 快速扫过**：index、overview、handoff/log、普通反链、格式和低风险导航。

审核时，source 重点核对原文与 locator；project 重点核对证据归类、研究问题和数据桥；synthesis 重点核对跨来源结论是否过强；data-analysis-bridge 重点核对数据事实、分析结果、物理解释和创新点候选是否分层。页面级 `human-reviewed` 与 claim-level `needs_review` 仍然独立，不能因整页通过就自动清除具体 claim 的待审状态。

审核点很多时，先看“精力有限时建议先看”的 3–5 个位置。对每个 P0/P1，审核报告可明确写：

```text
<文件 / claim ID>：通过 / 需要修改；
needs_review：保留 true / 可改为 false；
修改意见：<如有>。
```

## 9. How to use projects / 如何使用 project

Project 不必等到一个月后或数据处理全部结束才建立。出现以下任一情况即可进入 project 工作流：

- 有具体研究问题；
- 已有阶段性数据处理结果；
- 需要比较多条证据或竞争解释；
- 有明确的写作或汇报目标。

Project 可以记录研究问题、连接数据处理结果、汇总 source 与 synthesis、比较竞争解释、梳理创新点候选，并保存失败经验和研究决策。它连接已有证据，不替代 source，也不预先决定最终创新性。

## 10. How to prepare for writing / 如何为写作准备

未来写作 Skill 可基于 source、synthesis、project、citation key、数据处理结果和用户确认结论辅助：

- literature review 或 background 草稿；
- related-work 比较；
- 证据表转段落；
- 创新点候选梳理；
- 引用候选和缺失证据清单。

当前只预留接口，不创建写作 Skill。写作前必须执行 `system/paper-evidence-gate.md`，逐项检查 source、locator、claim kind、citation key、人工复核状态、竞争解释及 synthesis 是否被误当成原始来源。

## 11. How to use Skills / 如何使用 Skill

当前 repo 级 `$wiki-evidence-query` 用于证据型知识问答：

- 从现有 Wiki 检索并回答；
- 区分证据类型和综合判断；
- 给出来源、locator 和证据缺口；
- 默认只读，不自动修改 Wiki。

论文摄入、综合、lint 和写作目前继续使用已有 workflow 与规则文件。等真实流程稳定后，再评估 ingest、reflect、lint 或 writing Skill，避免过早固化尚未验证的流程。

### QMD 与 Skill 的关系

QMD 是 `$wiki-evidence-query` 和普通查询流程可自动调用的底层检索工具，不是另一个知识库，也不需要用户在每条问题中点名。当前 `nuclear-knowledge` collection 只索引 `knowledge/**/*.md`；索引数据库保存在被忽略的 `.qmd/`，模型保存在用户缓存，两者都不进入 Git。

推荐分层：

1. 已知页面直接读取；
2. 精确词使用 `rg` 或 `qmd search`；
3. 近义概念和跨页问题使用 `qmd vsearch`；
4. 只有复杂、高价值综合才使用完整 `qmd query`；
5. 所有候选都必须回读完整页面、source 和必要的 raw locator。

维护命令（普通单篇摄入不强制每次运行 `embed`；deferred 时复盘说明原因和建议补跑时机）：

```powershell
qmd.cmd status
qmd.cmd update
qmd.cmd embed -c nuclear-knowledge
```

模型缺失或损坏时才运行 `qmd pull`。不要运行 `qmd update --pull`，避免检索工具在用户存在未提交修改时隐式操作 Git。


## 12. How to reduce ingest overhead without losing evidence quality / 如何减少 Codex 摄入固定开销而不牺牲证据质量

用户日常仍然可以使用短提示词启动文献摄入；深度阅读核心文献仍是默认要求。优化目标是减少启动文件、长 handoff/log、无过滤全库扫描、每篇强制 QMD embed、过长策略文件和超长复盘带来的浪费，不是减少对文献核心内容的阅读。

`ingest-strategies-detail.md` 的 detail 是 workflow detail：策略说明、长示例、复杂案例和历史说明；不是 PDF reading depth。不默认读取 detail 教程不代表降低文献阅读深度，也不代表可以省略关键图表、公式、数值或 locator 核查。需要长说明时，可以单独要求 “输出 detailed workflow recap” 或 “输出 detailed strategy-policy audit”，这两者都不是“仔细阅读 PDF”的同义词。

不应被节省的内容包括：关键 claims、locator、图表和公式、数值、transition、observable、model assumption、author interpretation，以及 observed fact / model result / author interpretation / Wiki synthesis 的分层。PDF staged evidence reading 是阅读顺序优化：先建立论文主线和结构地图，再围绕关键证据、图表、表格、公式和 locator 深入读取。默认正式摄入应认真阅读文献；若核心读取未完成，Codex 应 safe suspend，说明已读范围和未完成 section / figure / table / locator，而不是降低读取标准。

多篇文献如果用户要求逐篇摄入，应逐篇完成 source、claim、locator、project relation 和 P0/P1 triage；每篇都有自己的 source-level / claim-level 审核重点，不应合并成粗略批处理。

用户主要看最终复盘中的 Result status、commit hash、是否 push、P0 focus、Remaining P0、P1、精力有限时建议先看的 3-5 个位置和检查结果。

`knowledge/overview.md` 是阶段性地图，不需要每篇 source 都更新；source、project 和 synthesis 才是主要知识承载。overview deferred 不代表摄入失败。大型 project/synthesis 可维护 `Agent active summary` 作为导航入口，但 active summary 不是 source，不替代 project/synthesis 主体，也不替代原文 locator。
## 13. Git and safety / Git 与安全边界

- 不要使用不加检查的 `git add .`；应显式暂存目标文件；
- `raw/`、PDF、论文、数据和图片不得被 Agent 误改或误提交；
- 用户维护的 BibTeX 和 Obsidian 配置应与治理改动分开确认；
- `system/handoff.md` 记录当前状态和下一次任务入口；
- 文献摄入、project、synthesis 或 framework 任务正常结束后，Codex 应自动刷新 Active handoff 并向 `system/log.md` 追加简短记录，用户不需要每次手动要求；
- safe suspend 是写回状态后结束本轮，不是后台睡眠或自动恢复；
- 长任务、余量不足、检查失败或无法可靠完成时，应 checkpoint / safe suspend，留下下一轮可继续的交接信息；
- commit/push 前运行项目规定的 lint、测试和 Git diff 检查。

## 14. Common mistakes / 常见错误

- 把 synthesis 当作原始文献；
- 把作者解释写成观测事实；
- 把模型结果写成实验事实；
- 把 unreviewed 页面或 `needs_review: true` claim 写入论文；
- 认为 Wiki 未收录就等于没有相关工作；
- 缺少 locator 或 citation key 时自行猜测；
- 让 Codex 大规模重写用户维护的 `PLAN.md`；
- 把本详细指南扩写成核物理百科或底层 Agent 规则副本。

## 15. Example prompts / 示例提示词

### 知识问答

```text
使用 $wiki-evidence-query，根据现有知识库回答这个问题。
区分事实、判据、模型、作者解释和综合判断，给出处并列出证据缺口。
```

### 文献摄入

```text
按 ingest workflow 摄入 raw/papers/指定论文.pdf。
先检查重复和 citation key；完成后列出新增 claim、待审 claim、
竞争解释和缺失证据。
```

### 人工审阅

```text
列出这个 source 页中 needs_review: true 的 claims、locator 和原文依据。
先生成审阅清单，不要自行改变 review 状态。
```

### Project 创建

```text
围绕这个具体研究问题提出一个最小 project 页面方案，
连接现有 source、synthesis 和阶段性数据结果；不要预设最终结论。
```

### 创新点候选梳理

```text
结合已复核证据和我提供的数据处理结果，列出创新点候选。
分别说明支持证据、竞争解释、仍缺验证和不能宣称的内容。
```

### 写作前证据检查

```text
按 paper evidence gate 检查这些拟写入论文的 claims。
列出 source、locator、claim kind、citation key、审阅状态、
竞争解释和投稿前仍需补做的检索。
```
