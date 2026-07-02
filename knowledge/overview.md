---
type: system-overview
graph-excluded: true
created: 2026-07-01
updated: 2026-07-02
---

# Knowledge Base Health Dashboard

| 指标 | 当前值 | 说明 |
|---|---:|---|
| 正式来源数 | 8 | `knowledge/sources/`；含 De Voigt 1983 review/background |
| 核素页数 | 4 | `knowledge/nuclei/` |
| 能带页数 | 7 | `knowledge/bands/` |
| 概念页数 | 13 | `knowledge/concepts/` |
| 实验页数 | 5 | `knowledge/experiments/` |
| 模型页数 | 12 | `knowledge/models/` |
| 观测量页数 | 8 | `knowledge/observables/` |
| 方法页数 | 7 | `knowledge/methods/` |
| 综合页数 | 4 | `knowledge/synthesis/` |
| 项目页数 | 1 | `knowledge/projects/` |
| 人工确认的高置信度结论 | 0 | 必须有确认记录 |
| 页面级人工审阅页 | 14 | 8 个 source 页 + 6 个其他知识页 |
| 页面级 unreviewed | 55 | 自动 lint governance 统计 |
| source 页 unreviewed | 0 | 8 个 source 页均完成人工页面级审阅 |
| 页面级 needs-human-review | 0 | 不等同于 claim-level 待审数量 |
| claim-level `needs_review: true` | 9 | De Voigt 1983 的 8 条 Key Results 已由用户逐条核对 |
| claim 缺失 locator | 0 | 自动解析 source `Key Results` 表 |
| claim 缺失 claim kind | 0 | 使用 schema 字段 `claim_kind` |
| source 缺失 raw_file | 0 | 自动统计 source frontmatter |
| source 缺失 citation key | 0 | 自动统计 source frontmatter |
| 开放问题数 | 6 | `knowledge/questions.md` |
| 断裂链接 | 0 | 468 个 Wikilink 已检查 |
| Raw 哈希异常 | 0 | 8/8 个来源页与原文件一致 |
| 自动 lint | 0 error / 1 warning / 9 info | warning 为用户 BibTeX 工作树修改；9 info 为 claim-level 待审项 |

自动 lint 全绿只表示没有达到失败阈值的结构问题，不表示科学内容已经全部完成人工复核。
