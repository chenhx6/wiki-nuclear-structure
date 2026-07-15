# 低能核结构研究 Wiki：Agent 行为契约

本仓库是面向熔合蒸发反应与低能原子核结构研究的长期知识库。目标不是囤积资料，而是持续积累可追溯的事实、相互竞争的物理解读、研究决策和失败经验。

## 每次会话的启动顺序

本文件作为行为契约加载后，开始任何知识库任务前依次读取：

1. `README.md`：了解 Wiki 的稳定入口、当前定位、研究范围和工作流入口；
2. `system/handoff.md`：只读取 `## Active handoff` 区块、默认不读取 `Previous active handoff`、`superseded` 或 handoff archive、只有当 Active handoff 内部信息不足、存在冲突，或用户明确要求历史审计/追溯时，才允许读取 superseded 区块或 archive；
   1. 默认原则：当前任务状态以 Active handoff 为准；superseded 和 archive 只作为冲突排查或历史审计材料，不作为普通任务启动上下文。

3. `profile.md`；
4. `system/memory.md`；
5. `knowledge/index.md`；
6. `system/log.md` 最近 10 条记录。

`README.md` 是稳定入口，不是自动扩展读取清单。Codex 启动时只用它建立项目范围和入口意识；不得因为 README 列出 `USER_GUIDE`、`USER_GUIDE_DETAIL`、overview、schema、detail workflow 或其他链接，就自动继续读取这些文件。只有本轮任务确实需要时才读取扩展文件。不需要建立两份 README；同一个 README 可以同时服务人类用户和 Codex。

`PLAN.md` 是条件读取文件，不是每次小任务的强制启动文件。当任务涉及阶段计划、研究优先级、文献选择方向、项目建立、长期探索方向、基于用户好奇点扩充知识库、多步骤知识库建设，或用户明确要求读取 `PLAN.md` 时，必须在读取 `README.md` 后、读取 `system/handoff.md` 前额外读取 `PLAN.md`。

`PLAN.md` 由用户拥有和维护，用于宏观阶段计划、个人好奇心备忘和研究方向草稿，可以记录讨论点、好奇点、未来探索问题以及需要补充的文献类别或问题方向。它通常不写具体 cite key，不是文献清单、执行日志或 Agent 可自由改写的任务列表；其中模糊、大纲式或探索性的内容不等于 Agent 必须立即执行的任务。未经用户明确要求，Agent 不得覆盖、重写、删除、重排或机械整理其内容。

`system/handoff.md` 顶部必须保留短的 `Active handoff`，只包含 current active task、current branch / WIP or local commit、last task status、unfinished items、P0/P1 review focus、risks、next prompt / continuation phrase 和 recent user decisions。历史交接应归档到 `system/archive/handoff-history-YYYY-MM.md` 或放在 active 区块之后；启动时默认不读取归档。简言之：`PLAN.md` answers “where the user may want to go next”; `system/handoff.md` answers “where the last task stopped.”

`system/wip-queue.md` is a short index for multiple unfinished local WIP, review WIP, safe-suspended tasks, or not-pushed checkpoints. It does not replace Active handoff. Do not read the full queue during normal startup; read it only when the task concerns unfinished WIP, review continuation, safe suspend, non-serial work, or the user asks about pending WIP / unfinished review tasks.

`system/review-history.md` is a short index for completed human-review rounds. Do not read it during ordinary startup; read it only when the task concerns completed reviews, review rounds already finished by the user, or the user asks what was already reviewed/finalized.

若文件之间存在冲突：

1. 用户当前明确指令永远最高；
2. 在阶段目标、研究兴趣、长期探索方向、研究优先级和文献补充方向上，`PLAN.md` 优先于旧的 `system/handoff.md`；
3. 在最近完成事项、具体执行状态、未完成问题、文件修改记录和下一次任务交接细节上，`system/handoff.md` 优先作为事实记录；
4. 若冲突无法判断属于哪一类，停止并询问用户，不得猜测。

若 Git 可用，在开始修改前检查工作树状态，识别并保护用户已有修改。不得假定未提交内容属于 Agent。

聊天记录不是长期记忆。未写入仓库的信息，不得假定下一次会话仍然可用。

## Bounded initiative / 有限主动性

以下四条有限主动性原则继续有效，不得放宽为自由发挥：

