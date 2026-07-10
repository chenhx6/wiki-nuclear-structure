---
type: system-log
graph-excluded: true
created: 2026-07-01
updated: 2026-07-06
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

## [2026-07-05] synthesize-project | 建立 gamma-soft deformation evidence map 并扩写阶段性 synthesis

- 新建 gamma-soft project，按 theory/experiment、模型、观测量、证据缺口、low-spin relation 与未来 `131Ce/133Ce` 数据入口组织。
- 扩写既有 `gamma-soft-vs-gamma-rigid-diagnostics`，没有创建重复 synthesis。
- 基于 Zamfir–Casten 1991、Nomura 2017/2021、Babra 2019 和 low-spin review/background 完成反向检验；不把模型解释写成实验事实，不把 γ-soft 自动绑定 wobbling。
- 新增 GSD-PROJ-1 至 GSD-PROJ-6 与 GSD-SYN-1 至 GSD-SYN-8，共 14 条跨来源 statements 待用户审核。
- 自动 lint 为 0 error、10 warning、0 info；未修改 raw、PDF、数据、图片、PLAN 或治理规则。

## [2026-07-05] git | gamma-soft project + synthesis 创建本地 WIP checkpoint

- message：`WIP synthesis: gamma-soft deformation evidence map for user review`。
- 仅纳入本轮 9 个 project/synthesis/必要同步文件；用户 `.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 未纳入。
- 未 push；等待用户审核 GSD-PROJ-1 至 GSD-PROJ-6 与 GSD-SYN-1 至 GSD-SYN-8。

## [2026-07-05] review-synthesis | 用户审核 gamma-soft project 与 synthesis 的 14 条跨来源 statements

- GSD-PROJ-4 重写为三层证据链：实验寿命/`Q_t` 与带交叉约束集体性变化，TRS/TPSM 给出模型形变结果，作者据此提出 γ-soft→rigid/stable-triaxial transition；不把模型形状写成直接实验事实。
- 手征双重带与 wobbling bands 记录为稳定三轴性研究的重要候选集体指纹，但模式指认不能单独证明 γ-rigid 形变。
- 重点扩展 GSD-SYN-5 与 soft-to-rigid transition 专节，并按用户授权在 `PLAN.md` 写入 A≈130、特别是 `131Ce/133Ce` 的未来证据摄入计划。
- GSD-PROJ-1 至 GSD-PROJ-6、GSD-SYN-1 至 GSD-SYN-8 全部改为 `needs_review: false`；project 与 synthesis 页面升级为 `human-reviewed`。

## [2026-07-05] theory-ingest-project | Nomura 2022：γ-soft odd-mass low-spin bands 的 IBFM alternative

- 全文精读并视觉核对 Figs.1-13、Tables I-II；新建 source 与 IBFM model，建立 NOM22-1 至 NOM22-15 待审 claims。
- 分层记录 EDF→IBM-2/IBFM assumptions、四核谱与 E2/M1 model results、既有实验值 comparison、作者对 earlier wobbling assignments 的 challenge，以及 `127Xe` 异常大计算 `abs(δ)` 对结论普遍化的限制。
- Umbrella project 新增 LSW-IBFM-1 至 LSW-IBFM-4，gamma-soft project 新增 GSD-PROJ-7；IBFM alternative 与 TiP/QTR 分开，不把理论结果写成实验事实或最终裁决。

## [2026-07-05] claim-review | 用户审核 Nomura 2022 source 并完成 source 级收尾

- NOM22-10 明确补入 `105Pd` 原 wobbling paper 中 band B/C 与本文 B1/B2 的对应关系，避免跨文献带标号混淆。
- NOM22-11 改写为分别陈述 `B(E2)out/B(E2)in` 与 `B(M1)out/B(E2)in`；对 `133La` 明确前者 agreement 较好、后者仍偏大，并同步修正 NOM22-8 的相同表述风险。
- [[nomura-2022-questioning-wobbling-ibfm]] 升级为 `human-reviewed`；NOM22-1 至 NOM22-15 全部改为 `needs_review: false`。
- [[low-spin-wobbling-controversies]] 与 [[gamma-soft-deformation-evidence-map]] 同步为“Nomura 2022 source 已审、LSW-IBFM-1 至 4 与 GSD-PROJ-7 仍待审”。
- 复核后 lint 为 114 pages、1124 Wikilinks、20/20 source hash、0 error、10 warning、0 info；source claim 待审队列清零，剩余 5 条 project-level notes 待审。

## [2026-07-05] claim-review | 用户确认 Nomura 2022 project notes 已审核通过

- LSW-IBFM-1 至 LSW-IBFM-4 与 GSD-PROJ-7 全部由 `needs_review: true` 改为 `needs_review: false`。
- `low-spin-wobbling-controversies` 与 `gamma-soft-deformation-evidence-map` 中关于 Nomura 2022 的 project-level 待审提示改为已审收口。
- `knowledge/overview.md` 中 project-level synthesis 待审计数同步清零。
- `135Pr` 只加理论 cross-reference；`133La/127Xe/105Pd` 不建空壳 nucleus/project；`187Au` 只记录本文模型空间困难。未新增 synthesis，未修改 raw。

## [2026-07-05] governance | 建立 Human review triage protocol

- 为 ingest、project/synthesis、data-analysis-bridge 和 claim-review-update 定义 P0/P1/P2/P3 审核优先级与统一复盘格式。
- P0 全部列出，P1 限前 10，P2/P3 按文件聚合，并要求给出精力有限时优先审核的 3–5 个位置。
- Paper evidence gate 候选默认进入 P0/P1；P0 未审核前不建议 final amend 或 push。

## [2026-07-06] synthesize-project | 建立 low-spin wobbling、γ-soft deformation 与 TiP/IBFM alternatives 跨主题研究地图

- 新建 cross-project synthesis，按 conceptual layers、共享实验判据、case map、model landscape、observed/model/interpretation 分层、evidence gaps 与未来 `19F+116Sn` 数据入口组织。
- 更新 low-spin umbrella 的 γ-soft context、`136Sm` 背景参照、TiP/IBFM 区分、E2/M1 ratio 记录边界和 gamma-soft-aware model stress-test 候选。
- 新增 LSW-XPROJ-1 至 LSW-XPROJ-5 与 LSW-GSAI-SYN-1 至 LSW-GSAI-SYN-10，全部为 `needs_review: true`；不改变既有已审核 source/project claims。
- 最小同步 gamma-soft project、index、overview、handoff；不扩写 concept/model/observable，不修改 PLAN、raw、PDF、数据、图片或治理规则。
- 自动 lint：115 pages、1172 Wikilinks、20/20 source hashes、0 error、10 warning、1 info；未 push。

## [2026-07-06] claim-review | 用户确认跨主题综合审核通过

- `[[low-spin-wobbling-controversies]]` 中 LSW-XPROJ-1 至 LSW-XPROJ-5 全部改为 `needs_review: false`，页面恢复为 `human-reviewed`。
- `[[low-spin-wobbling-gamma-soft-deformation-and-alternative-interpretations]]` 中 LSW-GSAI-SYN-1 至 LSW-GSAI-SYN-10 全部改为 `needs_review: false`，页面升级为 `human-reviewed`。
- `knowledge/overview.md`、`system/handoff.md` 与 `system/log.md` 同步清除本轮 cross-project 待审提示；不修改 raw、PDF、数据、图片、PLAN 或治理规则。

## [2026-07-06] governance | 明确 human-review WIP 的 amend 收口优先级

- 文献摄入等待审核统一使用 `WIP ingest:`；project、synthesis 与跨来源综合等待审核统一使用 `WIP review:`。
- 用户审核完成并要求 final commit/push 后，必须 amend 对应 WIP，不保留独立 WIP 后再新增 final commit；该仓库内授权优先于通用“不主动 amend”约束。
- Final commit message 由用户指定时原样使用；未指定时由 Codex 推荐直接相关的 message 并在最终报告中说明。

## [2026-07-06] tooling | 启用 QMD project-local 本地检索层

- 安装状态确认为 QMD `2.5.3`；初始化被 Git 忽略的 `.qmd/`，`nuclear-knowledge` 只索引 `knowledge/**/*.md`。
- 建立 118 个文档、348 个向量 chunk，并下载 embedding、generation、reranking 本地模型。
- BM25、语义与完整 hybrid 检索均通过；按实测性能建立 direct read → BM25 → semantic → full hybrid 的分层路由。
- 明确 `qmd pull` 只管理模型，禁止 `qmd update --pull` 接管 Git；搜索结果必须回读完整页面和 source/raw。
- 同步 AGENTS、check、query/lint workflow、USER_GUIDE、详细指南、PLAN、memory 与 handoff；未修改科学知识页或 raw。

## [2026-07-07] framework | Optimized ingest startup and recap budget: Active handoff replaces full startup handoff, log tail-only rule clarified, ingest strategies split into runtime short rules plus detail tutorial, ordinary ingest QMD embed/overview updates made deferrable, no-unfiltered-scan rule added, active summary/staged PDF reading/compact recap rules synchronized; no science pages or raw files modified.

## [2026-07-07] framework | Active handoff refreshed and wording clarified after framework optimization commit 769b9ab; clarified README startup, workflow detail vs PDF reading depth, ordinary single-paper ingest, sequential multi-paper ingest, reading-depth expectations, automatic handoff/log closeout, and safe suspend/checkpoint expectations.

## [2026-07-08] framework | Review-finalization trigger was confirmed/supplemented and Pending WIP queue workflow was added; active sigma-over-I WIP ingest `7b1e52a` was preserved separately and not pushed.

## [2026-07-08] claim-review | 用户完成 sigma-over-I alignment sources 审核并请求 finalization

- Draper 1970 补充 DR70-3 mixed final population `\bar{P}(M)`、DR70-6 Fig.3 `bdry` mixture boundary 解释、DR70-7 stretched E2 定义。
- Zobel 1980 补充 Z80-3 三未知量歧义的 a/b/c 出路、Z80-10 Gaussian/ALY 条件性重点、Fig.5 lifetime-to-`αK` 位移记录，并同步 project 写作支撑。
- Zobel 1983 source 按用户审核意见完成收口；三篇 source 与 sigma-over-I project 均升级为 `human-reviewed`，相关 `needs_review` 清零。
- `knowledge/overview.md`、`system/handoff.md` 与 `system/wip-queue.md` 已同步；QMD update/embed/status 成功；lint 为 0 error、10 warning、0 info。
- 本地 final commit 已创建；push 到 `origin/main` 连续两次因 GitHub `443` 连接超时失败，随后按用户建议使用 `http://127.0.0.1:7890` proxy 仍因本地代理端口不可达失败，当前为 not pushed。

