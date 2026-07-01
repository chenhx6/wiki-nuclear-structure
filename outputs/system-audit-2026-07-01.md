---
type: output
graph-excluded: true
title: 初始化系统核查
created: 2026-07-01
updated: 2026-07-01
status: active
review_status: human-review-needed
output_kind: system-audit
scope: governance-and-empty-structure
sources: []
tags: [system, audit]
---

# 初始化系统核查

## 范围

检查新建治理层、第一版目录、系统页和模板。当前尚未正式摄入科研来源，因此来源哈希、科学主张溯源和领域内容一致性只能标记为“不适用/待首次摄入验证”。

## 摘要

| 状态 | 数量 | 说明 |
|---|---:|---|
| 通过 | 6 | 目录、Wiki frontmatter、type、治理文件、工作流、模板框架 |
| 警告 | 3 | qmd 未安装；git 命令不可用；尚无真实来源可做端到端验证 |
| 失败 | 0 | 本轮未发现结构性失败 |
| 未执行 | 3 | YAML 语义解析、raw 哈希比对、科学内容专项检查 |

## 检查结果

### ✅ 目录结构

所需的 `raw/`、`wiki/`、`system/workflows/` 子目录均存在。

### ✅ Wiki Markdown 基础 frontmatter

检查时共有 13 个 `wiki/` Markdown 文件；均以 frontmatter 开始，且均包含非空 `type`。新增本报告和 output 模板后数量相应增加。

### ✅ 跨会话记忆机制

已建立并互相分工：

- `AGENTS.md`：启动顺序与行为契约；
- `system/memory.md`：稳定长期规则；
- `system/handoff.md`：当前状态与下一步；
- `wiki/log.md`：只追加的历史记录。

### ✅ 科学证据政策

已明确区分实验事实、作者解释、模型结果和个人推断；`high` 置信度需要用户确认；来源数量不直接等于独立证据。

### ✅ 领域专项保护

已加入核素 A/Z/N、反应道、自旋宇称、单位、不确定度、实验判据和竞争解释检查；明确禁止自动合并 wobbling/chiral 以及 γ-soft/γ-rigid。

### ✅ 可迁移工作流

INGEST、QUERY、REFLECT、LINT 已拆为独立 Markdown。待真实论文试运行并稳定后，可迁移为专用 skills。

### ⚠ qmd 未安装

本机当前未发现 `qmd` 命令。本阶段以 `wiki/index.md`、`rg` 和直接读取降级。知识库尚为空，不建议现在为了“看起来完整”提前引入搜索依赖。

### ⚠ git 命令不可用

工作区存在 `.git`，但当前终端找不到 `git` 可执行命令，因此尚不能验证版本状态、提交历史和回滚能力。在 git 可用并完成首次提交之前，不得声称版本保护已经生效。

### ⚠ 尚未做端到端试摄入

模板和流程尚未通过真实核结构论文验证。第一篇代表性论文应覆盖核反应、能级方案、带结构、实验判据和竞争解释，用来暴露 schema 缺口。

### ⏸ YAML 语义解析未执行

本轮只检查了 frontmatter 边界和 `type` 字段，没有调用独立 YAML 解析器。自动 lint 实现后补上。

### ⏸ Raw 哈希与来源完整性未执行

`raw/` 尚无正式科研来源。

### ⏸ 科学内容一致性未执行

尚无核素页、带结构页或科学主张可供检查。

## 修复优先级

- P0：无。
- P1：选择一篇代表性论文完成端到端试摄入，并由用户审阅。
- P1：结合试摄入结果修订 source/nucleus/band/concept 模板。
- P1：使 git 命令在当前环境可用，并创建经过用户确认的首次基线提交。
- P2：流程稳定后实现自动 lint。
- P2：页面达到一定规模且索引不足时再评估 qmd。
