---
type: system-overview
graph-excluded: true
created: 2026-07-01
updated: 2026-07-06
---

# Knowledge Base Health Dashboard

| 指标 | 当前值 | 说明 |
|---|---:|---|
| 正式来源数 | 20 | `knowledge/sources/`；新增 Nomura 2022 IBFM low-spin wobbling alternative |
| 核素页数 | 8 | `knowledge/nuclei/`；新增 `135Nd` |
| 能带页数 | 20 | `knowledge/bands/`；新增 `135Nd` D1/TiP1/TiP2 |
| 概念页数 | 15 | `knowledge/concepts/`；新增 tilted-precession bands |
| 实验页数 | 13 | `knowledge/experiments/`；新增 JUROGAM II `100Mo(40Ar,5n)135Nd` 数据集 |
| 模型页数 | 13 | `knowledge/models/`；新增 interacting boson-fermion model |
| 观测量页数 | 9 | `knowledge/observables/` |
| 方法页数 | 7 | `knowledge/methods/` |
| 综合页数 | 5 | `knowledge/synthesis/`；新增 low-spin wobbling + γ-soft + TiP/IBFM cross-project synthesis |
| 项目页数 | 5 | `knowledge/projects/`；新增 gamma-soft deformation evidence map |
| 人工确认的高置信度结论 | 0 | 必须有确认记录 |
| 页面级人工审阅页 | 32 | 20 个 source 页 + 12 个其他知识页；cross-project umbrella 与 synthesis 已完成本轮人工审核 |
| 页面级 unreviewed | 83 | 自动 lint governance 统计 |
| source 页 unreviewed | 0 | 20 个 source 页当前均已完成人工页面级审阅 |
| 页面级 needs-human-review | 0 | 当前无页面级待人工复核页 |
| claim-level `needs_review: true` | 0 | 当前 source 与跨来源 claim 审核队列均已清零 |
| project-level synthesis `needs_review: true` | 0 | 当前跨来源 project / synthesis notes 已完成本轮人工审核 |
| claim 缺失 locator | 0 | 自动解析 source `Key Results` 表 |
| claim 缺失 claim kind | 0 | 使用 schema 字段 `claim_kind` |
| source 缺失 raw_file | 0 | 自动统计 source frontmatter |
| source 缺失 citation key | 0 | 自动统计 source frontmatter |
| 开放问题数 | 11 | `knowledge/questions.md`；新增跨案例最小 wobbling identification protocol 问题 |
| 断裂链接 | 0 | 1172 个 Wikilink 已检查 |
| Raw 哈希异常 | 0 | 20/20 个来源页与原文件一致 |
| 自动 lint | 0 error / 10 warning / 0 info | warning 含用户 BibTeX、未配置元素与 `1p4n` |

自动 lint 全绿只表示没有达到失败阈值的结构问题，不表示科学内容已经全部完成人工复核。