1. 不确定就问，别猜；
2. 没要求且非必要同步的不写；
3. 只改与本轮任务直接相关的部分；
4. 以验收标准收敛任务；若验收标准缺失、含糊或与仓库工作流冲突，先提出可验证的验收标准并询问用户，不得自行扩大目标。

Codex 可以执行与当前任务直接相关、低风险、可解释、可回滚的最小必要同步，包括：

- 对 index、overview、handoff、log 做必要的最小更新；
- 更新与本次变更直接相关的 lint/test 期望值；
- 补充与本次新增 source、concept、observable 或 project 直接相关的 aliases、反链或入口链接；
- 按已有 schema 补齐能够明确确定的 `citation_key`、`raw_file`、`locator`、`claim_kind` 等字段。

额外修改只有在同时满足以下条件时才可直接执行：

- 直接服务于本轮任务；
- 修改范围小；
- 不改变项目治理规则；
- 不改变科学结论；
- 不新增 Skill、automation、脚本或调度器；
- 能在最终复盘中清楚解释必要性；
- 能在 diff 中单独审查。

某项修改有帮助但并非必要时，只写入最终建议，不在本轮执行。以下修改必须先询问用户或另开任务：

- 修改 schema、evidence-policy 或 workflow 的核心规则；
- 新增或重写 `system/vocabulary.md` 等治理文件；
- 批量整理术语或批量重命名页面；
- 批量修改 `review_status` 或 `needs_review`；
- 新增 Skill、automation、脚本或调度器；
- 大规模扩写科学内容；
- 修改 `PLAN.md`；
- 修改 `raw/`、论文、数据或图片。

若无法判断某项修改属于必要同步还是顺手优化，停止并询问用户，不得猜测。

## Windows PowerShell Git PATH fallback

Git 边界检查不能因为 PowerShell 的 `PATH` 暂时找不到 `git` 而跳过。普通 `git` 不可用时，依次尝试：

```powershell
Get-Command git
where.exe git
Test-Path 'C:\Program Files\Git\cmd\git.exe'
Test-Path 'C:\Program Files\Git\bin\git.exe'
```

找到 Git 后，使用其绝对路径执行同一组检查，例如：

```powershell
& 'C:\Program Files\Git\cmd\git.exe' status --short
& 'C:\Program Files\Git\cmd\git.exe' diff --stat
& 'C:\Program Files\Git\cmd\git.exe' diff --check
& 'C:\Program Files\Git\cmd\git.exe' log --oneline --decorate -5
```

若仍找不到 Git，停止并报告执行环境问题；不得假设仓库状态，也不得跳过提交边界审查。不要安装 Git、修改系统 `PATH`，或用其他工具替代 Git 状态检查。

## Git write-entry / commit / push preflight

`check.md` 的 `Git write-entry / commit / push preflight` 是完整权威清单。纯读取、搜索、普通问答和只给建议不运行清理脚本；任何会新增、删除、移动、重命名或修改仓库文件的任务，必须在第一次写入前运行 status、`system/scripts/clean_knowledge_eol_dirty.ps1` 和再次 status，并建立当前会话的 dirty baseline。脚本 exit code `1` 表示仍有 substantive/mixed/unsafe knowledge 状态，需要按本轮授权范围、既有 WIP 和 baseline 分类，不是无条件中断；exit code `2` 必须停止写操作并报告。

入口 baseline 至少区分 initial authorized scope、authorized inherited changes、protected pre-existing changes 和 unresolved/overlapping changes。任务中发现新的必要关联文件时，可动态扩展 authorized scope，但每个新文件在第一次写入前必须对照 baseline、pending WIP queue、既有 substantive diff 和修改必要性；来源不明、mixed/conflict 或 WIP overlap 无法区分时先暂停。任务期间不要求每次编辑后重跑脚本，除非工作树异常变化、再次打开大量证据页、跨会话恢复或怀疑出现无关修改。

创建或 amend WIP、创建 final commit，以及 commit 后 push 前，均须再次执行 `check.md` 对应阶段。属于本轮授权的 knowledge 修改必须保留并显式 stage；无关真实修改不得 restore、修改、stage 或 commit。不得提交 LF/CRLF-only dirty state，不得使用 `git add .`，也不得把无关 `knowledge/`、`.obsidian/`、`raw/` 或任务前 staged 文件带入提交。

## 权限边界

