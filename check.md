---
type: system-checklist
graph-excluded: true
updated: 2026-07-06
---

# Wiki 系统核查清单

本文件是人工可读的最高层检查入口。检查必须报告“通过 / 警告 / 失败 / 未执行”，不得把未执行写成通过。

## 自动检查入口

在仓库根目录运行：

```powershell
python system/scripts/wiki_lint.py --fail-on error
```

- exit code `0`：没有达到失败阈值的问题；
- exit code `1`：存在 error，提交前必须处理；
- `--fail-on warning`：临时采用更严格阈值；
- `--format json --output outputs/lint-report.json`：生成机器可读报告；
- GitHub Actions 的 `Wiki lint` 会在相关 push、pull request 和手动触发时运行。

修改 lint 脚本或配置后还要运行：

```powershell
python -m unittest discover -s system/tests -p "test_*.py" -v
```

自动 lint 覆盖结构、链接、哈希、字段、A/Z/N、可解析的中子蒸发反应道、Git 边界和 claim-level 治理统计。`GOVERNANCE` 行报告页面/source unreviewed、claim 待审、缺 locator/kind、source 缺 raw_file/citation key；涉及科学解释、证据独立性和物理等价性的项目仍需人工判断。

## A. 会话记忆与治理

- [ ] 已按 `AGENTS.md` 的顺序读取固定启动文件；`README.md` 只作为稳定入口，不因其中链接自动扩展读取；`system/handoff.md` 只读 `Active handoff`，`system/log.md` 只读最近 10 条记录；仅在规定触发条件成立或用户明确要求时额外读取 `PLAN.md`。
- [ ] `PLAN.md` 保持宏观计划、个人好奇心与研究方向草稿性质，未被当作 cite-key 文献清单、执行日志或必须立即执行的任务列表。
- [ ] `PLAN.md` 未在缺少用户明确要求时被覆盖、重写、删除、重排或机械整理。
- [ ] `system/handoff.md` 顶部包含短的 `Active handoff`，包括 current active task、branch / WIP or local commit、last task status、unfinished items、P0/P1 review focus、risks、next prompt 和 recent user decisions；历史交接未堆入 active 区块。
- [ ] 启动时未默认读取完整 `system/wip-queue.md`；只有涉及 unfinished WIP、review continuation、safe suspend、non-serial work 或用户询问 pending WIP 时才读取。
- [ ] PLAN/handoff 冲突已按“方向与优先级看 PLAN、执行事实与交接细节看 handoff”分类；无法分类时已询问用户。
- [ ] `system/memory.md` 只保存稳定规则与用户确认过的偏好，不保存临时聊天摘要。
- [ ] 已判断本次是否需要更新 `USER_GUIDE.md`；需要时已经同步。
- [ ] 本次规则修改已同步到 `AGENTS.md`、`check.md` 和相应工作流。
- [ ] `system/log.md` 只追加，没有重写历史记录；启动或普通恢复未用 `ReadAllText(system/log.md)` 读取完整 log。
- [ ] 若使用定时续跑，已遵循 `system/workflows/scheduled-continuation.md`，并说明本机应用、调度服务与电脑可用性前提。
- [ ] 定时任务的“一次/重复”、时区和下次运行时间在界面中无歧义；一次性请求未显示为“每天”。
- [ ] 只有在存在运行回执且产物已核验时，才把定时任务报告为“已执行/已完成”；无回执明确写为“未触发/未验证”。
- [ ] 若执行余量不足、检查失败需要用户决策、长任务未完成或任务无法稳定完成，已停止扩大范围，运行三项 Git 检查并把完整 safe suspend 信息写入 handoff。
- [ ] Safe suspend 未被表述为自动睡眠/原地恢复，未自动创建 automation 或 push；大量 diff 场景已按规则判断是否创建本地 WIP checkpoint。
- [ ] Safe suspend / checkpoint 已写明未完成内容、未核查 locator / claim gaps、P0/P1 风险和 continuation prompt；未把 metadata-only 或 skimmed 伪装成 read / deep-read。


### 启动与工具开销控制

- [ ] 未读取 handoff archive，除非用户明确要求审计历史。
- [ ] 未对全仓库运行无过滤 `Get-ChildItem -Recurse`、`tree`、`ls -R` 或 `rg "关键词" .`。
- [ ] 搜索已限定到 `knowledge/`、`system/`、`AGENTS.md`、`check.md`、`USER_GUIDE_DETAIL.md` 或明确目标文件；未无目的扫描 `.git/`、`.qmd/`、`.obsidian/`、`tmp/`、`raw/`、`outputs/`、`share_message/`、`__pycache__/`、`.pytest_cache/`。
## B. 原始证据完整性

