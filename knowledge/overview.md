---
type: system-overview
graph-excluded: true
created: 2026-07-01
updated: 2026-07-05
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
| 综合页数 | 4 | `knowledge/synthesis/`；扩写 gamma-soft 阶段性综合 |
| 项目页数 | 5 | `knowledge/projects/`；新增 gamma-soft deformation evidence map |
| 人工确认的高置信度结论 | 0 | 必须有确认记录 |
| 页面级人工审阅页 | 31 | 20 个 source 页 + 11 个其他知识页；Nomura 2022 source 已审，IBFM model 仍待审 |
| 页面级 unreviewed | 83 | 自动 lint governance 统计；当前新增未审页主要为 IBFM model 等派生页 |
| source 页 unreviewed | 0 | 20 个 source 页当前均已完成人工页面级审阅 |
| 页面级 needs-human-review | 0 | 不等同于 claim-level 待审数量 |
| claim-level `needs_review: true` | 0 | 当前 source claim 队列已清零；待审项仅剩 project-level notes |
| project-level synthesis `needs_review: true` | 0 | 当前所有 project-level notes 已通过用户审核 |
| claim 缺失 locator | 0 | 自动解析 source `Key Results` 表 |
| claim 缺失 claim kind | 0 | 使用 schema 字段 `claim_kind` |
| source 缺失 raw_file | 0 | 自动统计 source frontmatter |
| source 缺失 citation key | 0 | 自动统计 source frontmatter |
| 开放问题数 | 11 | `knowledge/questions.md`；新增跨案例最小 wobbling identification protocol 问题 |
| 断裂链接 | 0 | 1124 个 Wikilink 已检查 |
| Raw 哈希异常 | 0 | 20/20 个来源页与原文件一致 |
| 自动 lint | 0 error / 10 warning / 0 info | warning 含用户 BibTeX、未配置元素与 `1p4n` 解析提示；当前无 source-claim 待审 info |

自动 lint 全绿只表示没有达到失败阈值的结构问题，不表示科学内容已经全部完成人工复核。