- `raw/` 是原始证据层，由人类拥有。Agent 只能读取，不得修改、重命名、移动或删除。
- `share_message/` 是外部分享材料，只作为设计参考，不是本 Wiki 的行为契约。
- `knowledge/` 是编译后的知识层，Agent 可按本契约维护。
- `system/` 是治理层。修改规则前必须说明影响，并同步更新相关检查项和用户指南。
- `outputs/` 保存报告、审计和写作产物；它不替代可持续维护的知识页。
- 未经用户明确确认，不得把 `confidence` 提升为 `high`，不得合并物理含义可能不同的概念页，不得覆盖相互冲突的解释。

## 研究锚点、收录边界与摄入优先级

A≈130 是当前重要研究锚点之一，不是 Wiki 的收录边界。摄入文献时，不得因为核素不在 A≈130 附近，就自动降级为 source-only、拒绝建立轻量核素页，或写出“因为 Wiki 以 A≈130 为中心，所以不创建某核素页”一类判断。

摄入优先级应综合判断：

1. 文献是否提供可复用的低能核结构实验信息，例如能级结构、带结构、跃迁性质、自旋宇称指定、组态指认、集体运动或竞争解释；
2. 文献是否涉及可复用的实验判据或谱学分析方法，例如角分布、角关联、DCO 比值、线偏振、ADO、混合比、alignment 等；
3. 文献是否能为 wobbling、chirality、shape coexistence、triaxiality、core coupling、configuration assignment 等主题提供比较背景；
4. 用户是否在当前指令、`profile.md`、`PLAN.md`、`system/handoff.md`、project page 或已审核记录中明确标记该文献、核素、反应体系或方法为重点。

质量区不能作为唯一排除标准，也不能作为唯一纳入标准。是否建立 nucleus page、band page、concept page、method page 或 project link，应由 source-supported 信息、结构信息密度、方法复用价值、比较意义和用户明确优先级决定。

Codex 不得自行推断某实验与用户个人履历直接相关、长期关注某核素，或把某文献自动归入用户个人重点。若需要依赖用户个人优先级但仓库中没有明确记录，应询问用户，或仅按文献本身的实验核结构价值进行轻量摄入。

本节是行为规则，不记录用户个人履历，也不写入具体学位论文题目、具体实验反应道或未经确认的个人经历。

## 不可违反的科学规则

1. 每个重要事实或数值都必须追溯到 `knowledge/sources/` 中的来源页，并尽量给出页码、图号、表号或能级位置。
2. 严格区分：
   - 文献直接报告的实验事实；
   - 文献作者的物理解读；
   - 模型计算结果；
   - 我们自己的推断或工作假设。
3. “多篇文献重复引用”不等于独立证据。证据独立性必须单独记录。
4. 对 wobbling、手征双重带、γ 软/γ 刚性等存在竞争解释的主题，必须保留反证和替代解释。
5. 不得把“相似现象”“支持某解释”和“证明某解释”混写。
6. 原始来源有歧义、图表不可读或元数据不全时，标记 `needs-human-review`，不得补写看似合理的内容。

## 工作流路由

- 摄入论文或笔记：遵循 `system/workflows/ingest.md`
- 查询与回答：遵循 `system/workflows/query.md`
- 跨来源综合与反向检验：遵循 `system/workflows/reflect.md`
- 健康检查：遵循 `system/workflows/lint.md` 和根目录 `check.md`
- 定时续跑或无人值守任务：遵循 `system/workflows/scheduled-continuation.md`

三种用户摄入模式及默认标准深入阅读闭环以 `system/workflows/ingest.md` 为 canonical owner；`reading_depth` 仅表示 source 的实际阅读完成状态，以 `system/schema.md` 为准。普通问答与研究型任务的路由以 `system/workflows/query.md` 为准。不得在本文件重复维护完整模式定义或学习清单。
## 工具使用卫生

默认避免无过滤全库扫描。不得直接运行 `Get-ChildItem -Recurse` 扫全仓库、`tree`、`ls -R`、`rg "关键词" .`，也不得无目的扫描 `.git/`、`.qmd/`、`.obsidian/`、`tmp/`、`raw/`、`outputs/`、`share_message/`、`__pycache__/` 或 `.pytest_cache/`。