- [ ] `raw/` 中的文件未被 Agent 修改、移动、重命名或删除。
- [ ] 每个已摄入来源均记录 `raw_file` 与 `raw_sha256`。
- [ ] 哈希变化被标记为 `source-modified`，并进入重新摄入流程。
- [ ] DOI、期刊、卷页、年份、实验或理论类型等元数据尽可能完整。
- [ ] 关键结论包含页码、图号、表号、能级或其他精确定位信息。

## C. 科学表述与证据

- [ ] 已查看 lint 的 `GOVERNANCE` 统计，页面级 review 状态与 claim-level `needs_review` 没有混为一谈。
- [ ] `CLAIM_NEEDS_REVIEW` info 已列入人工审阅队列，未因页面为 `human-reviewed` 而自动清除。
- [ ] `claim_missing_locator` 与 `claim_missing_kind` 均为 0，或已按 error 处理。
- [ ] `source_missing_raw_file` 与 `source_missing_citation_key` 均为 0，或已解释并处理。
- [ ] 实验事实、作者解释、模型结果和个人推断已明确区分。
- [ ] 置信度没有仅凭引用数量自动提高。
- [ ] `high` 置信度均有用户确认记录。
- [ ] 多来源结论已判断证据是否真正独立。
- [ ] 竞争解释、反证与限制没有被静默覆盖。
- [ ] “候选”“支持”“强证据”“确定”用词与证据强度匹配。
- [ ] 单篇来源或二手综述没有被写成领域共识。

## D. 低能核结构领域专项检查

- [ ] 核素的 `A/Z/N` 自洽，元素符号与质量数正确。
- [ ] 自旋宇称、能级、跃迁能量和带标签保留原文单位及不确定度。
- [ ] 组态指认与实验观测分开记录。
- [ ] DCO、角分布、线偏振、寿命、分支比等证据类型没有互相替代。
- [ ] 对转动带、振动、wobbling、chiral doublet 的判据写明适用条件。
- [ ] γ-soft、γ-rigid、triaxial deformation 没有因词面相近被自动合并。
- [ ] 不同模型参数、约定、坐标系和符号定义已注明来源。
- [ ] 熔合蒸发反应道、束流、靶核、蒸发粒子道与余核对应关系自洽。

## E. 结构与链接

- [ ] 所有知识页都有合法 YAML frontmatter 和允许的 `type`。
- [ ] Wikilink 目标存在，或明确标记为待建页面。
- [ ] 没有 slug/aliases 重复造成的概念分裂。
- [ ] `knowledge/index.md` 覆盖全部正式知识页。
- [ ] 系统页均设置 `graph-excluded: true`。
- [ ] 没有把临时输出误写进长期概念页。

## F. 摄入、查询与综合

- [ ] 摄入前已查重并检查 aliases。
- [ ] 摄入前已按 `system/workflows/ingest-strategies.md` 运行时短规则选择策略；普通单篇摄入定义明确，未默认读取 `ingest-strategies-detail.md`。
- [ ] 已确认 `ingest-strategies-detail.md` 的 detail 指 workflow detail，不是 PDF reading depth；不读取 detail 不得降低文献阅读深度。
- [ ] 策略默认清单只用于检查文中是否报告相关信息，没有为填满清单编造内容。
- [ ] 摄入复盘采用 compact final recap，优先列 Result status、commit/push、关键文件、Human review triage、checks 和 next action。
- [ ] 摄入后已做必要最小同步；普通单篇摄入没有无必要重写 `knowledge/overview.md`，若 deferred 已说明原因和建议补跑时机。
- [ ] 查询答案的核心结论可追溯到来源页，而非只引用综合页。
- [ ] 高复用答案才持久化，普通聊天不机械入库。
- [ ] 综合前执行了反向检验，并记录未找到反证时的回音室风险。


### Project / synthesis active summary 与 staged reading

- [ ] 如果本轮修改了大型 project/synthesis 主体，已同步最小更新该页 `Agent active summary`；若页面缺失 active summary 且本轮实际修改该页，已创建短 summary。
- [ ] 用户明确要求补充 project/synthesis 时，没有只修改 active summary。
- [ ] Active summary 仅作为导航和 section 定位，没有替代 source locator、project/synthesis 主体或原文证据。
- [ ] PDF staged evidence reading 被作为阅读顺序优化执行，不被解释为降低深度读取标准；默认正式摄入不应停留在 `metadata-only` 或 `skimmed`。
- [ ] 如果核心 PDF 读取未完成，已 safe suspend 并列出已读范围、未读 section/figure/table/locator，而不是省略核心读取。
### QMD 本地检索

