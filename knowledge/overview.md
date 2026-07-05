---
type: system-overview
graph-excluded: true
created: 2026-07-01
updated: 2026-07-05
---

# Knowledge Base Health Dashboard

| 指标 | 当前值 | 说明 |
|---|---:|---|
| 正式来源数 | 19 | `knowledge/sources/`；新增 Nomura 2017、Nomura 2021 与 Babra 2019 三篇 γ-soft deformation sources |
| 核素页数 | 8 | `knowledge/nuclei/`；新增 `135Nd` |
| 能带页数 | 20 | `knowledge/bands/`；新增 `135Nd` D1/TiP1/TiP2 |
| 概念页数 | 15 | `knowledge/concepts/`；新增 tilted-precession bands |
| 实验页数 | 13 | `knowledge/experiments/`；新增 JUROGAM II `100Mo(40Ar,5n)135Nd` 数据集 |
| 模型页数 | 12 | `knowledge/models/` |
| 观测量页数 | 9 | `knowledge/observables/` |
| 方法页数 | 7 | `knowledge/methods/` |
| 综合页数 | 4 | `knowledge/synthesis/` |
| 项目页数 | 4 | `knowledge/projects/`；low-spin umbrella 已接入 Lawrie/Lv TiP theory-experiment synthesis |
| 人工确认的高置信度结论 | 0 | 必须有确认记录 |
| 页面级人工审阅页 | 28 | 19 个 source 页 + 9 个其他知识页；本批三篇 source 已审 |
| 页面级 unreviewed | 83 | 自动 lint governance 统计 |
| source 页 unreviewed | 0 | 19 个 source 页均完成人工页面级审阅 |
| 页面级 needs-human-review | 0 | 不等同于 claim-level 待审数量 |
| claim-level `needs_review: true` | 0 | 当前 208 条结构化 source claims 均已完成用户确认 |
| project-level synthesis `needs_review: true` | 0 | 本轮 19 条 TiP/low-spin wobbling project notes 已完成人工审核 |
| claim 缺失 locator | 0 | 自动解析 source `Key Results` 表 |
| claim 缺失 claim kind | 0 | 使用 schema 字段 `claim_kind` |
| source 缺失 raw_file | 0 | 自动统计 source frontmatter |
| source 缺失 citation key | 0 | 自动统计 source frontmatter |
| 开放问题数 | 11 | `knowledge/questions.md`；新增跨案例最小 wobbling identification protocol 问题 |
| 断裂链接 | 0 | 1037 个 Wikilink 已检查 |
| Raw 哈希异常 | 0 | 19/19 个来源页与原文件一致 |
| 自动 lint | 0 error / 10 warning / 0 info | warning 含用户 BibTeX、未配置元素与 `1p4n` 解析提示 |

自动 lint 全绿只表示没有达到失败阈值的结构问题，不表示科学内容已经全部完成人工复核。