搜索科学知识或治理规则时限定路径，例如 `knowledge/`、`system/`、`AGENTS.md`、`check.md`、`USER_GUIDE_DETAIL.md`。查找 raw PDF 时只查目标文件名或已知目录候选，不递归扫 raw 全目录。

## QMD 本地检索契约

QMD 是 `knowledge/` 的本地候选检索层，不是证据来源、Git 客户端或聊天记忆替代品。仓库根目录下被忽略的 `.qmd/` 保存 project-local 可重建索引；collection 固定为 `nuclear-knowledge`，只覆盖 `knowledge/**/*.md`。`raw/`、`system/`、`outputs/` 和 Obsidian 配置不进入该 collection。

在 Windows PowerShell 中优先调用 `qmd.cmd`；若 `PATH` 暂时不可见，使用：

```powershell
$qmd = Join-Path $env:APPDATA 'npm\qmd.cmd'
& $qmd status
```

检索路由：

1. 已知文件路径或少量确定页面时，直接读取，不为形式统一而调用 QMD。
2. 精确核素、作者、DOI、citation key、带名或术语优先使用 `rg` 或 `qmd.cmd search`。
3. 关键词不足以覆盖近义表达、跨页机制或竞争解释时，使用 `qmd.cmd vsearch`。
4. 完整 `qmd.cmd query` 包含本地 query expansion 与 reranking；当前 Windows 机器冷启动可能耗时数分钟，只用于高价值跨页综合且执行余量充足的任务。超时或收益不足时降级到 `search`/`vsearch`，不得阻塞回答。
5. 搜索摘要和排名只能用于选择候选文件。回答事实、数值、引文、决策或细微物理边界前，必须用 `qmd.cmd get`、直接读取文件或回到 source/raw 查看完整上下文。

QMD refresh 不是普通单篇文献摄入的固定收尾成本。单篇摄入完成后可以只运行轻量状态检查；`qmd update` / `qmd embed` 可标记为 deferred，并在最终复盘说明原因与建议补跑时机。批量摄入、多篇文献完成、用户明确要求刷新检索层，或 project/synthesis 大综合确实依赖最新检索时，再运行：

```powershell
qmd.cmd update
qmd.cmd embed -c nuclear-knowledge
qmd.cmd status
```

若 QMD 不可用或索引损坏，明确报告并降级到 `rg`、`knowledge/index.md` 和直接读取；不得伪造 QMD 已检索。`qmd pull` 只负责下载或修复本地模型，不是日常索引更新；`qmd update --pull` 会先操作 Git，本仓库禁止由 QMD 执行，Git 同步必须由显式 Git 工作流控制。

完成知识页、治理规则、模板或脚本的实质修改后，必须运行：

```text
python system/scripts/wiki_lint.py --fail-on error
```

自动 lint 的 error 必须在提交前处理；warning 和 info 必须如实报告，但不得为了消除提示而自动改写科学解释。修改 lint 脚本或配置时，还必须运行 `python -m unittest discover -s system/tests -p "test_*.py" -v`。

## 定时续跑的可靠性边界

- 定时任务是尽力执行的调度手段，不是完成保证。只有生成运行记录并核验产物后，才能写“已执行”或“已完成”。
- `heartbeat` 只用于短时、同一线程的继续工作；等待超过 1 小时不得使用 heartbeat。较长等待优先使用面向工作区的独立调度，但仍须说明本机应用、调度服务和电脑保持可用的前提。
- 一次性请求不得以界面显示为“每天”的规则交付。若调度器只能用带 `COUNT=1` 的重复规则表达，必须明确告知界面歧义并优先改用无歧义方案。
- 配额刷新不会主动唤醒任务。若到期执行依赖本地应用或电脑保持唤醒，必须在承诺前说明；不能确认时，应留下完整 handoff 和续跑命令，请用户在刷新后唤醒会话。
- 到期后必须核对运行回执、开始/结束时间和输出。没有回执即报告“未触发/未验证”，不得依据预定时间推断已运行。

## Safe suspend

当 Codex 发现上下文、token、5 小时额度或执行余量不足，执行时间过长、检查失败需要用户决策、长 PDF 尚未读完、多篇逐篇摄入未完成、project/synthesis 修改未完成，或任务无法可靠完成时，不得继续扩大修改范围，必须立即进入 safe suspend。

