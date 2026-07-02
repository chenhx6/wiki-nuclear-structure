---
type: system-handoff
graph-excluded: true
updated: 2026-07-02
---

# 跨会话交接

## 当前阶段

Phase 2：第一版结构和两轮摄入已经稳定；自动 lint 已实现，进入持续校准与原始关键文献补全阶段。

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
- 用户新增 README/PLAN 类根目录笔记，用于保存阶段性工作记录、使用备忘和计划；当前实际文件为未跟踪的 `RAEDME + PLAN.md`，Agent 已读取但未修改、重命名或提交。

## 关键设计决定

- 不照搬“来源数决定置信度”规则，改用证据直接性、独立性、模型依赖和人工复核。
- 不把两年以上文献统一标为过时；经典实验与理论按内容类型判断时效。
- 将操作流程拆成独立 Markdown，稳定后再转换为 skills，避免一开始把错误流程固化。
- 核素、能带和物理概念分开建页，避免把观测对象与物理解读混为一谈。
- 自动 lint 只阻止机械可判定的结构性 error；科学待审状态作为 warning/info，不为“绿灯”自动修改解释。
- GitHub 因不保存 PDF，只报告 raw source 缺失 warning；完整 source hash 必须在本机执行。
- 定时调度只提供尽力执行，不构成完成证据；运行回执与产物核验是“已执行”的必要条件。

## 下一步

1. 用户在 GitHub Actions 页面确认首次 `Wiki lint` 结果；若失败，读取日志后修复；
2. 把 2020、2021 两篇论文加入 Zotero `Wiki Inbox`，回填稳定 citation key；
3. 优先补入 `133Ce` MχD 2013 原始论文、`131Ba` 手征原始论文及相关寿命测量，避免长期依赖二手回引；
4. 经过 2-3 轮真实使用后，再决定是否把 ingest/lint 工作流封装成专用 skill。
5. 若再次需要跨额度窗口续跑，默认由 handoff + 用户唤醒恢复；只有确认常驻执行环境后才启用独立调度。

## 未解决问题

- A≈130 的具体核素范围尚未确定；
- 带结构命名规范需结合用户现有论文和数据习惯；
- 2020 `137Nd`、2021 `131Ba/133Ce` 尚不在 `wiki-inbox.bib`，缺稳定 citation key；
- 未发表数据的隔离与加密策略尚未确定。
- qmd 当前未安装；在页面规模证明有需要之前暂不引入。
- `131Xe` yrare 序列的 mixing ratio 与 B(M1)/B(E2) 仍需用户核对原始分析细节。
- `137Nd` 新伙伴 D3、D6 缺实验 B(M1)/B(E2) 与寿命，手征解释保持候选；
- GitHub Actions 首次远端运行结果尚未核验：当前环境无 `gh` 且浏览器未登录私有仓库；
- 自动反应道守恒当前只解析标准中子蒸发写法，复杂带电粒子道会报告 warning 并要求人工检查。
- 本机 heartbeat 未触发的具体内部原因仍不可见；应用开启、持续供电和禁用休眠均不能保证它执行，在验证常驻调度环境前不把它用于必须准时完成的任务。
