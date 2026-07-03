---
type: system-handoff
graph-excluded: true
updated: 2026-07-03
---

# 跨会话交接

## 当前阶段

Phase 2：第一版结构和三轮摄入已经稳定；已建立首个 A≈130 高自旋集体模式 project seed。当前继续以证据型知识问答、证据追踪、逐篇摄入和数据分析桥接为主，不预设最终创新点。

## 最近一次执行：Domscheit 1999 `163Lu`

- 2026-07-03 以 experiment-ingest + project-ingest 深读 `raw/papers/1999_Domscheit et al_Triaxial superdeformation in 163Lu.pdf`；citation key 唯一匹配 `domscheit_1999_Triaxialsuperdeformation`，PDF SHA-256 为 `EDDE41A90870CBA7451DA6D93579017EEB046D060513AA69B24661BA5A72B7C8`。
- 新建 source、`163Lu` nucleus、SD1/SD2 band、Legnaro Euroball experiment、superdeformation concept 和 transition-quadrupole-moment observable 页面；更新 triaxiality、wobbling、moments-of-inertia、DCO 和 index/overview/vocabulary。
- source 建立 DO99-1 至 DO99-13。实验事实、实验判据、作者解释、SD-ND 两能带混合结果与 UC/PES 模型结果已分开。
- A≈130 project 仅把该文作为 non-A≈130 comparative background；没有把它计入 A≈130 核心 source 或覆盖。
- 原始 PDF、BibTeX、`.obsidian/graph.json` 均未修改；未修改 lint 脚本、配置或测试。
- 用户确认 citation key、主要表述和科学内容无明显问题，并补充 `163Lu/164Lu` 分别为 5n/4n 蒸发道；source 页面升级为 `human-reviewed`，DO99-1 至 DO99-13 均改为 `needs_review: false`。派生页不冒充人工审阅。
- source 新增中英术语表，并明确 two-band mixing calculation 的对象是 SD1 与 `[411]1/2+` 正常形变带，而非 SD1 与 SD2；该消歧偏好同步到 vocabulary 和长期 memory。
- 最终 lint 保留两个 Lu 元素未配置提示；按本轮边界不修改 lint 配置。用户已有 `raw/zotero/wiki-inbox.bib` 修改继续产生第三个 warning。
- 下一步：本轮 Domscheit source 审核已完成；历史遗留 9 条 claim-level 待审项另行交给用户复核。

## 已完成