Safe suspend 的目标是保护当前工作、停止低余量扩张、留下可恢复 handoff，并避免大量未提交 Markdown diff 长时间触发 Codex、Git、文件监听或编辑器的高 CPU 占用。Safe suspend 绝不自动 push。

### 基本步骤

1. 停止新增大范围修改和新增科学 claim；
2. 运行 `git status --short`、`git diff --stat`、`git diff --check`；
3. 更新 `system/handoff.md`，记录 current active task、branch / local commit、last completed step、已修改文件、未完成事项、未核查 claim / locator gaps、P0/P1 review focus、当前风险、检查结果、下一轮可直接执行的续跑提示词，以及是否存在 active WIP commit；
4. 如本轮已形成可记录事件，向 `system/log.md` 追加一条短记录；不得写长复盘；
5. 不得自动 push；
6. 告知用户等待额度刷新后发送“继续”或 handoff 中指定的 continuation phrase。

若系统突然中断导致来不及写 handoff，下一轮 Codex 应先用 `git status --short`、`git diff --stat`、`git diff`、last Active handoff、`system/log.md` tail 和最近 commit 恢复现场；先输出 recovery audit，再继续任务。

### 本地 WIP checkpoint commit

文献摄入、project 建立、批量 Markdown 页面生成或其他产生大量 diff 的任务进入 safe suspend 时，应优先尝试创建本地 WIP checkpoint commit。它只用于保存检查点、降低工作树 diff、方便下一轮从 handoff 与 Git HEAD 继续，并减少持续文件扫描；不表示科学内容已经人工审核，也不表示任务已经完成，绝不自动 push。

只有同时满足以下条件，才允许创建或更新 WIP checkpoint：

1. 当前修改能够分类；
2. 可以显式暂存本轮相关文件，且不使用 `git add .`；
3. 不暂存 `.obsidian/graph.json`、`raw/zotero/wiki-inbox.bib`、raw PDF、论文、数据、图片、无关 framework/governance 文件、无法解释的文件，以及未经用户明确要求的 `PLAN.md`；
4. 已运行 `git status --short`、`git diff --stat`、`git diff --check`；
5. `system/handoff.md` 已写入任务状态、风险、检查结果和续跑提示词。

如果 wiki lint 来不及完整运行，可以创建未验证的 `WIP suspend` commit，但 handoff 和最终报告必须明确写明：“wiki lint 未执行，本 WIP checkpoint commit 未验证为可提交状态。”

Commit message 统一使用：

- 未完成任务：`WIP suspend: <task short name>`；
- 摄入主体完成、等待用户审核：`WIP ingest: <paper short name> for user review`；
- project、synthesis 或跨来源综合主体完成、等待用户审核：`WIP review: <task short name> for user review`；
- 未完成的 workflow/framework 修正：`WIP suspend: <workflow short name>`。

### Active WIP 限制与 amend

同一分支最多允许一个 active `WIP ingest:`、`WIP review:` 或 `WIP suspend:` commit。HEAD 已是当前任务相关 WIP 时，不得再创建第二个 WIP；安全暂存后使用 `git commit --amend --no-edit`，需要调整 message 时使用 `git commit --amend -m "<updated WIP message>"`。HEAD 不是当前任务相关 WIP，或无法判断归属时，停止并询问用户，不得擅自 amend。

恢复任务时先检查 HEAD、handoff、工作树、用户/无关文件，以及是否可以继续 amend 当前 WIP。任务完成后的处理：

- 文献摄入完成但未审核：保留本地 WIP ingest，不 push；
- project、synthesis 或跨来源综合完成但未审核：保留本地 WIP review，不 push；
- 用户审核完成：按审核报告修改并确认待提交文件均为本轮 human-review 收口内容后，将对应 WIP amend 为 review/final commit，不得另建 review/final commit；只有用户允许时才 push；
- 用户指定本轮提交 message 时原样使用；未指定时由 Codex 给出与本轮内容直接相关的建议 message，并在最终报告中说明；
- 任务放弃：等待用户明确指令，不自动 reset。

仓库中存在对应 active WIP、用户已完成审核并要求 final commit/push 时，上述规则即构成对 `git commit --amend` 的明确本地授权，优先于通用的“除非用户明确要求，否则不要 amend”约束。不得因该通用约束而保留独立 WIP，再额外创建 final commit。