## [2026-07-09] checkpoint | article4-6 sigma-over-I deorientation ingest：Cejnar 1996 completed

- Completed source: [[cejnar-1996-spin-deorientation-alpha-2n-gamma]] with C96-1 to C96-11.
- Current source in progress: none; next source is Radeck 2012.
- Unfinished items: Radeck 2012 and Lauritsen 2025 source ingests; final checks/report/WIP commit.
- Locator gaps: none identified for Cejnar key claims; figures not digitized.
- P0/P1 risks: C96-4/C96-5/C96-10 and project SIO-PROJ-7/SIO-PROJ-8 require user review.
- Continuation prompt: Continue article4-6 ingest from Radeck 2012 PDF and update checkpoint after that source.

## [2026-07-09] checkpoint | article4-6 sigma-over-I deorientation ingest：Radeck 2012 completed

- Completed source: [[radeck-2012-deorientation-lifetime-98ru-rdds]] with R12-1 to R12-12.
- Current source in progress: none; next source is Lauritsen 2025.
- Unfinished items: Lauritsen 2025 source ingest; final checks/report/WIP commit.
- Locator gaps: none identified for Radeck key claims; figure curves not digitized.
- P0/P1 risks: R12-3 boundary, R12-7/R12-8/R12-10 formula-chain claims, and project SIO-PROJ-9/SIO-PROJ-10 require user review.
- Continuation prompt: Continue article4-6 ingest from Lauritsen 2025 PDF and update checkpoint after that source.