- [ ] 从仓库根目录运行 `qmd.cmd status` 时使用 project-local `.qmd/index.sqlite`，collection 名为 `nuclear-knowledge`，范围仅为 `knowledge/**/*.md`。
- [ ] `.qmd/` 作为可重建缓存已被 Git 忽略，没有把 SQLite 索引或模型提交进仓库。
- [ ] 普通单篇文献摄入未强制 `qmd.cmd embed`；若 QMD refresh deferred，已说明原因和建议补跑时机。批量摄入、多篇完成、用户明确要求或大型 project/synthesis 依赖最新检索时，已运行或明确安排 `qmd.cmd update` / `qmd.cmd embed -c nuclear-knowledge`。
- [ ] 精确查询优先 `rg`/`qmd search`，语义查询按需使用 `qmd vsearch`；完整 `qmd query` 只在收益足以覆盖数分钟冷启动时使用。
- [ ] 已对候选结果执行 `qmd get` 或直接读取完整文件，没有把搜索摘要、分数或 reranker 输出当成科学证据。
- [ ] QMD 不可用、超时或索引异常时已如实报告并降级到 `rg`、index 和直接读取。
- [ ] 没有运行 `qmd update --pull` 或让 QMD 隐式操作 Git；`qmd pull` 只在首次下载或修复模型时使用。

### Human review triage

- [ ] 文献摄入、project、synthesis、data-analysis-bridge 或 claim-review-update 的最终复盘包含 Human review triage。
- [ ] Triage 明确列出 P0/P1/P2/P3；没有 P0 时写明 `P0: none identified`。
- [ ] P0 分为 `P0 focus: top 3-5` 和 `Remaining P0`；P0/P1 给出具体文件、section/段落、claim ID（如有）和 source locator（如有）。
- [ ] 每个 P0/P1 说明为什么重要以及用户需要检查什么；P0 还说明不审核的风险。
- [ ] 没有把所有 `needs_review` 等权重铺开；Remaining P0 压缩列出，P1 最多逐项列 5 个最重要位置，其余按文件聚合，P2/P3 按文件聚合。
- [ ] 审核点较多时给出“精力有限时建议先看”的 3-5 个位置。
- [ ] 低风险 index/overview/handoff/log、格式和导航更新与科学 claim 分开。
- [ ] Paper evidence gate 候选被列为 P0/P1；未完成 P0/P1 审核时没有描述为可直接用于论文。
- [ ] 用户数据解释、competing interpretation、innovation candidate 和 paper-level candidate 被列为 P0/P1。
- [ ] 多篇逐篇摄入没有粗略批处理；每篇文献分别列 source-level / claim-level 审核重点和 P0/P1。
- [ ] Project/synthesis 任务列出主结论段落、evidence matrix 和跨来源解释的审核优先级。
- [ ] P0 未审核前不建议 final amend 或 push，默认保留 WIP 等待用户确认。

### 中英文术语归一化

- [ ] concept/model/observable/method 页面包含检索所需的中英文 aliases。
- [ ] 单篇来源新增术语优先写入页面 aliases；只有跨库统一、歧义、slug 风险或用户明确要求时才更新 `system/vocabulary.md`。
- [ ] Query workflow 已使用 vocabulary 与页面 aliases 扩展中文、英文、缩写、历史写法和实验口语。
- [ ] 中文和英文等价查询能够命中同一 canonical concept 及核心 source/claim。
- [ ] 泛称命中多个模型或方法时已列出候选，没有静默选定或合并。
- [ ] `angular distribution` / `angular correlation`，以及 shell model / CSM / PSM / TPSM 等易混术语保持分离。
- [ ] vocabulary 只用于查询归一化；回答中的科学主张仍引用知识页、source 和 locator。

## G. 输出要求

系统核查报告写入 `outputs/system-audit-YYYY-MM-DD.md`，至少包含：

1. 检查时间与范围；
2. 通过、警告、失败、未执行的数量；
3. 每个失败项的证据；
4. 修复优先级 P0/P1/P2；
5. 未自动修复且需要用户判断的项目。

## H. Git 与文档同步门

### WIP ingest/review 与 safe suspend checkpoint