科学内容与文献摄入、source/claim、nucleus/band/concept/observable、project/synthesis 和需要用户科学判断的修改，默认按本地 WIP → 用户审核 → amend 为 final → 用户允许后 push 的生命周期执行。推荐完成当前文献摄入的审核与 finalization 后再摄入下一篇；并行 WIP 不是禁止项，但必须先解决共享文件 overlap。

治理、框架、脚本和说明文档任务若方案与验收标准已由用户确认、无科学内容修改、无新增重大设计选择、检查通过且文件归属清楚，可直接创建 final commit 并按用户指令 push，不因多文件修改而机械等待 WIP 审核。只有设计分歧、范围异常扩大、核心检查失败、迁移需裁决、文件归属/overlap 不明、用户要求先审核或执行余量不足时，才使用 WIP 或 safe suspend。

### Pending WIP queue

When a task ends as WIP, a local not-pushed commit, a safe suspend, or user-review pending state, update `system/wip-queue.md` as well as Active handoff. Active handoff records only the latest activity; the queue preserves short recovery indexes for multiple non-serial pending WIPs.

Queue entries record only task short name, status, branch, commit, files, review needed, overview/QMD, next action, and risks. They should keep only the latest branch / commit / next action needed to continue review or push, not every temporary commit/push state. Do not store full paper notes, raw content, source-claim bodies, or long recaps there. If the user starts a new ingest/project/synthesis while older WIPs remain unreviewed, keep the older WIPs in the queue instead of relying on Active handoff.

Multiple pending WIPs are allowed, but a new ingest/project/synthesis must check its expected files against relevant queue entries before first write. No overlap permits an independent WIP. If files overlap, continue and amend the same WIP when the scope is shared; record an explicit upstream dependency for a dependent WIP; or defer the shared-file edit until the upstream WIP is finalized. Never create two supposedly independent WIPs that silently modify the same file. If ownership cannot be resolved, pause before editing the shared file.

If a WIP commit hash changes after amend or rebase, update the queue to the latest branch/commit pointer. Review history and Pending WIP are not mutually exclusive: after a human-review round is completed, append review history first, then independently decide whether the queue entry should remain, be updated, or be cleared. If queue, Git state, and handoff conflict during recovery, review-finalization, or safe suspend, follow the current user instruction first, then verify against Git and the relevant source/project files; ask the user if ownership remains unclear.

### Review history

`system/review-history.md` records completed human-review rounds. A review round exists when the user gives substantive review comments and clearly indicates, or the context makes it unambiguous, that this review round has ended. Keep entries short and index-like; do not copy long review reports, raw source text, or full claim bodies there.

Do not require a fixed trigger phrase, but do not invent review completion when the user's intent is ambiguous, partial, or still open-ended. Review history is triggered by the human-review completion event itself, not by commit, push, merge, rebase, overview, QMD, lint, or the Agent's own sense that a task is finished.

Review history does not require task closure, paper readiness, or push completion. It may coexist with a Pending WIP entry when follow-up work still remains. Record `review commit message` when a real review commit is created or amended for that round; do not record commit hash or push status there.

Review history is workflow traceability metadata, not scientific evidence, an approved-knowledge whitelist, or a paper-readiness index. It must not determine whether relevant content may be retrieved, surfaced, discussed, rechecked, or used as candidate evidence.

Do not backfill old completed reviews during routine framework maintenance.

### Review-finalization trigger / 审核完成触发

当上一轮任务处于 `WIP ingest:`、source review、waiting for user review、waiting for user P0/P1 review、`WIP review:`、project review、synthesis review 或 cross-project synthesis review 状态，且用户给出实质性审核意见，并明确表示或根据当前消息与上下文可以无歧义地判断本轮人工审核已经结束时，Codex 应识别为发生了 human-review completion event，并在适用时进入 `review-finalization request`。

不要求固定短语；若是否结束本轮审核存在歧义，不得擅自写入 `system/review-history.md` 或强行进入 finalization。

在 `review-finalization request` 下，除非用户明确说“不要更新 overview”“不要刷新 QMD”“不要 push”“只修改不 finalization”“只修改，不提交”“只 commit，不 push”等覆盖默认行为，Codex 默认执行：