## [2026-07-09] checkpoint | article4-6 sigma-over-I deorientation ingest: Lauritsen 2025 completed

- Completed source: [[lauritsen-2025-gamma-angular-formalism-tracking-arrays]] with L25-1 to L25-15.
- Completed article4-6 three-source source-note/project-map ingest and updated project evidence rows SIO-PROJ-11/SIO-PROJ-12.
- Added or updated method/concept anchors: [[tracking-array]], [[angular-correlation]], [[deorientation]], [[angular-distribution]], [[linear-polarization-asymmetry]], [[attenuation-coefficient]], [[sigma-over-i]].
- Lint passed with 0 errors / 10 warnings / 38 info; Cejnar/Radeck/Lauritsen new claims remain human-review pending.
- Next action: finish QMD refresh, final report, WIP queue, and local WIP ingest commit without push.

## [2026-07-09] finalization | article4-6 sigma-over-I source review

- Applied user review edits to C96-4, R12-7 and L25-14; marked Cejnar 1996, Radeck 2012, Lauritsen 2025 and SIO-PROJ-7--SIO-PROJ-12 reviewed.
- Added [[152dy]] and [[atlas-gretina-152dy-ca48-191mev]] for Lauritsen 2025 `152Dy` experimental information.
- Lint passed with 0 errors / 10 warnings / 0 info; lint unittest passed; QMD update/embed/status succeeded.
- Final commit created and article4-6 WIP queue entry moved to completed; final commit pushed to `origin/main`.

