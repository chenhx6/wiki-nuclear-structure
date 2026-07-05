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
| 综合页数 | 4 | `knowledge/synthesis/`；扩写 gamma-soft 阶段性综合 |
| 项目页数 | 5 | `knowledge/projects/`；新增 gamma-soft deformation evidence map |
| 人工确认的高置信度结论 | 0 | 必须有确认记录 |
| 页面级人工审阅页 | 30 | 19 个 source 页 + 11 个其他知识页；gamma-soft project 与 synthesis 已审 |
| 页面级 unreviewed | 82 | 自动 lint governance 统计；gamma-soft project 与 synthesis 已完成用户审核 |
| source 页 unreviewed | 0 | 19 个 source 页均完成人工页面级审阅 |
| 页面级 needs-human-review | 0 | 不等同于 claim-level 待审数量 |
| claim-level `needs_review: true` | 0 | 当前 208 条结构化 source claims 均已完成用户确认 |
| project-level synthesis `needs_review: true` | 0 | GSD-PROJ-1 至 6 与 GSD-SYN-1 至 8 已完成用户审核；lint 当前不自动汇总该表 |
| claim 缺失 locator | 0 | 自动解析 source `Key Results` 表 |
| claim 缺失 claim kind | 0 | 使用 schema 字段 `claim_kind` |
| source 缺失 raw_file | 0 | 自动统计 source frontmatter |
| source 缺失 citation key | 0 | 自动统计 source frontmatter |
| 开放问题数 | 11 | `knowledge/questions.md`；新增跨案例最小 wobbling identification protocol 问题 |
| 断裂链接 | 0 | 1078 个 Wikilink 已检查 |
| Raw 哈希异常 | 0 | 19/19 个来源页与原文件一致 |
| 自动 lint | 0 error / 10 warning / 0 info | warning 含用户 BibTeX、未配置元素与 `1p4n` 解析提示；project/synthesis 待审表需人工统计 |

自动 lint 全绿只表示没有达到失败阈值的结构问题，不表示科学内容已经全部完成人工复核。