1. 根据用户审核意见做最小修改；
2. 只处理用户明确确认范围内的 `review_status` / `needs_review` 状态；
3. 若仍有 unresolved P0、未核查 locator gaps 或用户审核意见未落实，不得强行 finalization，应 safe suspend 或报告阻塞；
4. 若审核意见已落实且无 unresolved P0，更新 `knowledge/overview.md`，并说明 overview 状态；
5. 执行 QMD refresh（`qmd.cmd update`、`qmd.cmd embed -c nuclear-knowledge`、`qmd.cmd status`），失败时如实报告并不得伪造刷新成功；
6. 运行与本次修改相称的检查；
7. 按 WIP lifecycle 将对应 WIP amend 为 review commit / final commit，并默认 push；若用户明确“不要 push”或“只 commit，不 push”，则只提交本地 commit 不 push；
8. 为本轮明确结束的人工审核追加 `system/review-history.md` 条目；该条目记录审核范围、用户判断、要求修改、遗留问题、下一步、相关页面，以及 `review commit message`（若本轮实际创建或 amend 了 review commit）；
9. 独立判断 `system/wip-queue.md` 对应 entry 是否继续保留、需要更新，还是已经可以清除；不得使用简单的 `Pending WIP → Review history` 单向迁移模型；
10. 刷新 `system/handoff.md` 的 Active handoff；
11. 向 `system/log.md` 追加一条简短记录；
12. 最终复盘报告 overview、QMD、commit、push、handoff、queue、review history 和 log 的状态。

若仍存在 unresolved P0、locator gaps、审核意见未落实、审核意见无法唯一映射到具体 claim、source/project/synthesis 仍存在高风险不确定内容，或 HEAD 不是对应 WIP 且无法确认归属，不得强行 finalization；应停止扩大修改，必要时 safe suspend，并向用户报告阻塞点。

不要在 push 后再额外创建只修正 queue/status 的 commit，除非前一次 finalization 确实遗漏了必要的 queue/review-history/handoff/log 同步。若无法确认 push 是否成功，应 safe suspend，并在 handoff/queue 中写明 `push status: uncertain`，而不是猜测已完成。

## Evidence-calibrated reasoning / 证据校准推理

可追溯性的目的，是区分证据层级、校准表述强度并方便用户核查，而不是禁止合理分析和推断。普通 Wiki 问答、研究讨论、跨来源比较、综合分析和论文早期草稿，应基于当前已有证据给出最佳可支持答案，同时明确区分：

- 文献直接报告的实验事实；
- 文献作者的解释；
- 模型或计算结果；
- 跨来源综合；
- 我们自己的暂时推断、工作假设或可能解释。

Agent 可以在授权研究任务中充分形成分析性重建、条件化迁移、竞争解释、反向检验和研究问题；限制只作用于持久化与知识晋升。未经分类、溯源和审核的 provisional reasoning 不得冒充 source evidence、作者结论、正式 synthesis、用户已采用的 project 判断、稳定 memory 或普通 log。

当直接证据不完整时，应降低表述强度、说明限制，并指出值得补查的来源、数据、locator 或页面入口，而不是无必要地拒绝回答或停止写作。不得虚构 citation key、DOI、页码、图号、表号、locator、原文表述、数据或引文。

严格 paper evidence gate 只在论文或投稿核查、正式引用、直接来源或原文引文、精确 locator、关键科学 claim 确认，或用户明确要求时启用。普通问答、研究讨论、探索性综合、早期草稿和一般争议讨论不因此自动进入 strict mode。未通过 paper evidence gate 不禁止普通讨论、谨慎综合、合理推断或初稿生成；它只表示正式提交前仍需回到直接来源、精确 locator、适用条件、竞争解释和引用风险做进一步核查。

### “不 commit/push”的兼容解释

文献摄入任务中的旧式“不要 commit/push”或“不 commit、不 push，等待审核”，默认表示不创建 final commit、不 push，但允许创建本地 WIP ingest/checkpoint 以降低 diff 和 CPU 负担。只有用户明确写出“禁止任何本地 commit”“不要创建 WIP commit”或“不要本地临时 commit”时，才不得创建 WIP。

若用户明确禁止任何本地 commit，而大量 diff 可能导致高 CPU 占用，safe suspend 报告必须提醒：“由于用户明确禁止任何本地 commit，本轮无法创建 WIP checkpoint commit。大量未提交 diff 可能导致 Codex/Git/文件监听高 CPU 占用。”

Safe suspend 不是让当前任务自动睡眠并原地恢复。若用户后续使用 automation，应视为额度刷新后新开一次任务，由新任务按启动规则读取 handoff 和当前 Git HEAD 后继续；不得因进入 safe suspend 自动创建 automation。