## [2026-07-09] checkpoint | article7-9 sigma-over-I practice ingest: Chiara 2012 completed

- Completed source: [[chiara-2012-cu65-cu67-core-coupled-protons]] with CH12-1 to CH12-8.
- Current source in progress: `2013_Summary of Bases for Spin and Parity Assignments.pdf`.
- Unfinished items: Summary 2013 source note; Gray 2020 source note; project update; minimal method/concept updates; checks/report/local WIP ingest commit.
- Locator gaps: none identified for Chiara targeted `sigma/I` claims; Summary 2013 and Gray 2020 not yet checked.
- P0/P1 risks: Chiara `sigma/I=0.5` AD assumption and `1115 keV` `delta` sensitivity remain human-review pending.
- Continuation prompt: Continue article7-9 from Summary 2013 high-spin angular-distribution / DCO sections and checkpoint before starting Gray 2020.

## [2026-07-09] checkpoint | article7-9 sigma-over-I practice ingest: Summary 2013 completed

- Completed source: [[summary-2013-bases-spin-parity-assignments]] with SB13-1 to SB13-7.
- Current source in progress: Gray 2020 hyperfine-field / `g`-factor paper.
- Unfinished items: Gray 2020 source note; project update; minimal method/concept updates; checks/report/local WIP ingest commit.
- Locator gaps: none identified for Summary 2013 targeted high-spin assignment rules; Gray 2020 not yet checked.
- P0/P1 risks: keep Summary 2013 at guide-level `σ/I = 0.3` practice background; do not promote it into a universal prior.
- Continuation prompt: Continue article7-9 from Gray 2020 TDPAD `R(t)` amplitudes and empirical alignment-expectation sections.

## [2026-07-09] checkpoint | article7-9 sigma-over-I practice ingest: Gray 2020 completed

- Completed source: [[gray-2020-hyperfine-fields-g-factor-measurements]] with G20-1 to G20-9.
- Current source in progress: none; source-note ingest for the three requested papers is complete.
- Unfinished items: project update; minimal method-page additions; checks/report/local WIP ingest commit.
- Locator gaps: none identified for Gray 2020 targeted alignment-amplitude claims.
- P0/P1 risks: keep Gray 2020 in a TDPAD / host-specific boundary role; do not generalize its `sigma/I` discussion to ordinary P-ADO fitting.
- Continuation prompt: Continue article7-9 from project update and minimal method pages before final checks.

## [2026-07-09] wip | article7-9 sigma-over-I practice ingest packaged for review

- Completed: project/method/index/overview updates for article7-9, plus QMD refresh.
- Checks: `wiki_lint` passed with 0 errors; QMD update/embed/status succeeded after sandbox escalation.
- Pending: wait for user review of CH12-*, SB13-*, G20-* and SIO-PROJ-13/14/15. External report written to `E:\imp\prompt\wiki\article7-9_reports.md`. Local `HEAD` is now the article7-9 `WIP ingest:` commit and was not pushed.

## [2026-07-09] review-finalized | article7-9 sigma-over-I practice sources

- User review finalized CH12-*, SB13-*, G20-* and SIO-PROJ-13/14/15; corresponding source/project pages were moved to `human-reviewed` / `needs_review: false`.
- Applied review corrections: CH12-5 softened to adopted/literature-`δ` range wording; Summary 2013 corrected to `σ/I = 0.3`; Gray 2020 now records extra source-backed factors affecting inferred `σ` scale.
- Checks: `wiki_lint` passed with 0 errors / 10 warnings / 0 info; QMD update/embed/status succeeded after sandbox escalation.

## [2026-07-09] checkpoint | article10-11 supplemental core ingest: Ekstrom 1979 completed

