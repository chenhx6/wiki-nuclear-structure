---
type: output
title: "System audit 2026-07-01 v2"
aliases: []
created: 2026-07-01
updated: 2026-07-01
status: active
review_status: unreviewed
output_type: system-audit
scope: second-literature-ingest-and-obsidian-integration
sources: []
tags: [audit, wiki-health]
---

# 系统核查报告：2026-07-01 v2

## 范围

检查 Obsidian/Dataview 与 Zotero 轻连接文档同步，以及 2016 `133Ce`、2020 `137Nd`、2021 `131Ba/133Ce` 三篇文献摄入。

## 汇总

| 结果 | 数量 |
|---|---:|
| 通过 | 15 |
| 警告 | 4 |
| 失败 | 0 |
| 未执行 | 2 |

## 通过

1. 已按 `AGENTS.md` 完成启动读取并在修改前检查 Git。
2. 用户既有 `.obsidian/` 与 `wiki-inbox.bib` 未被覆盖。
3. `raw/` 无 tracked diff。
4. 7/7 来源页的 `raw_file` 存在且 SHA-256 完全匹配。
5. 三篇新来源均记录 DOI、期刊、年份、反应与实验装置。
6. 实验事实、作者解释和模型结果在来源页中分栏记录。
7. 模型 γ 与实验直接观测保持区分。
8. `131Ba(Z=56,N=75)`、`133Ce(Z=58,N=75)`、`137Nd(Z=60,N=77)` 的 A/Z/N 自洽。
9. 四条反应的束流、靶、蒸发道和余核自洽。
10. 正式科学知识页为 61 个；`knowledge/` Markdown 总数为 64。
11. 372 个 Wikilink 全部可解析，断链为 0。
12. knowledge 内无重复 basename/slug。
13. 核心目录页面均具有允许的 `type`，非法项为 0。
14. `git diff --check` 返回 0；仅有 Windows LF/CRLF 提示。
15. `USER_GUIDE.md`、vocabulary、index、overview、questions、log 和 handoff 已同步。

## 警告

### P1：`137Nd` 候选双重带待人工审阅

`137nd-d2-d3-doublet` 与 `137nd-d5-d6-doublet` 保持 `needs-human-review`。D3、D6 缺实验 B(M1)/B(E2) 和寿命，不应升级为确定手征。

### P1：本地 Git 尚未连接 GitHub

当前分支为 `main`，但 `git remote -v` 无输出。私有仓库已经创建，仍需添加 `origin` 并首次 push。

### P2：两篇来源缺 Zotero citation key

`wiki-inbox.bib` 当前只有 2016 `133Ce`。2020 `137Nd` 与 2021 `131Ba/133Ce` 来源页的 Zotero 字段保持空值。

### P2：用户生成资产尚未纳入版本选择

`.obsidian/` 配置和 `raw/zotero/wiki-inbox.bib` 为未跟踪用户资产。Dataview 插件程序本体已由 `.gitignore` 排除；是否提交配置与 BibTeX 应在 Git 收尾时明确。

## 未执行

1. 未运行 qmd/向量语义检索；当前 64 页规模不构成必要条件。
2. 未对 2020、2021 来源做 Zotero item key/select URI 校验，因为它们尚未进入导出。

## 结论

本轮无 P0/P1 结构性失败。知识层可以继续使用；下一科学质量门是人工审阅 `137Nd` 两对候选双重带，并补入原始寿命与 MχD 论文。

