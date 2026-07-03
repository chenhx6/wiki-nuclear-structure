---
type: system-overview
graph-excluded: true
created: 2026-07-01
updated: 2026-07-03
---

# Knowledge Base Health Dashboard

| 指标 | 当前值 | 说明 |
|---|---:|---|
| 正式来源数 | 9 | `knowledge/sources/`；Domscheit 1999 为非 A≈130 比较参照 |
| 核素页数 | 5 | `knowledge/nuclei/` |
| 能带页数 | 9 | `knowledge/bands/` |
| 概念页数 | 14 | `knowledge/concepts/` |
| 实验页数 | 6 | `knowledge/experiments/` |
| 模型页数 | 12 | `knowledge/models/` |
| 观测量页数 | 9 | `knowledge/observables/` |
| 方法页数 | 7 | `knowledge/methods/` |
| 综合页数 | 4 | `knowledge/synthesis/` |
| 项目页数 | 1 | `knowledge/projects/` |
| 人工确认的高置信度结论 | 0 | 必须有确认记录 |
| 页面级人工审阅页 | 15 | 9 个 source 页 + 6 个其他知识页 |
| 页面级 unreviewed | 61 | 自动 lint governance 统计；本轮派生页未冒充人工审阅 |
| source 页 unreviewed | 0 | 9 个 source 页均完成人工页面级审阅 |
| 页面级 needs-human-review | 0 | 不等同于 claim-level 待审数量 |
| claim-level `needs_review: true` | 0 | 当前 66 条结构化 claims 均已完成用户确认 |
| claim 缺失 locator | 0 | 自动解析 source `Key Results` 表 |
| claim 缺失 claim kind | 0 | 使用 schema 字段 `claim_kind` |
| source 缺失 raw_file | 0 | 自动统计 source frontmatter |
| source 缺失 citation key | 0 | 自动统计 source frontmatter |
| 开放问题数 | 6 | `knowledge/questions.md`；本轮未改变 A≈130 开放问题 |
| 断裂链接 | 0 | 526 个 Wikilink 已检查 |
| Raw 哈希异常 | 0 | 9/9 个来源页与原文件一致 |
| 自动 lint | 0 error / 3 warning / 0 info | warning 为用户 BibTeX 修改及 lint 未配置 Lu 导致的两项检查提示 |

自动 lint 全绿只表示没有达到失败阈值的结构问题，不表示科学内容已经全部完成人工复核。