- Completed source: [[ekstrom-1979-spin-alignment-attenuation-a61-a67]] with EK79-1 to EK79-9.
- Current source in progress: Ionescu 1981 improved angular-distribution analysis.
- Unfinished items: Ionescu source note; project and knowledge-page updates; checks; report; local `WIP ingest:` commit.
- Locator gaps: none identified for the Ekstrom 1979 claims already entered.
- P0/P1 risks: keep MANDY/CNR alignment estimates separate from user-code `sigma/I`, and keep the Gaussian-limitation claim at the "too restrictive" level rather than a universal invalidation.
- Continuation prompt: Continue article10-11 from Ionescu 1981 source note, then integrate both papers into the `sigma-over-i` project before final checks.

## [2026-07-09] recovery | article10-11 supplemental core ingest repaired after interruption

- Recovery audit confirmed that the Ekstrom 1979 source note needed repair, while the Ionescu 1981 source note was largely complete and only needed minimal metadata / extracted-page cleanup.
- Repaired or confirmed: [[ekstrom-1979-spin-alignment-attenuation-a61-a67]], [[ionescu-1981-improved-angular-distribution-analysis-particle-xn]], [[direct-feeding]], [[compound-nucleus-reaction-model]], [[spin-alignment-attenuation-factor]], and the `sigma-over-i` project evidence rows for EK79 / IO81.
- Remaining before closeout: final Git/lint checks, external report write, and the local not-pushed article10-11 commit.

## [2026-07-09] local-commit | article10-11 supplemental core ingest sanity-checked

- Scope of sanity review is limited to `git diff --check`, `wiki_lint`, and staged-file hygiene; no new long-form scientific review was performed in this turn.
- Prepared local not-pushed commit scope: [[ekstrom-1979-spin-alignment-attenuation-a61-a67]], [[ionescu-1981-improved-angular-distribution-analysis-particle-xn]], [[direct-feeding]], [[compound-nucleus-reaction-model]], [[spin-alignment-attenuation-factor]], [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]], [[knowledge/index]], plus handoff/log/queue updates.

## [2026-07-09] follow-up | ionescu branching-ratio delta note added

- After user review corrections on Ekstrom/Ionescu, added a new follow-up task in `PLAN.md` and a new source-level note `IO81-10` about model-dependent `delta` values inferred from branching ratios in Ionescu 1981.
- Follow-up status: `git diff --check` and `wiki_lint` pass; only `IO81-10` remains claim-level pending review, so push was deferred.

## [2026-07-09] review-finalized | article10-11 iionescu follow-up approved

- User approved `IO81-10`, keeping the core wording that branching-ratio-derived `delta` values are model dependent and belong to an intraband rotational-band context.
- Article10-11 now has no remaining source/project claim-level review items; next step is QMD refresh, amend local commit `6609bc3`, and push.

## [2026-07-09] push-blocked | article10-11 final commit ready but GitHub unreachable

- Article10-11 review-finalized content is now in local final commit `4fb459c` on `main`; `wiki_lint`, `git diff --check`, and QMD refresh all succeeded.
- `git push origin HEAD:main` failed because `github.com:443` was unreachable at the time of the attempt, so only a push retry remains.

## [2026-07-09] pushed | article10-11 supplemental ingest finalized to origin/main

- After syncing `system/handoff.md`, `system/log.md`, and `system/wip-queue.md`, the final article10-11 commit was amended to `f4934e7` and pushed to `origin/main`.
- Scope remains the reviewed Ekstrom 1979 / Ionescu 1981 supplemental ingest plus the user-requested `PLAN.md` note; `.obsidian/` and `raw/zotero/wiki-inbox.bib` stayed outside the commit.

## [2026-07-10] framework | clarify experimental nuclear-structure scope beyond A130

- Clarified that the current main mass region is a research anchor rather than a Wiki collection boundary.
- Ingest scope and lightweight page decisions must follow source-supported experimental nuclear-structure value, evidence density, reuse value, comparative value, and explicit user-declared priority instead of mass region alone.
- Long-term framework text stays abstract and must not infer user participation history or store personal-title / reaction-specific background.

## [2026-07-10] synthesis-planning | sigma-over-I writing-support synthesis created locally

