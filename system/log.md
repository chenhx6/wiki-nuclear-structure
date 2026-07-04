---
type: system-log
graph-excluded: true
created: 2026-07-01
updated: 2026-07-04
---

# 操作日志

本文件仅追加。格式：

`## [YYYY-MM-DD HH:MM] operation | description`

## [2026-07-01] initialize | 建立低能核结构研究 Wiki 的治理层与第一版结构

## [2026-07-01] audit | 完成初始化结构核查；0 个结构性失败，qmd 未安装，端到端摄入待验证

## [2026-07-01] restructure | 将编译知识层重命名为 knowledge；模板、日志和输出分别归入 system 与 outputs

## [2026-07-01] git | 建立本地 Git 基线提交 9264fdb；PDF 和大型原始资料未跟踪

## [2026-07-01] ingest | Zamfir & Casten 1991：γ-soft/γ-rigid 的 γ-band staggering 判据

## [2026-07-01] ingest | Frauendorf & Meng 1997：aplanar TAC 与核转动手征性

## [2026-07-01] ingest | Chakraborty et al. 2023：131Xe wobbling/signature partner 判别

## [2026-07-01] ingest | Frauendorf 2024：wobbling 模型、证据与争议综述

## [2026-07-01] synthesize | 建立 γ-soft/rigid、chiral TAC、wobbling/signature 三个证据矩阵

## [2026-07-01] audit | 第一版核查：45 个 knowledge Markdown、181 个 Wikilink、0 断链、4/4 来源哈希匹配

## [2026-07-01] configure | 用户完成 Obsidian vault、Dataview、私有 GitHub 仓库与 Zotero Wiki Inbox 自动导出

## [2026-07-01] review | 用户轻度校准 131Xe 两个待审能带页和 wobbling/signature 综合页，整体评价良好

## [2026-07-01] ingest | Ayangeakaa et al. 2016：133Ce 中高自旋谱学、CNS 与 TAC-CDFT

## [2026-07-01] ingest | Petrache et al. 2020：137Nd 两对候选手征双重带

## [2026-07-01] ingest | Ding et al. 2021：131Ba/133Ce g7/2 强耦合带与 signature splitting 多机制

## [2026-07-01] synthesize | 建立 signature splitting 的非轴性、低-j mixing 与 Coriolis 耦合证据矩阵

## [2026-07-01] audit | 第二轮核查：64 个 knowledge Markdown、372 个 Wikilink、0 断链、7/7 来源哈希匹配

## [2026-07-02] git | 用户提交并推送 Obsidian/Zotero 桥接配置；main 已跟踪 origin/main

## [2026-07-02] review | 用户审阅 137Nd D2-D3、D5-D6 与 signature-splitting 机制综合，未发现大的问题

## [2026-07-02] automate | 实现标准库 Wiki lint、声明式配置、6 项测试和 GitHub Actions

## [2026-07-02] audit | 自动 lint 本地通过：61 个正式页、372 个 Wikilink、7/7 source hash、0 error、0 warning

## [2026-07-02] automation | 03:35 一次性 heartbeat 未触发且无运行记录；11:15 删除后由当前会话继续收尾

## [2026-07-02] git | 自动 lint 提交 d807369 已推送 origin/main；私有仓库 Actions 状态因当前环境未登录而暂未核验

## [2026-07-02] postmortem | 03:35 heartbeat 到期时本地调度进程不活跃；建立回执门、长等待禁用 heartbeat 和一次性界面无歧义规则

## [2026-07-02] correction | 用户确认故障时应用持续开启、电脑持续接电且禁用休眠；根因收敛为 Codex 后台调度链路未消费 heartbeat

## [2026-07-02] workflow | 用户建立 README/PLAN 类根目录笔记，用于阶段记录、使用备忘和下一步计划；Agent 保持只读

## [2026-07-02] structure | 将 RAEDME + PLAN.md 拆分为可迁移的 README.md 与用户拥有的 PLAN.md，并规范 Agent 启动顺序

## [2026-07-02] governance | PLAN 改为条件读取并与 handoff 按方向/执行事实分工；新增 safe suspend、Git 检查与人工唤醒恢复规则

## [2026-07-02] skill | 新建 instruction-only wiki-evidence-query，用于默认只读、可追溯且区分证据类型的核结构知识问答

## [2026-07-02] governance | 建立论文级证据门、页面/claim 双层人工审阅规则与日常摄入闭环；9 PDF/9 BibTeX 已核对，7 个 source citation key 精确同步

## [2026-07-02] lint | claim-level 审阅与字段缺失统计接入 Wiki lint、overview 和 check；待审 claim 以非阻断 info 暴露

## [2026-07-02] documentation | wiki-evidence-query 以独立 commit 提交；新增详细用户说明书，简洁指南与 README 只同步入口

## [2026-07-02] ingest-project | 以 review/background 摄入 De Voigt 1983 高自旋综述，建立高自旋基础页面与 A≈130 证据地图 project seed；保留 3 条新增 claim 待人工复核

## [2026-07-02] governance | 写入 bounded initiative 与 Windows PowerShell Git PATH fallback；允许必要最小同步，禁止非必要顺手优化

## [2026-07-02] review | 用户审阅 De Voigt 1983 source；确认经典高自旋术语、γ 探测基础与机制框架仍可作为有效背景，页面升级为 human-reviewed，3 条二手转述 claim 保持待审

## [2026-07-02] claim-review | 用户逐条对照 De Voigt 1983 原文确认 8 条 Key Results；DV83-2、DV83-7、DV83-8 的 needs_review 改为 false

