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

## [2026-07-04 15:15] automation-audit | 未找到清晨 `187Au` project-level synthesis 的自动化配置、运行线程、运行回执或匹配产物；按回执门判定未触发/未执行，由当前会话直接运行

## [2026-07-04 15:15] synthesize-project | 基于已人工复核的 Sensharma 2020 与 Guo 2022 重构 `187Au` controversy locator-level evidence matrix；新增 AU-SYN-1 至 AU-SYN-10 待审综合 claims、paper evidence gate、unresolved issues 与 follow-up sources，不裁决争议，不 commit/push

## [2026-07-04] review-supplement | 用户审核 `187Au` project 的 AU-SYN-1 至 AU-SYN-10；project 升级为 human-reviewed。Guo/Lv 2022 supplementary material 作为各自主文附属证据层挂接，不新建 DOI/Bib/source；新增 G22-18 至 G22-20、L22-14 至 L22-15 与 AU-SYN-11 至 AU-SYN-12 待审，并在 PLAN 记录 TiP 摄入后启动 low-spin wobbling umbrella project

## [2026-07-04] git | `187Au` controversy synthesis、supplementary evidence 挂接与 umbrella PLAN 以 commit `41bcc6d` 提交并推送至 `origin/main`；用户 `.obsidian`、raw PDF 与 `wiki-inbox.bib` 修改未纳入

## [2026-07-04] claim-review | 用户确认 Guo/Lv supplementary material 新增的 G22-18 至 G22-20、L22-14 至 L22-15 与 project synthesis AU-SYN-11 至 AU-SYN-12；144 条结构化 source claims 待审队列清零

## [2026-07-04] workflow | 文献摄入默认本地 WIP、不 push；审核后 amend 为 final commit，safe suspend 大量 diff 时优先本地 WIP checkpoint，避免临时提交累积与持续高 CPU

## [2026-07-04] synthesize-project | 新建 low-spin wobbling controversies umbrella project，将已审核的 `135Pr/187Au` 案例接入共享 identification framework；新增 7 条待审跨案例 synthesis claims、TiP future extension、data-analysis bridge 与 innovation candidates，不裁决争议

## [2026-07-04] git | umbrella project 草案创建本地 WIP commit，未 push；用户 `.obsidian` 与 raw/BibTeX 修改未纳入

## [2026-07-04] review | 用户审核 low-spin wobbling umbrella project 与 LSW-SYN-1 至 LSW-SYN-7；校准大 `abs(δ)`/predominant-E2 为必要但非充分判据，并区分增强 E2 的其他机制与 γ-softness 形变动力学

## [2026-07-04] git | umbrella project WIP amend 为 `Build low-spin wobbling controversies evidence map` 并推送至 `origin/main`；用户 `.obsidian` 与 raw/BibTeX 修改未纳入

## [2026-07-04] ingest-project | 深读摄入 Lawrie 2020 TiP 理论基础；建立 15 条待审 theory claims 与 tilted-precession concept，并将 3D QTR、wobbling approximation、coupling geometry 和 phonon quantization 边界接入 low-spin wobbling umbrella

## [2026-07-04] git | Lawrie 2020 theory-ingest 创建本地 WIP commit，未 push；用户 `.obsidian` 与 raw/BibTeX/PDF 未纳入

## [2026-07-04] claim-review | 用户审核 Lawrie 2020 source 与 LAW20-1 至 LAW20-15；校准 Fig.4 中 `f(n,I)` 自旋趋势的参数/耦合适用范围，并明确 Eq.34 的 1 轴为最大-MoI intermediate axis

## [2026-07-04] git | Lawrie 2020 theory-ingest WIP amend 为 `Ingest Lawrie 2020 TiP and wobbling framework` 并推送至 `origin/main`；用户 `.obsidian` 与 raw/BibTeX 改动未纳入

## [2026-07-04] ingest-project | 深读摄入 Lv 2021 `135Nd` experimental TiP case；建立 LV21-1 至 LV21-18、D1/TiP1/TiP2、JUROGAM II experiment，并将 M1-dominated links、QTR energies/wave functions/transition ratios 与 TiP-vs-wobbling 边界接入 low-spin umbrella

