---
type: system-overview
graph-excluded: true
created: 2026-07-01
updated: 2026-07-09
---

# Knowledge Base Health Dashboard

## Current Snapshot: 2026-07-09

This snapshot reflects the finalized article7-9 three-paper batch ingest for sigma-over-I experimental-practice / reference-guide / TDPAD boundary sources. The three new source pages and their project claims were user-reviewed on 2026-07-09.

| metric | current value | note |
|---|---:|---|
| source pages | 29 | Added Chiara 2012, Summary 2013, and Gray 2020 for the sigma-over-I/P-ADO practice/boundary round. |
| nucleus pages | 9 | Added [[152dy]] as a narrow Lauritsen 2025 `152Dy` experiment/observable entry. |
| experiment pages | 14 | Added [[atlas-gretina-152dy-ca48-191mev]]. |
| concept pages | 20 | No new concept page this round; updated sigma-over-I boundaries. |
| method pages | 13 | Added spin-parity-assignment, TDPAD, and g-factor measurement method anchors. |
| observable pages | 11 | Updated attenuation-coefficient boundary. |
| project pages | 6 | Updated sigma-over-I evidence map. |
| source pages unreviewed | 0 | The three article7-9 source pages were moved to `review_status: human-reviewed`. |
| source claim-level `needs_review: true` | 0 | CH12-1--CH12-8, SB13-1--SB13-7, and G20-1--G20-9 were cleared by user review on 2026-07-09. |
| project claim-level `needs_review: true` | 0 | SIO-PROJ-13--SIO-PROJ-15 were cleared by user review on 2026-07-09. |
| claim missing locator | 0 | Lint found no claim locator gaps. |
| source missing raw_file / citation_key | 0 / 0 | Lint found no missing source raw/citation metadata. |
| raw hash coverage | 29/29 | Lint reports all source pages matched raw hashes after this round. |
| wikilinks | 1395 | Lint count. |

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