## [2026-07-03] workflow | 固化九类 ingest strategy、Global ingest rules、短提示词接口与 vocabulary 最小同步边界

## [2026-07-03] ingest-project | 深读摄入 Domscheit 1999 `163Lu` 三轴超形变实验与 UC/PES 比较；建立 13 条待审 claims、核素/SD1/SD2/实验/超形变/四极矩页面，并仅以非 A≈130 比较背景接入 A≈130 project

## [2026-07-03] claim-review | 用户确认 Domscheit 1999 citation key、科学表述及 5n/4n 反应道；DO99-1 至 DO99-13 完成复核，并补充 SD-ND two-band mixing 等中英术语消歧

## [2026-07-03] ingest-project | 深读摄入 Matta 2015 `135Pr` transverse-wobbling 支持方实验；建立 15 条 claims、核素/四带/两实验页和争议 project，保留 14 条待审且不 commit/push

## [2026-07-03] claim-review | 用户审核 Matta 2015 source 与全部 Key Results；M15-1 至 M15-15 完成复核，派生页与争议 project 保持 unreviewed

## [2026-07-03] claim-review | 用户完成 A16-2、C23-2/C23-5、F24-2/F24-4/F24-7、FM97-6、P20-2、ZC91-5 复核；当前结构化 claim-level 待审队列清零

## [2026-07-03] terminology | 建立双语术语归一化 seed registry；query 与 wiki-evidence-query 支持中文、英文、缩写和实验口语扩展并保留歧义边界

## [2026-07-03] ingest-project | 深读摄入 Sensharma 2019 `135Pr` two-phonon wobbling 支持方实验；建立 13 条分层 claims、TW2 候选带和独立 DGS 数据集页，并将其作为依赖 Matta 2015 assignment 的支持链接入争议 project；保留 12 条待审且不 commit/push

## [2026-07-03] claim-review | 用户审核 Sensharma 2019 source 与全部 Key Results；S19-1 至 S19-13 完成原文核对，source 升级为 human-reviewed，派生页与争议 project 保持 unreviewed

## [2026-07-03] correction | 按用户校正将 Sensharma 2019 的强非谐性表述改为 successive wobbling-phonon spacing 关系，避免把第二声子增量误写成 TW2/TW1 带能量的简单倍数关系

## [2026-07-03] safe-suspend | Lv 2022 counter-source 已完成 PDF/BibTeX 预检、深读、13 条 claims 与 JUROGAM II experiment 页；因执行余量不足暂停跨页/project 同步，等待“继续摄入文献lv_2022_Evidencewobbling”

## [2026-07-03] ingest-project | 续跑完成 Lv 2022 `135Pr` counter-source：将联合 polarization/angular-correlation、mixing-ratio 双解、M1-dominated links、能级重组与 QTR realignment 接入争议 project；保留 12 条待审且不 commit/push

## [2026-07-03] correction | 按用户复核校正 Lv 2022 L22-13 的模型证据边界：区分 Fig.3(d) 机制示意、p.5 realignment 正文陈述与 Fig.4(c) 的近恒定 j_parallel，避免把后者误作主轴分量图证

## [2026-07-03] claim-review | 用户审核 Lv 2022 source 与全部 Key Results；L22-1 至 L22-13 完成核对，source 升级为 human-reviewed，派生页与争议 project 保持 unreviewed

## [2026-07-03] synthesize-project | 基于 Matta 2015、Sensharma 2019 与 Lv 2022 重构 `135Pr` wobbling controversy evidence matrix；分层记录观测、判据、解释、模型、反证、证据门和 follow-up，并在 PLAN 中追加 TiP 理论/实验知识建设方向

## [2026-07-03] ingest-project | 深读摄入 Sensharma 2020 `187Au` longitudinal-wobbling 支持方实验；建立 15 条 claims、核素/yrast/LW/SP/实验页和独立争议 project，并以判据层链接 `135Pr` 争议；保留 14 条待审且不 commit/push

## [2026-07-04] review | 用户审核 `135Pr` evidence matrix 全页与 Sensharma 2020 source/AU20-1 至 AU20-15，未发现问题；两页升级为 human-reviewed，派生页与 `187Au` project 保持 unreviewed

## [2026-07-04 03:40] ingest-project | 深读摄入 Guo 2022 `187Au` low-spin wobbling counter-source；建立 17 条分层 claims 与 HIRFL `R_ac-P` experiment，更新三条 band、核素、判据/模型页及 two-sided controversy project；全部 claims 待审，未建 umbrella project，未 commit/push

## [2026-07-04 05:14] claim-review | 用户确认 Guo 2022 G22-3、G22-4、G22-15；补充粉色 `α=-1/2` unfavored-signature sequence 身份、Rupnik β 衰变至 `I=19/2` 的覆盖，以及 `J=j+R` 中低自旋 `R≈1ħ` 的 wobbling-approximation 限制；其余 14 条 claims 待审

## [2026-07-04 05:23] git | Guo 2022 `187Au` counter-source 与本轮 claim-review 以 commit `e7b08a2` 提交并推送至 `origin/main`；用户 `.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 修改未纳入

## [2026-07-04 14:42] claim-review | 用户确认 Guo 2022 source 与其余 14 条 claims；source 升级为 human-reviewed，G22-1 至 G22-17 全部改为 `needs_review: false`，结构化 claim 待审队列再次清零

## [2026-07-04 14:58] git | Guo 2022 source 全量审核状态以 commit `20656c9` 提交并推送至 `origin/main`；用户 `.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 修改未纳入
