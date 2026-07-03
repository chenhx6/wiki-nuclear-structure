---
type: system-overview
graph-excluded: true
created: 2026-07-01
updated: 2026-07-03
---

# Knowledge Base Health Dashboard

| 指标 | 当前值 | 说明 |
|---|---:|---|
| 正式来源数 | 12 | `knowledge/sources/`；新增 Lv 2022 wobbling counter-source |
| 核素页数 | 6 | `knowledge/nuclei/` |
| 能带页数 | 14 | `knowledge/bands/`；新增 `135Pr` second-side-band 候选页 |
| 概念页数 | 14 | `knowledge/concepts/` |
| 实验页数 | 10 | `knowledge/experiments/`；新增 Lv 2022 JUROGAM II 数据集页 |
| 模型页数 | 12 | `knowledge/models/` |
| 观测量页数 | 9 | `knowledge/observables/` |
| 方法页数 | 7 | `knowledge/methods/` |
| 综合页数 | 4 | `knowledge/synthesis/` |
| 项目页数 | 2 | `knowledge/projects/` |
| 人工确认的高置信度结论 | 0 | 必须有确认记录 |
| 页面级人工审阅页 | 18 | 12 个 source 页 + 6 个其他知识页 |
| 页面级 unreviewed | 72 | 自动 lint governance 统计；Lv experiment 与派生更新仍待审 |
| source 页 unreviewed | 0 | 12 个 source 页均完成人工页面级审阅 |
| 页面级 needs-human-review | 0 | 不等同于 claim-level 待审数量 |
| claim-level `needs_review: true` | 0 | 当前 107 条结构化 claims 均已完成用户确认 |
| claim 缺失 locator | 0 | 自动解析 source `Key Results` 表 |
| claim 缺失 claim kind | 0 | 使用 schema 字段 `claim_kind` |
| source 缺失 raw_file | 0 | 自动统计 source frontmatter |
| source 缺失 citation key | 0 | 自动统计 source frontmatter |
| 开放问题数 | 9 | `knowledge/questions.md`；新增 Matta/Lv mixing-ratio 分歧问题 |
| 断裂链接 | 0 | 729 个 Wikilink 已检查 |
| Raw 哈希异常 | 0 | 12/12 个来源页与原文件一致 |
| 自动 lint | 0 error / 7 warning / 0 info | warning 含用户 BibTeX、既有元素与 `1p4n` 解析提示 |

自动 lint 全绿只表示没有达到失败阈值的结构问题，不表示科学内容已经全部完成人工复核。
