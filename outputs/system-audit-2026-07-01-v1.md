---
type: output
graph-excluded: true
title: 第一版 Wiki 摄入后系统核查
created: 2026-07-01
updated: 2026-07-01
status: active
review_status: human-review-needed
output_kind: system-audit
scope: v1-structure-and-four-source-pilot
sources:
  - zamfir-casten-1991-gamma-softness-triaxiality
  - frauendorf-meng-1997-tilted-rotation-chirality
  - chakraborty-2023-131xe-wobbling-origin
  - frauendorf-2024-wobbling-review
tags: [system, audit, v1]
---

# 第一版 Wiki 摄入后系统核查

## 摘要

| 状态 | 数量 | 说明 |
|---|---:|---|
| 通过 | 9 | 目录、frontmatter、type、索引、链接、来源哈希、Raw 保护、指南同步、Git 基线 |
| 警告 | 3 | 科学页尚未人工复核；未使用完整 YAML 解析器；qmd 未安装 |
| 失败 | 0 | 未发现结构或证据链失败 |
| 未执行 | 1 | 自动化语义 lint 尚未实现 |

## 通过项

### 目录与职责

- 已使用 `raw/`、`knowledge/`、`system/`、`outputs/` 四层结构；
- 不再存在重复的内层 `wiki/`；
- experiment/model/observable 已成为独立页面类型。

### 知识页统计

- `knowledge/` Markdown：45；
- 正式科学知识页：42；
- 系统导航页：3；
- 来源 4、核素 1、能带 3、概念 9、实验 1、模型 9、观测量 7、方法 5、综合 3。

### Frontmatter 与类型

- 45 个 `knowledge/` Markdown 均有 frontmatter 边界；
- 所有 `type` 均属于 schema 允许集合；
- 正文长度小于 100 字的空壳页：0。

### 索引

正式科学知识页均出现在 `knowledge/index.md`；遗漏数 0。

### Wikilink

- 共检查 181 个 Wikilink；
- 断裂链接 0。

### 来源完整性

4 个 source 页均记录 `raw_file` 与 SHA-256；重新计算后全部匹配。

### Raw 与 Git

- 基线提交：`9264fdb`；
- Git diff 中没有 tracked raw 修改；
- 9 个 PDF 均处于 ignored 状态，没有进入普通 Git 历史。

### 文档同步门

`USER_GUIDE.md` 已更新为当前目录，并包含 Obsidian、Zotero、摄入、查询、写作、会话记忆和 Git 使用说明。

## 警告

### 人工科学复核

以下页面明确等待人工复核：

- `knowledge/bands/131xe-negative-parity-yrare-sequence.md`
- `knowledge/bands/131xe-negative-parity-yrast-13-2-sequence.md`
- `knowledge/synthesis/wobbling-vs-signature-partner.md`

### YAML 语义解析

当前环境没有 PyYAML/js-yaml。本次只检查了 frontmatter 边界、字段存在性和类型集合，没有使用完整 YAML 解析器。

### qmd

qmd 未安装。当前仅 45 个知识 Markdown，`index.md + rg + Wikilink` 足够，不构成阻塞。

## 未执行

尚未实现自动化 `scripts/lint.py`。在用户审阅首轮页面并确认 schema 不再大改后再实现，避免把错误规则写进自动化。

## 临时文件

PDF 文本和页面渲染位于 ignored 的 `tmp/`。自动清理动作受当前执行环境限制未完成；它们不进入 Git，也不参与知识库。

## 下一步优先级

- P0：用户复核 `131Xe` 能带和 wobbling/signature 综合页；
- P1：配置 Zotero `Wiki Inbox` 的 Better BibTeX 导出；
- P1：摄入 2016 `133Ce`、2020 `137Nd`、2021 `131Ba/133Ce`；
- P2：schema 稳定后实现自动 lint；
- P2：页面规模达到数百时再评估 WSL2 qmd。