## [2026-07-04] git | Lv 2021 `135Nd` 摄入创建本地 WIP commit，未 push；用户 `.obsidian` 与 raw/BibTeX/PDF 未纳入

## [2026-07-04] claim-review | 用户审核 Lv 2021 source 与 LV21-1 至 LV21-18；以 Table II 和 E2-fraction consistency 校准 618.3/566.8 keV mixing ratios，补齐 75.5°/104.5° clover geometry 与 LV21-13 的 TiP model-consistency 语义

## [2026-07-04] git | Lv 2021 `135Nd` experimental TiP WIP amend 为 `Ingest Lv 2021 experimental TiP bands in 135Nd` 并推送至 `origin/main`；用户 `.obsidian` 与 raw/BibTeX/PDF 改动未纳入

## [2026-07-05] synthesize-project | 基于已审核 Lawrie 2020/Lv 2021 source claims 将 TiP 作为 low-spin wobbling alternative framework 接入 umbrella；新增 LSW-TIP-SYN-1 至 LSW-TIP-SYN-8、近似条件/耦合/判据矩阵与 `135Pr/187Au` cross-case boundaries，19 条 project-level synthesis notes 待审，不 commit/push

## [2026-07-05] review | 用户审核 TiP / low-spin wobbling umbrella synthesis；LSW-SYN-5、LSW-THEORY-1 至 LSW-THEORY-5、LSW-TIP-1 至 LSW-TIP-5、LSW-TIP-SYN-1 至 LSW-TIP-SYN-8 共 19 条 notes 改为 `needs_review: false`；LSW-THEORY-1 校准为 Bohr–Mottelson Vol. II 提出 principal-axis rotation + harmonic-phonon wobbling approximation，Lawrie 2020 负责与完整 TiP/3D rotation 对照并检验适用条件，原书留作 future primary-source ingestion

## [2026-07-05] git | TiP / low-spin wobbling project synthesis 以 `Integrate reviewed TiP synthesis into low-spin wobbling project` 提交并推送至 `origin/main`；用户 `.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 改动未纳入

## [2026-07-05] governance | 将 bounded initiative 第四条改为以可验证验收标准收敛任务的 Agent 行为契约
## [2026-07-05] daily-ingest-project | 按 Nomura 2017 → Nomura 2021 → Babra 2019 顺序完成 γ-soft deformation 三文献批次摄入

- Nomura 2017 采用 `theory-ingest + project-ingest`，建立 NOM17-1 至 NOM17-10。
- Nomura 2021 采用 `theory-ingest + project-ingest`，建立 NOM21-1 至 NOM21-9。
- Babra 2019 采用 `experiment-ingest + project-ingest`，建立 B19-1 至 B19-12；实验寿命/`Q_t`、模型结果与作者形变解释分层记录。
- 更新 A≈130 evidence-map project 的来源角色、证据缺口与 data-analysis bridge；不创建 synthesis，不修改 raw。
- 三篇 source 与 31 条 claims 均待用户审核；自动 lint 为 0 error、10 warning、31 info。

## [2026-07-05] git | γ-soft 三文献批次创建单一本地 WIP ingest checkpoint

- message：`WIP ingest: gamma-soft three-paper batch for user review`。
- 仅纳入本批 13 个知识库文件；用户 `.obsidian/graph.json`、`raw/zotero/wiki-inbox.bib` 与 raw PDF 未纳入。
- 未 push；等待用户审核 NOM17-1 至 NOM17-10、NOM21-1 至 NOM21-9、B19-1 至 B19-12 后 amend/finalize。

## [2026-07-05] claim-review | 用户审核 γ-soft 三文献 source notes 与 31 条 claims

- NOM17-7 限定为偶偶核 `0+_1` 的 Fig.13 结果；NOM17-8 补齐 Figs.14-15 中奇 A 各低能态的态依赖变化。
- NOM21-7 补齐 D-F 与 W-J/O(6) 极限定义、四个参考值、Fig.3 计算点位置及对 `131Ce/133Ce` 的奇 A 外推边界。
- B19-4 将 `stopping power` 绑定中文释义“阻停能力”。
- 三篇 source 升级为 `human-reviewed`，NOM17-1 至 NOM17-10、NOM21-1 至 NOM21-9、B19-1 至 B19-12 全部改为 `needs_review: false`。
