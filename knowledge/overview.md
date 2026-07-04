---
type: system-overview
graph-excluded: true
created: 2026-07-01
updated: 2026-07-04
---

# Knowledge Base Health Dashboard

| 指标 | 当前值 | 说明 |
|---|---:|---|
| 正式来源数 | 14 | `knowledge/sources/`；新增 Guo 2022 `187Au` counter/reinterpretation source |
| 核素页数 | 7 | `knowledge/nuclei/`；新增 `187Au` |
| 能带页数 | 17 | `knowledge/bands/`；新增 `187Au` yrast/LW/SP 三带 |
| 概念页数 | 14 | `knowledge/concepts/` |
| 实验页数 | 12 | `knowledge/experiments/`；新增 HIRFL `175Lu(18O,6n)187Au` 联合 `R_ac-P` 数据集 |
| 模型页数 | 12 | `knowledge/models/` |
| 观测量页数 | 9 | `knowledge/observables/` |
| 方法页数 | 7 | `knowledge/methods/` |
| 综合页数 | 4 | `knowledge/synthesis/` |
| 项目页数 | 3 | `knowledge/projects/`；`187Au` project 已形成 supporting/counter locator-level evidence matrix |
| 人工确认的高置信度结论 | 0 | 必须有确认记录 |
| 页面级人工审阅页 | 22 | 14 个 source 页 + 8 个其他知识页；`187Au` project matrix 已审 |
| 页面级 unreviewed | 77 | 自动 lint governance 统计；派生页仍保持独立审阅状态 |
| source 页 unreviewed | 0 | 14 个 source 页均完成人工页面级审阅 |
| 页面级 needs-human-review | 0 | 不等同于 claim-level 待审数量 |
| claim-level `needs_review: true` | 0 | 当前 144 条结构化 claims 均已完成用户确认 |
| claim 缺失 locator | 0 | 自动解析 source `Key Results` 表 |
| claim 缺失 claim kind | 0 | 使用 schema 字段 `claim_kind` |
| source 缺失 raw_file | 0 | 自动统计 source frontmatter |
| source 缺失 citation key | 0 | 自动统计 source frontmatter |
| 开放问题数 | 10 | `knowledge/questions.md`；更新 `187Au` mixing-ratio branch 与 band identity 问题 |
| 断裂链接 | 0 | 862 个 Wikilink 已检查 |
| Raw 哈希异常 | 0 | 14/14 个来源页与原文件一致 |
| 自动 lint | 0 error / 10 warning / 0 info | warning 含用户 BibTeX、未配置元素与 `1p4n` 解析提示 |

自动 lint 全绿只表示没有达到失败阈值的结构问题，不表示科学内容已经全部完成人工复核。