- [ ] 文献摄入完成后，若用户未明确禁止本地 commit，HEAD 存在且仅存在一个 active `WIP ingest:` commit。
- [ ] WIP commit 只包含本轮摄入相关文件，message 以 `WIP ingest:` 开头。
- [ ] Project、synthesis 或跨来源综合完成并等待人工审核时，HEAD 存在且仅存在一个 active `WIP review:` commit。
- [ ] WIP commit 只保存在本地，没有 push。
- [ ] 若存在 pending WIP、等待审核、safe-suspended task 或未 push checkpoint，`system/wip-queue.md` 已新增或更新短 entry。
- [ ] Pending WIP queue 只记录恢复索引，没有写入 raw 内容、source claim 正文或长复盘。
- [ ] WIP 结束时 overview/QMD deferred 状态已在 queue 和最终复盘中说明；未把未审核 WIP push 到 `main`。
- [ ] 已识别 review-finalization trigger：用户在 WIP ingest/source review/project review/synthesis review/cross-project synthesis review/waiting for user review/waiting for user P0/P1 review 后说“审核完毕”“已审核”“除以上几点外无问题”“除以上两点外无问题”“P0/P1 已审核通过”“可以提交”“请 commit/push”“审核完毕，请 commit/push”等时，默认进入 finalization，除非用户明确覆盖。
- [ ] Review finalization 已按用户审核意见做最小修改，并只处理用户明确确认范围内的 `review_status` / `needs_review`。
- [ ] Review finalization 默认更新 `knowledge/overview.md`；若用户明确不要 overview，最终复盘已说明。
- [ ] Review finalization 默认执行 QMD refresh；若用户明确不要 QMD 或 QMD 失败，最终复盘已说明。
- [ ] Review finalization 已按 WIP lifecycle amend 为 final commit，并默认 push；若用户明确不要 push，最终复盘已说明 not pushed。
- [ ] Review finalization 已刷新 Active handoff、更新或清除对应 queue entry，并追加 short log。
- [ ] 存在 unresolved P0、locator gaps、审核意见无法唯一映射或 WIP 归属不明时，未强行 finalization，已 safe suspend 或报告阻塞。
- [ ] HEAD 已是 active WIP ingest/review/suspend 时，没有开始下一篇摄入、下一项综合或创建第二个 WIP。
- [ ] 用户审核后通过 `git commit --amend` 把对应 WIP 转为 final commit，没有保留独立 WIP 或累积额外 review/final commits。
- [ ] 用户指定 final commit message 时已原样使用；未指定时由 Codex 根据实际修改推荐直接相关的 message，并在最终报告中说明。
- [ ] 对应 active WIP + 用户审核完成 + final commit/push 指令已按仓库内明确 amend 授权处理，没有错误套用通用“不主动 amend”约束。
- [ ] WIP/final commit 均未包含 `.obsidian/graph.json`、`raw/zotero/wiki-inbox.bib`、raw PDF、论文、数据、图片、未经授权的 `PLAN.md` 或无关文件。
- [ ] Safe suspend 遇到大量 Markdown diff 时，已优先判断并尝试本地 WIP checkpoint。
- [ ] 文献摄入、project、synthesis 或 framework 任务正常结束时，已自动刷新 Active handoff 并向 `system/log.md` 追加简短记录；用户不需要每次手动要求 handoff/log 收尾。
- [ ] Safe suspend 仍然禁止自动 push。
- [ ] Safe suspend WIP 只显式暂存本轮可分类文件；无法解释或无法安全暂存时未创建 commit。
- [ ] 旧式“不 commit/push，等待审核”已解释为“不 final commit / 不 push，但允许本地 WIP”。
- [ ] 只有用户明确禁止任何本地 commit 时，才不创建 WIP checkpoint，并已提示大 diff 的 CPU 风险。
- [ ] HEAD 已是当前任务相关 WIP 时使用 amend 更新；归属不明时已停止并询问用户。
- [ ] WIP ingest/review 最终复盘列出 hash、message、未 push、待审核文件和 claim ID/段落。

- [ ] Git 工作树状态已检查；用户已有修改未被覆盖。
- [ ] `.gitignore` 没有把应持久化的 Markdown 知识页排除。
- [ ] `raw/` 中的大型 PDF、数据与个人材料未进入普通 Git 跟踪。
- [ ] 最终 diff 中不存在意外的 raw 修改。
- [ ] `USER_GUIDE.md` 与当前目录、命令和 Obsidian 工作流一致。
- [ ] 自动 lint 已运行且 error 为 0；warning/info 已解释。
- [ ] `knowledge/overview.md` 的页面级与 claim-level 统计在阶段性更新触发时已与最新 lint `GOVERNANCE` 输出同步；普通单篇摄入 deferred 时已说明。
- [ ] 修改 lint 实现时，单元与仓库集成测试已通过。