- 阅读 `share_message/LLM_wiki创建.md` 与 `share_message/LLM检查.md`；
- 确定 Raw / Wiki / System 三类职责；
- 建立行为契约、检查表、研究档案、证据政策、schema、术语表和长期记忆。
- 建立 INGEST、QUERY、REFLECT、LINT 四个独立工作流；
- 建立核素、能带、概念、方法、综合、项目、决策和失败模板；
- 完成初始化系统核查，历史报告见 `outputs/system-audit-2026-07-01.md`。
- 将编译知识层从重复的 `wiki/` 重命名为 `knowledge/`；
- 将模板、日志和输出分别归入 `system/templates/`、`system/log.md` 和 `outputs/`；
- 增加 experiment、model、observable 三类页面；
- 增加 Zotero 轻量连接约定和强制文档同步门。
- 建立 Git 基线提交 `9264fdb`，PDF 与大型原始资料已忽略；
- 完成四篇代表性文献首轮摄入，建立 42 个正式知识页；
- 建立 `131Xe` 核素、三条负宇称序列和 VECC 实验页；
- 建立三个跨来源综合页，当前 181 个 Wikilink 无断链；
- 更新 Obsidian + AI 日常使用与写作指南。
- 完成第一版系统核查：0 个结构性失败，报告见 `outputs/system-audit-2026-07-01-v1.md`。
- 用户已将仓库作为 Obsidian vault 打开，附件目录设为 `raw/figures/`，启用核心功能与 Dataview；
- 用户建立私有 GitHub 仓库 `chenhx6/wiki-nuclear-structure`；本地仍未配置 `origin`；
- 用户建立 Zotero `Wiki Inbox` 并自动导出 `raw/zotero/wiki-inbox.bib`，当前含 2016 `133Ce` 一条 citation key；
- 用户对 `131Xe` 两个待审能带页及 wobbling/signature 综合做轻度科学校准，整体评价良好，页面升级为 `human-reviewed`，未升级为 `verified`；
- 完成 2016 `133Ce`、2020 `137Nd`、2021 `131Ba/133Ce` 三篇文献深度摄入；
- 新建 `131Ba`、`133Ce`、`137Nd` 核素页，四个稳定能带页和四个实验页；
- 建立 CNS、CDFT、CSM、`R_ac` 及 signature-splitting 多机制综合页；
- 正式科学知识页增至 61 个，来源增至 7 个。
- 完成本轮系统核查：372 个 Wikilink、0 断链、7/7 来源哈希匹配、0 个非法核心 type；报告见 `outputs/system-audit-2026-07-01-v2.md`。
- 用户提交 Obsidian/Zotero 桥接配置 `3cef934`，本地 `main` 已跟踪并推送 `origin/main`；
- 用户完成 `137Nd` D2-D3、D5-D6 和 signature-splitting 机制综合审阅，未发现大的问题；三页标为 `human-reviewed`，候选解释与证据缺口保留；
- 建立无第三方依赖的 `system/scripts/wiki_lint.py` 和声明式 `system/lint-config.json`；
- 自动 lint 覆盖 frontmatter、字段/type、slug/aliases、index、Wikilink、source SHA-256、A/Z/N、可解析 `(beam,xn)` 反应道、高置信度人工门和 Git/raw 边界；
- 建立 6 项标准库单元/集成测试及 `.github/workflows/wiki-lint.yml`；
- 本地最终结果：61 个正式科学页、372 个 Wikilink、7/7 source hash，0 error、0 warning、0 info；
- 更新 `AGENTS.md`、`check.md`、LINT workflow 与 `USER_GUIDE.md`，把自动 lint 纳入强制收尾。
- 2026-07-02 03:35 的一次性 heartbeat 未触发且没有生成运行记录；已在 11:15 删除，当前会话重新完成严格复核。后续不得把未验证的定时续跑表述为“无需用户操作即可保证完成”。
- 自动 lint 提交 `d807369` 已推送到 `origin/main`；当前环境未安装 `gh` 且浏览器未登录 GitHub，私有仓库 Actions 结果暂无法读取。
- 完成 03:35 调度故障复盘：到期前后 Codex 本地日志从 01:12:56 至 08:56:43 空白，自动任务表无运行回执。用户确认应用未退出，笔记本持续接电且接电时永久不休眠、不息屏；故障因此收敛为 Codex 后台调度链路未保持活跃或未消费到期 heartbeat，具体内部环节仍不可见。
- 新建 `system/workflows/scheduled-continuation.md`，并把“一小时以上禁用 heartbeat、一次性界面无歧义、无回执不得报完成”写入 `AGENTS.md`、`check.md`、`USER_GUIDE.md` 和长期记忆；复盘见 `outputs/automation-failure-review-2026-07-02.md`。
- 用户新增 README/PLAN 类根目录笔记，用于保存阶段性工作记录、使用备忘和计划；原始合并文件名为 `RAEDME + PLAN.md`。
- 将用户确认的合并笔记拆分为稳定入口 `README.md` 和用户拥有的阶段计划 `PLAN.md`，并把 README → PLAN → handoff 的上下文读取顺序写入 `AGENTS.md`。
- 2026-07-02 完成 PLAN/handoff 小范围规则修订：`PLAN.md` 改为按阶段计划、研究优先级、文献选择方向、项目建立、长期探索、多步骤建设或用户明确要求等条件读取；PLAN 管方向和好奇心，handoff 管最近状态和交接事实。
- 补充 safe suspend：执行余量不足且无法稳定完成时停止扩大范围，完成三项 Git 检查，写入完整 handoff，等待用户在额度刷新后发送“继续”；不把它描述为自动睡眠或原地恢复，不自动创建 automation 或 commit/push。
- 本次修改文件为 `AGENTS.md`、`README.md`、`USER_GUIDE.md`、`check.md`、`system/workflows/scheduled-continuation.md`、`system/memory.md`、`system/handoff.md` 和 `system/log.md`；`PLAN.md` 未修改，用户已有 `.obsidian/graph.json` 修改未触碰。
- 新建 repo 级 instruction-only Skill `.agents/skills/wiki-evidence-query/SKILL.md`，用于默认只读的核结构证据型知识问答；同步在 `USER_GUIDE.md` 增加显式调用说明。
- 本次 Skill 任务修改 `.agents/skills/wiki-evidence-query/SKILL.md`、`USER_GUIDE.md`、`system/handoff.md` 和 `system/log.md`；未修改 `PLAN.md`、`knowledge/`、`raw/` 或科学内容，也未新增脚本或 automation。
- 完成基础治理修正：明确 Wiki 是证据导航原型而非最终权威，建立 `system/paper-evidence-gate.md`，补充论文级准入、漏引检查、日常摄入/人工复核闭环和未来写作 Skill 接口。
- 用户明确确认已查看现有 7 个 source 页且无明显科学问题；7 页据此更新为页面级 `human-reviewed`，但 9 条 claim-level `needs_review: true` 原样保留，未自动清零或升级为 `verified`。
- 核对 `raw/papers/` 中 9 个 PDF 与 `raw/zotero/wiki-inbox.bib` 中 9 条记录，DOI/title/file 唯一对应；7 个现有 source 页 citation key 已与当前 BibTeX 精确同步，未修改 `.bib` 或 PDF。
- 本轮人工统计基线：页面级 unreviewed 48、source 页 unreviewed 0、claim-level `needs_review: true` 9、缺 locator 0、缺 claim kind 0、source 缺 raw_file 0、source 缺 citation key 0。
- 本次修改 `README.md`、`USER_GUIDE.md`、`system/memory.md`、`system/evidence-policy.md`、`system/schema.md`、三个 ingest/query/reflect workflow、`system/paper-evidence-gate.md`、`system/handoff.md`、`system/log.md` 及 7 个 source 页的审阅/citation 元数据；未修改 `AGENTS.md`、`PLAN.md`、`raw/`、脚本、Skill 或核物理正文。
- 上一轮验收结果：Wiki lint 为 0 error、1 warning（用户已有 `raw/zotero/wiki-inbox.bib` 工作树修改）；6 项单元/集成测试通过，当时自动 claim-level 统计尚未实现。
- 本轮在 `system/scripts/wiki_lint.py` 中加入 Markdown claim 表逐行解析和 `GOVERNANCE` 指标，自动报告页面/source unreviewed、claim 待审、缺 locator/kind、source 缺 raw_file/citation key；同步更新 config、测试、check、overview 和用户指南。
- 本轮验收结果：7 项 lint 单元/集成测试全部通过；Wiki lint 返回 0 error、1 个已解释的 `RAW_GIT_CHANGE` warning 和 9 个 `CLAIM_NEEDS_REVIEW` info。自动指标为页面级 unreviewed 48、source 页 unreviewed 0、claims 45、claim-level `needs_review: true` 9，缺 locator、缺 claim kind、source 缺 raw_file、source 缺 citation key 均为 0。
- `wiki-evidence-query` 已作为独立 commit `17a65b3` 提交；该提交只包含 Skill 文件。
- 新增 `USER_GUIDE_DETAIL.md` 作为面向用户和研究生的详细说明书；`USER_GUIDE.md` 保持快速指南，README 只增加详细指南入口。Project 可随具体问题、阶段性数据结果或写作目标进入，不必等待固定时间点；写作 Skill 仍只预留接口。
- 本轮文档按独立 commit `Add detailed wiki user guide` 交付；检查通过后推送 `main` 到 `origin`。用户已有 `.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 修改保持未暂存、未纳入提交。
- 2026-07-02 按 review-ingest 策略摄入 De Voigt、Dudek 与 Szymanski 1983 高自旋综述；citation key 通过题名、作者年份与 DOI 唯一匹配 `devoigt_1983_Highspinphenomena`，原始 PDF 与用户 BibTeX 保持只读。
- 新 source 建立 8 条 review/background claims；DV83-2、DV83-7、DV83-8 标记 `needs_review: true`，分别对应统计衰变转述、pairing/alignment 混淆和历史实验方法系统学。
- 新建高自旋现象、转动带、backbending、角动量顺排、转动惯量和 in-beam γ 谱页面；只对 signature partner/splitting 页补充历史背景与二手证据边界，未修改核素或能带结论。
- 建立 `knowledge/projects/a130-high-spin-collective-modes-evidence-map.md`，连接现有 7 个 source、De Voigt review、4 个 synthesis、实验判据、模型入口与尚为空的用户数据分析桥。
- 本轮 lint 基线为 69 个正式页、468 个 Wikilink、8/8 source hash，0 error、1 个用户 `.bib` 修改 warning、12 个 claim review info；其中旧 9 条待审保持不变。
- 用户已完成人工审阅 De Voigt 1983 source，并逐条将 8 条 Key Results 与原文对比确认无误；页面为 `human-reviewed`，DV83-2、DV83-7、DV83-8 的 `needs_review` 已改为 `false`。适用边界校准为“经典术语、γ 探测基础和机制框架仍有效，后来发展的物理模式与具体装置/核素证据另查专门来源”；复核后 lint 为 page unreviewed 55、source unreviewed 0、0 error、1 个用户 `.bib` warning、9 个 claim review info。

## 关键设计决定

- 不照搬“来源数决定置信度”规则，改用证据直接性、独立性、模型依赖和人工复核。
- 不把两年以上文献统一标为过时；经典实验与理论按内容类型判断时效。
- 将操作流程拆成独立 Markdown，稳定后再转换为 skills，避免一开始把错误流程固化。
- 核素、能带和物理概念分开建页，避免把观测对象与物理解读混为一谈。
- 自动 lint 只阻止机械可判定的结构性 error；科学待审状态作为 warning/info，不为“绿灯”自动修改解释。
- GitHub 因不保存 PDF，只报告 raw source 缺失 warning；完整 source hash 必须在本机执行。
- 定时调度只提供尽力执行，不构成完成证据；运行回执与产物核验是“已执行”的必要条件。
- PLAN 负责阶段目标、研究兴趣、长期探索方向、研究优先级和文献补充方向；handoff 负责最近完成事项、具体执行状态、未完成问题、文件修改和下一次交接。无法分类的冲突必须询问用户。
- Safe suspend 是写回可恢复状态后结束当前执行，不是自动睡眠；后续 automation 属于读取 handoff 的新任务。
- `wiki-evidence-query` 只封装证据查询工作流和回答边界，不内置核物理结论，默认不写入 Wiki；摄入和知识页维护继续使用既有项目工作流。
- Wiki 只负责证据导航和研究辅助；论文级主张必须回到 source/raw、精确 locator、citation key 和人工复核，并完成竞争解释与漏引检查。
- 页面级 `human-reviewed` 与 claim-level `needs_review` 独立；页面审阅不构成批量清除具体 claim 待审状态的授权。
- 现阶段不新增 ingest/reflect/lint/writing Skill；先稳定 workflow、schema、review 和 evidence gate，写作 Skill 等数据处理和真实 project 闭环就绪后再创建。
- 采用 bounded initiative：只允许直接相关、低风险、可解释、可回滚且可单独审查的必要最小同步；非必要优化只列建议。PowerShell 找不到 `git` 时，先定位 Git 绝对路径并执行同等边界检查。
- `ingest-strategies.md` 已固化 review、experiment、theory、method、targeted、project、daily、claim-review 和 data-analysis-bridge 默认策略；后续用户可用目标路径、BibTeX key、策略、主题、project 关系、注意事项和提交策略组成的短提示词启动摄入。

## 下一步

1. 下一篇优先摄入 A≈130 原始实验文献，例如 `133Ce` 2013 MχD 或 `131Ba` 手征原始论文，并把精确观测接入 project evidence categories；
2. 如需把 De Voigt 转述的具体历史实验用于论文级主张，继续回溯其所引原始工作；
3. 数据处理出现新 γ 线、能级、ADO/DCO、polarization、mixing ratio、寿命或跃迁强度后，按 Data-Analysis Bridge 的状态字段接入；
4. 每累计 5 篇相关文献更新一次 synthesis，并继续避免以 review 替代原始实验；
5. 每次摄入或 claim 审阅状态变化后，以 lint `GOVERNANCE` 输出同步 `knowledge/overview.md`；
6. 用户在 GitHub Actions 页面确认 `Wiki lint` 结果；若失败，读取日志后修复。

当前规则修订已完成，无遗留修改事项。下一次任务应按 `AGENTS.md` 的条件判断是否需要读取 `PLAN.md`；若从 safe suspend 恢复，先读取 handoff 中的续跑提示词与风险记录。

`wiki-evidence-query` Skill 构建已完成，无遗留修改事项；后续可用 `$wiki-evidence-query` 对真实问题做只读验证。

## 未解决问题

- A≈130 的具体核素范围尚未确定；
- 带结构命名规范需结合用户现有论文和数据习惯；
- `raw/papers/` 的 9 个 PDF 当前均有 source 页；这只表示本地摄入对应，不表示领域文献完整覆盖。
- 未发表数据的隔离与加密策略尚未确定。
- qmd 当前未安装；在页面规模证明有需要之前暂不引入。
- `131Xe` yrare 序列的 mixing ratio 与 B(M1)/B(E2) 仍需用户核对原始分析细节。
- `137Nd` 新伙伴 D3、D6 缺实验 B(M1)/B(E2) 与寿命，手征解释保持候选；
- GitHub Actions 首次远端运行结果尚未核验：当前环境无 `gh` 且浏览器未登录私有仓库；
- 自动反应道守恒当前只解析标准中子蒸发写法，复杂带电粒子道会报告 warning 并要求人工检查。
- 本机 heartbeat 未触发的具体内部原因仍不可见；应用开启、持续供电和禁用休眠均不能保证它执行，在验证常驻调度环境前不把它用于必须准时完成的任务。
- 9 条 claim-level `needs_review: true` 仍等待用户逐条或分组确认；页面级 `human-reviewed` 不改变这些待审项。
- De Voigt 1983 的 8 条 Key Results 已由用户逐条核对；其转述的关键历史实验仍需按项目需要回溯原始论文。