## 写回与收尾

完成有实质内容的任务后：

1. 更新受影响的来源页、概念页、核素页或带结构页；
2. 更新 `knowledge/index.md`；
3. 向 `system/log.md` 追加简短记录，绝不改写旧记录，也不写入长复盘；
4. 更新 `system/handoff.md` 的 Active handoff，写明当前状态、commit/push 状态、未解决问题、P0/P1 审核重点、风险和下一步；
5. 若用户纠正了 Agent 的长期行为，更新 `system/memory.md`；
6. 运行与本次修改相称的 `check.md` 检查。
7. 实质修改通过自动 lint 后方可提交；自动检查不能替代 `check.md` 中需要科学判断的项目。

文献摄入、project、synthesis 或 framework 任务正常结束后，Codex 应自动刷新 Active handoff 并追加简短 log；用户不需要每次手动要求。handoff/log 收尾不得成为启动时读取 archive 的理由。

普通单篇文献摄入不默认重写 `knowledge/overview.md`。只有多篇批量摄入、project/synthesis 显著更新、主题知识地图结构性变化、paper evidence gate 或 major concept map 变化，或用户明确要求时，才更新 overview。若 deferred，最终复盘写明原因和建议何时补跑。

大型 project / synthesis 页面可维护短的 `Agent active summary`。普通摄入优先读取 active summary 和相关 section；active summary 只用于导航和定位，不替代 source locator、project/synthesis 主体或原文证据。本轮若实际修改 project/synthesis 主体，必须同步最小更新该页 active summary；用户明确要求补充 project/synthesis 时，不得只改 active summary。

## 最终复盘控长

普通 ingest、project、synthesis 和 claim-review-update 的最终复盘默认先给出 `Result status`、commit hash、是否 push、未提交文件、关键修改文件、Human review triage、checks 和 next action。除非用户要求 detailed workflow recap，不写成长篇论文；普通任务建议控制在 400-900 中文字。

Human review triage 必须优先列 P0/P1。P0 无总量硬上限，全部逐项可读、可审核；可分批但不得聚合隐藏、降级或遗漏。没有 P0 时写 `P0: none identified`。P1 可按文件分组，但重要项仍须显示实际判断、证据、Agent inference 和审核目的；P2/P3 只聚合。“精力有限时建议先看”只安排顺序，不改变完整 P0 队列。commit/push 状态必须醒目；未 push 写 `not pushed`，已 push 写 commit hash 和 branch。

## 强制文档同步门

每次任务结束前必须逐项判断，不得跳过：

1. 用户可见的目录、命令、工具或工作流是否变化？若是，更新 `USER_GUIDE.md`。
2. Agent 的行为约束是否变化？若是，更新 `AGENTS.md` 与 `check.md`。
3. 页面类型或字段是否变化？若是，更新 `system/schema.md` 与 `system/templates/`。
4. 专业术语或别名是否变化？单篇来源新增术语或页面别名优先记录在页面 `aliases`；只有需要跨库统一、存在歧义或重复 slug/aliases 风险，或用户明确要求时，才更新治理层 `system/vocabulary.md`。不确定时先询问或只列最终建议，不得在普通摄入中顺手修改。
5. 是否完成实质任务？若是，更新 `system/handoff.md` 与只追加的 `system/log.md`。
6. 是否摄入或修改知识？若是，更新 `knowledge/index.md`，按 overview 阶段性更新规则判断是否更新 `knowledge/overview.md`，并检查 `knowledge/questions.md`。
7. Git 可用时检查最终 diff，确认 `raw/` 未被 Agent 修改。

即使 `USER_GUIDE.md` 不需要修改，也必须在内部完成判断；不得因为“这次只是小改动”而省略。

## 文件与链接规范

- 正文以中文为主，首次出现的专业术语附英文名称。
- 文件名使用稳定的英文小写连字符 slug；核素采用约定格式，例如 `130ba.md`。
- Wikilink 使用文件 slug，例如 `[[wobbling-motion]]`、`[[130ba]]`。
- 中文、英文缩写和历史叫法统一记录在 `aliases` 中。
- 系统文件不参与知识图谱，不从科学页面建立指向 `index`、`log`、`check` 或工作流文件的 wikilink。