- Completed a readiness audit across the sigma-over-I project, 11 source notes, and related concept/method pages; no current source-note metadata/locator/kind blocker was found.
- Added `knowledge/synthesis/sigma-over-i-assumptions-and-mixing-ratio-extraction.md` and updated the sigma-over-I project page plus `knowledge/index.md`.
- This is a local WIP review state only: overview/QMD refresh is deferred, push is intentionally not done, and human review is still required for terminology mapping and paper-evidence-gate boundaries.

## [2026-07-10] review-follow-up | repaired index display and tightened sigma-over-I wording

- Restored `knowledge/index.md` from a clean base after user-reported display corruption, repaired the handoff title line, and kept the new sigma-over-I synthesis entry in the index.
- Updated the sigma-over-I project/synthesis/concept chain to reflect the user's review: split the Ekstrom Gaussian-limitation and threshold/feeding conclusions, preserved the reaction-threshold wording boundary, and added a bounded low-spin caution plus an explicit user-analysis normalization note that is not source-backed evidence.
- State remains local review only: no push, overview/QMD still deferred, and the current WIP review commit should be amended rather than duplicated.

## [2026-07-10] review-finalized | sigma-over-I synthesis planning approved for finalization

- User accepted the bounded conclusion that the present 11-paper package does not yet supply direct low-spin-specific `sigma/I` sensitivity evidence strong enough for a stronger universal claim.
- Promoted the reviewed sigma-over-I project/synthesis/terminology pages to `review_status: human-reviewed`, refreshed `knowledge/overview.md`, and completed `qmd.cmd update`, `qmd.cmd embed -c nuclear-knowledge`, and `qmd.cmd status`.
- The prior local `WIP review:` commit was converted into the final `Create sigma-over-I writing-support synthesis` commit; only the push remained at this checkpoint.

## [2026-07-10] framework | review-history workflow added

- Added `system/review-history.md` as the forward-looking index for completed review/finalization tasks; no old completed reviews were backfilled.
- Synchronized Pending WIP queue, review-finalization, user-guide, and checklist rules so future finalized reviews move from pending queue into review history without extra queue-only status commits unless a sync step was truly missed.

## [2026-07-10] framework | review-history semantics and evidence guidance refined

- Refined human-review history, review-commit traceability, and evidence-calibrated citation guidance.

## [2026-07-10] framework | optimized wiki-informed evidence query skill

- Reframed `.agents/skills/wiki-evidence-query/SKILL.md` around Wiki-as-personalization-layer open-world ordinary Q&A, with conditional governance reads, Fast/Standard/Deep routing, external-verification triggers, answer scaling, stop conditions, and read-only state-file boundaries.
- Minimally synchronized `system/workflows/query.md` so ordinary mode may use stable general background without pretending it is Wiki evidence, and corrected `system/evidence-policy.md` heading from four to six statement classes.

## [2026-07-10] framework | surfaced useful knowledge and corrected review semantics

- Compressed `wiki-evidence-query` while making review status a disclosure and verification-priority signal rather than a visibility, value, or manuscript-eligibility filter.
- Added active surfacing of high-information unreviewed material, claim-specific verification on unreviewed pages, and rechecking/deeper extraction of previously reviewed material; synchronized query workflow and evidence policy without changing Review history.

## [2026-07-10] framework | aligned paper gate with claim-specific verification

- Replaced page-status-based paper admission with candidate discovery, focused claim/source verification, and explicit user-confirmed admission for the proposed manuscript wording.
- Clarified claim-scoped P0/P1 review and future writing-skill candidate handling; minimally synchronized the evidence-query description, user guides, and checklist without changing science pages or Review history.

## [2026-07-10] framework | aligned review, output, and Wiki growth rules

- Updated long-term memory and user guidance for the public GitHub remote and exclusion of unpublished, collaboration, peer-review, personal, and sensitive raw material.
- Aligned high-value candidate surfacing, reviewed-knowledge rechecking/growth, claim-specific paper admission, Review history boundaries, and complete strict-mode triggers across current governance files.

## [2026-07-10] maintenance | added public repository metadata package

- Added public licensing, citation metadata, bilingual disclaimer, contribution files, and the current bibliography snapshot.

## [2026-07-10] framework | improved clickable Wiki evidence navigation

- Standardized ordinary evidence entries as page name, one-sentence support note, and a verified absolute `file.md:line` content link.
- Recorded that Codex opens these links in the live rendered editable view, with file-plus-section fallback when direct line navigation is unavailable; no science or review-history content was changed.
