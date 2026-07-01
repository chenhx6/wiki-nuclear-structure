---
type: system-handoff
graph-excluded: true
updated: 2026-07-01
---

# 跨会话交接

## 当前阶段

Phase 1：第一版结构稳定；已完成两轮代表性文献摄入，进入人工校准与自动 lint 准备阶段。

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

## 关键设计决定

- 不照搬“来源数决定置信度”规则，改用证据直接性、独立性、模型依赖和人工复核。
- 不把两年以上文献统一标为过时；经典实验与理论按内容类型判断时效。
- 将操作流程拆成独立 Markdown，稳定后再转换为 skills，避免一开始把错误流程固化。
- 核素、能带和物理概念分开建页，避免把观测对象与物理解读混为一谈。

## 下一步

1. 用户审阅 `137nd-d2-d3-doublet`、`137nd-d5-d6-doublet` 和 `signature-splitting-mechanisms`；
2. 把 2020、2021 两篇论文加入 Zotero `Wiki Inbox`，回填稳定 citation key；
3. 将本地 Git 配置为 GitHub `origin` 并首次 push；
4. 根据两轮摄入暴露的问题实现自动 lint，再评估是否制作专用 ingest skill；
5. 优先补入 `133Ce` MχD 2013 原始论文、`131Ba` 手征原始论文及相关寿命测量，避免长期依赖二手回引。

## 未解决问题

- A≈130 的具体核素范围尚未确定；
- 带结构命名规范需结合用户现有论文和数据习惯；
- 2020 `137Nd`、2021 `131Ba/133Ce` 尚不在 `wiki-inbox.bib`，缺稳定 citation key；
- 未发表数据的隔离与加密策略尚未确定。
- qmd 当前未安装；在页面规模证明有需要之前暂不引入。
- `131Xe` yrare 序列的 mixing ratio 与 B(M1)/B(E2) 仍需用户核对原始分析细节。
- `137Nd` 新伙伴 D3、D6 缺实验 B(M1)/B(E2) 与寿命，手征解释保持候选；
- 本地 Git 尚无 `origin`，GitHub 私有仓库还没有从本机首次 push；
- `.obsidian/` 和 `raw/zotero/wiki-inbox.bib` 是用户新生成的未跟踪资产，收尾提交时不得覆盖。
