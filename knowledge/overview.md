---
type: system-overview
graph-excluded: true
created: 2026-07-01
updated: 2026-07-09
---

# Knowledge Base Health Dashboard

## Current Snapshot: 2026-07-09

This snapshot reflects the article4-6 review finalization after user source-page review and the addition of `152Dy` experiment entries.

| metric | current value | note |
|---|---:|---|
| source pages | 26 | Added Cejnar 1996, Radeck 2012 and Lauritsen 2025 for the sigma-over-I/P-ADO project. |
| nucleus pages | 9 | Added [[152dy]] as a narrow Lauritsen 2025 `152Dy` experiment/observable entry. |
| experiment pages | 14 | Added [[atlas-gretina-152dy-ca48-191mev]]. |
| concept pages | 20 | Added deorientation and updated sigma-over-I boundaries. |
| method pages | 10 | Added angular-correlation and tracking-array method anchors. |
| observable pages | 11 | Updated attenuation-coefficient boundary. |
| project pages | 6 | Updated sigma-over-I evidence map. |
| source pages unreviewed | 0 | User confirmed source-page P0/P1/P2 review for the article4-6 pages. |
| source claim-level `needs_review: true` | 0 | C96-1--C96-11, R12-1--R12-12, L25-1--L25-16 are marked reviewed. |
| claim missing locator | 0 | Lint found no claim locator gaps. |
| source missing raw_file / citation_key | 0 / 0 | Lint found no missing source raw/citation metadata. |
| raw hash coverage | 26/26 | Lint reports all source pages matched raw hashes. |
| wikilinks | 1322 | Lint count. |

## Previous Snapshot: 2026-07-08

| 指标 | 当前值 | 说明 |
|---|---:|---|
| 正式来源数 | 23 | `knowledge/sources/`；新增 Draper 1970、Zobel 1980 与 Zobel 1983 的 sigma-over-I/P-ADO alignment sources |
| 核素页数 | 8 | `knowledge/nuclei/`；新增 `135Nd` |
| 能带页数 | 20 | `knowledge/bands/`；新增 `135Nd` D1/TiP1/TiP2 |
| 概念页数 | 19 | `knowledge/concepts/`；新增 magnetic-substate population、spin alignment、side feeding 与 sigma-over-I |
| 实验页数 | 13 | `knowledge/experiments/`；新增 JUROGAM II `100Mo(40Ar,5n)135Nd` 数据集 |
| 模型页数 | 13 | `knowledge/models/`；新增 interacting boson-fermion model |
| 观测量页数 | 11 | `knowledge/observables/`；新增 angular-distribution coefficient 与 attenuation coefficient |
| 方法页数 | 8 | `knowledge/methods/`；新增 angular-distribution |
| 综合页数 | 5 | `knowledge/synthesis/`；新增 low-spin wobbling + γ-soft + TiP/IBFM cross-project synthesis |
| 项目页数 | 6 | `knowledge/projects/`；新增 sigma-over-I uncertainty in P-ADO mixing-ratio extraction |
| 人工确认的高置信度结论 | 0 | 必须有确认记录 |
| 页面级人工审阅页 | 36 | 23 个 source 页 + 13 个其他知识页；sigma-over-I project 已完成本轮人工审核 |
| 页面级 unreviewed | 90 | 自动 lint governance 统计 |
| source 页 unreviewed | 0 | 23 个 source 页当前均已完成人工页面级审阅 |
| 页面级 needs-human-review | 0 | 当前无页面级待人工复核页 |
| claim-level `needs_review: true` | 0 | 当前 source 与 project/synthesis claim 审核队列均已清零 |
| project-level synthesis `needs_review: true` | 0 | 当前跨来源 project / synthesis notes 已完成本轮人工审核 |
| claim 缺失 locator | 0 | 自动解析 source `Key Results` 表 |
| claim 缺失 claim kind | 0 | 使用 schema 字段 `claim_kind` |
| source 缺失 raw_file | 0 | 自动统计 source frontmatter |
| source 缺失 citation key | 0 | 自动统计 source frontmatter |
| 开放问题数 | 12 | `knowledge/questions.md`；新增 P-ADO / NST `σ/I` mapping 问题 |
| 断裂链接 | 0 | 1254 个 Wikilink 已检查 |
| Raw 哈希异常 | 0 | 23/23 个来源页与原文件一致 |
| 自动 lint | 0 error / 10 warning / 0 info | warning 含用户 BibTeX/raw 工作树改动、未配置元素与 `1p4n` |

自动 lint 全绿只表示没有达到失败阈值的结构问题，不表示科学内容已经全部完成人工复核。
