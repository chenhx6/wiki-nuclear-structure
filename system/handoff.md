---
type: system-handoff
graph-excluded: true
updated: 2026-07-01
---

# 跨会话交接

## 当前阶段

Phase 1：重构第一版目录、建立 Git 基线并用代表性论文试摄入。

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

## 关键设计决定

- 不照搬“来源数决定置信度”规则，改用证据直接性、独立性、模型依赖和人工复核。
- 不把两年以上文献统一标为过时；经典实验与理论按内容类型判断时效。
- 将操作流程拆成独立 Markdown，稳定后再转换为 skills，避免一开始把错误流程固化。
- 核素、能带和物理概念分开建页，避免把观测对象与物理解读混为一谈。

## 下一步

1. 用户审阅 `131Xe` 三条能带页和 `wobbling-vs-signature-partner` 综合页；
2. 根据用户反馈修订 band/observable 模板；
3. 继续摄入 `2016 133Ce`、`2020 137Nd` 和 `2021 131Ba/133Ce`；
4. 流程稳定后实现自动 lint，并评估是否制作专用 skills。

## 未解决问题

- A≈130 的具体核素范围尚未确定；
- 带结构命名规范需结合用户现有论文和数据习惯；
- Zotero 轻连接已设计，但 `Wiki Inbox` Better BibTeX 自动导出尚未由用户配置；
- 未发表数据的隔离与加密策略尚未确定。
- qmd 当前未安装；在页面规模证明有需要之前暂不引入。
- `131Xe` yrare 序列的 mixing ratio 与 B(M1)/B(E2) 仍需用户核对原始分析细节。
