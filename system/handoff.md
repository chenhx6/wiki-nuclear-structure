---
type: system-handoff
graph-excluded: true
updated: 2026-07-05
---

# 跨会话交接

## 当前阶段

Phase 2：第一版结构和三轮摄入已经稳定；已建立首个 A≈130 高自旋集体模式 project seed。当前继续以证据型知识问答、证据追踪、逐篇摄入和数据分析桥接为主，不预设最终创新点。

## 当前执行：gamma-soft deformation project + synthesis（审核完成，终版收尾）

- 新建 `knowledge/projects/gamma-soft-deformation-evidence-map.md`，定位为 evidence map，不是论文草稿或完整文献清单。
- 扩写既有 `knowledge/synthesis/gamma-soft-vs-gamma-rigid-diagnostics.md`，没有创建同义 synthesis；内容覆盖定义、soft-vs-rigid、A≈130 shape-phase transition、pairing+triaxial vibration、`136Sm` deformation change、low-spin relation 与证据能力边界。
- 核心 source 均已审核：Zamfir–Casten 1991 提供低能偶偶判据；Nomura 2017/2021 作为共享方法链的 theory/model evidence；Babra 2019 提供寿命/`Q_t` 实验层与 TRS/TPSM 解释层；Frauendorf 2024 仅作 low-spin relation 背景。
- 反向检验：ZC91 判据不能直接外推奇 A 高自旋；Nomura 两文不是独立实验复现；`136Sm` 直接实验只建立集体性变化，γ-soft→rigid/stable-triaxial transition 是由 TRS/TPSM 支持的作者解释；当前四源不能裁决 `131Ce/133Ce` 或 wobbling 身份。
- 用户已审核 GSD-PROJ-1 至 GSD-PROJ-6 与 GSD-SYN-1 至 GSD-SYN-8，共 14 条跨来源 statements，全部改为 `needs_review: false`；project/synthesis 页面均升级为 `human-reviewed`。
- 按用户批注重写 GSD-PROJ-4：明确区分寿命/`Q_t` 与带交叉的直接实验约束、TRS/TPSM 模型结果和作者提出的 soft-to-rigid 演化，并保留多极小、模型参数及非 Ce 核限制。
- 把手征双重带与 wobbling bands 记录为稳定三轴性研究的重要候选集体指纹；模式指认与 γ-rigid 判定仍是两条需交叉约束的证据链，不能由带标签单独证明稳定三轴形变。
- 重点扩展 GSD-SYN-5 和专门的 γ-soft→rigid/stable-triaxial transition 小节；`PLAN.md` 已按用户授权加入未来摄入计划，覆盖寿命/绝对 E2、形状不变量、common-input 模型比较、pairing/奇粒子/带交叉，以及 `131Ce/133Ce` nucleus-specific sources。
- 最小同步：更新 gamma-soft/gamma-rigid concepts、A≈130 parent project、index 与 overview；未修改 model/observable 页面，因为现有条目已覆盖本轮所需模型和观测量边界。
- 已检查 `knowledge/questions.md`：现有形变背景问题与新 project gaps 可承接本轮，不新增重复问题。
- 最终 lint：112 pages、1082 Wikilinks、19/19 source hash、0 error、10 warning、0 info；source claims 208 条、待审 0，project/synthesis 的 14 条 notes 也已全部审核。warning 均为既有反应/元素配置提示和用户 raw BibTeX 改动。
- 文档同步门：未改变目录、命令、治理规则、schema、template 或 vocabulary，不更新 USER_GUIDE/AGENTS/check；按用户明确要求修改 `PLAN.md`；raw、PDF、数据和图片未修改。
- 终版推荐 message：`Build reviewed gamma-soft deformation evidence map and transition synthesis`；将 amend 当前单一 WIP 后按用户授权 push。
- 保留用户 `.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 修改，不纳入终版提交。

## 当前执行：γ-soft deformation 三文献 daily-ingest（审核完成，终版收尾）

- 严格按用户顺序完成：Nomura 2017 `theory-ingest + project-ingest`，Nomura 2021 `theory-ingest + project-ingest`，Babra 2019 `experiment-ingest + project-ingest`；整体按 `daily-ingest / batch source-note ingest` 收尾。
- 新建三篇 source notes：`nomura-2017-odd-mass-gamma-soft-shape-transitions.md`、`nomura-2021-pairing-triaxial-vibrations-gamma-soft.md`、`babra-2019-deformation-change-136sm.md`。
- 原始证据哈希分别为 `481E6A9E...EFAEA9`、`CF500A8C...102C4`、`A26149BF...425BA6`；BibTeX key 分别唯一匹配 `nomura_2017_Shapephasetransitions`、`nomura_2021_Couplingpairing`、`babra_2019_Investigationlarge`。
- 用户已审核三篇 source notes 与 31 条 claims：NOM17-1 至 NOM17-10、NOM21-1 至 NOM21-9、B19-1 至 B19-12。三页均为 `human-reviewed`，全部 claim 为 `needs_review: false`。
- NOM17-7 严格限定 Fig.13 为偶偶 `128-136Ba/126-134Xe` 基态 `0+_1` 的四极形状不变量；NOM17-8 补齐奇 N Ba/Xe 与奇 Z La/Cs 各低能态在不同中子数的态依赖 `γ_eff` 变化，明确不普遍重复偶偶 `0+_1` 峰值。
- NOM21-7 补齐 D-F 固定 `γ=30°` 刚性三轴与 W-J γ-independent/O(6) 两极限定义、`E2γ/R3γ=2.00/1.78` 与 `2.50/1.19` 参考值，以及 Fig.3 中完整计算点的位置；明确不能直接作为 `131Ce/133Ce` 奇 A 激发模式阈值。
- B19-4 将 `stopping power` 绑定中文释义“阻停能力”，并同步 `transition-quadrupole-moment` 页。
- Nomura 2017：DD-PC1 RHB→IBM/IBFM，记录 N≈76-78 的近球形到 γ-soft 模型相变、奇 A 能级变化、E2 四极形状不变量与逐核拟合限制。
- Nomura 2021：PC-PK1 RMF+BCS→玻色子数非守恒 IBM，记录 `(α,β,γ)` 配对-三轴耦合、激发 `0+` 态、γ 带与两个 γ-softness 指标的不同极限倾向。
- Babra 2019：145 MeV `107Ag(32S,1p2n)136Sm`、INGA、DSAM 寿命与 `Q_t`；把实验集体性下降、推转/TRS/TPSM 模型结果和“γ-soft→较稳定三轴”作者解释严格分层。
- 最小派生同步：更新 `gamma-soft-deformation`、IBM、CSM、TPSM、`transition-quadrupole-moment`、`knowledge/index.md`；未新建空壳 nucleus/experiment/method 页。
- Project 同步：更新 `a130-high-spin-collective-modes-evidence-map.md` 的 seed sources、比较背景、evidence gaps 与 data-analysis bridge；未创建新 project，未创建或修改正式 synthesis 结论。
- 已检查 `knowledge/questions.md`：现有 A≈130 形变背景与判据问题可承接本轮缺口，project 已记录更具体的 pairing-softness、跨带交叉寿命/`Q_t` 缺口，不新增重复问题。
- 自动 lint：111 pages、1037 Wikilinks、19/19 source hash、0 error、10 warning、0 info；208 条 source claims 待审为 0，warning 均为既有未配置元素/反应解析与用户 raw BibTeX 改动。
- 文档同步门：没有用户可见目录/命令/工具或治理规则变化，不更新 USER_GUIDE/AGENTS/check/schema/templates/vocabulary；`PLAN.md` 未修改；`raw/` 未由 Agent 修改。
- active WIP `WIP ingest: gamma-soft three-paper batch for user review` 将在本轮 amend 为 `Ingest reviewed gamma-soft deformation sources` 并按用户授权 push；push 回执在本轮最终报告核验，不为回执额外创建 commit。
- 保留用户原有 `.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 修改，绝不纳入终版提交。

## 当前执行：TiP / low-spin wobbling project-level synthesis（审核完成，已 finalize/push）

- 基于已审核的 Lawrie 2020 LAW20-1 至 LAW20-15 与 Lv 2021 LV21-1 至 LV21-18，更新 `knowledge/projects/low-spin-wobbling-controversies.md`；未新增或修改 source claims。
- 新增 TiP theoretical framework、wobbling approximation condition、TiP≈wobbling 条件、不可等同情形、transverse/longitudinal coupling、QTR/particle-rotor role、`135Nd` experimental reference、`135Pr/187Au` relation 与 discrimination criteria。
- 保留 source-bound LSW-THEORY-1 至 5、LSW-TIP-1 至 5，并新增跨来源 LSW-TIP-SYN-1 至 LSW-TIP-SYN-8；连同更新后的 LSW-SYN-5，共 19 条 project-level synthesis notes 已由用户审核，均为 `needs_review: false`。
- 用户校准 LSW-THEORY-1 的历史归因：principal-axis rotation + harmonic-phonon wobbling approximation 原始提出归于 Bohr–Mottelson *Nuclear Structure*, Vol. II；Lawrie 2020 的角色是把完整 TiP/3D rotation 与该既有近似系统对照并检验适用条件。原书尚未摄入，因此历史归因保留为 future primary-source evidence gap。
- 综合边界：TiP 提供 wobbling 之外的完整 3D rotation framework；QTR/PRM fit 不自动证明 wobbling，也不自动证明 TiP。只有在 `f(n,I)<<1`、single-particle orientation 与 harmonic approximation 相容、并显示 phonon energy/transition-probability quantization 时，TiP solution 才可近似写成 wobbling。
- `135Nd` 是 channel-/nucleus-distinct experimental TiP reference，但 Lv 2021 与 Lv 2022 `135Pr` 共享同一 JUROGAM II run，且与 Lawrie framework 共享作者/解释链；不能按完全独立证据计数。其 M1-dominated links 与 QTR agreement 均非单独充分条件，也不得跨核素替代 `135Pr/187Au` transition-level evidence。
- 对 `135Pr`，TiP 与 Lawrie approximation test、Lv 2022 unfrozen-QTR reinterpretation 直接相关；对 `187Au` 仅增加待检验维度，当前无 nucleus-specific TiP calculation，不能改判。
- 新增 future-source plan：Bohr–Mottelson Vol. II、Frauendorf-Dönau 2014、Tanabe 2017/2018、`105Pd`、Lu TSD benchmark、`135Pr/187Au` common-input calculations 与 `135Nd` absolute transition-strength follow-up。
- 已检查 `knowledge/questions.md`；现有 cross-case minimal identification protocol 已覆盖 `f(n,I)`、phonon quantization 与判据组合，不新增重复问题。
- 当前 lint 目标：108 pages、995 Wikilinks、16/16 source hash、0 error、10 warning、0 info；177 条 source claims 与 project-level synthesis 待审均为 0。
- 本轮未修改 `PLAN.md`、source、raw、schema、vocabulary、workflow 或 USER_GUIDE；保留用户 `.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 改动。最终提交仅纳入本任务五个文件并推送至 `origin/main`。

## 当前执行：Lv 2021 `135Nd` experimental TiP ingest（source 审核完成，已 finalize/push）

- 目标 PDF `raw/papers/2021_Lv et al_Tilted precession bands in Nd 135.pdf`，SHA-256 `E28BC232617AF4D6EE83D95D267B2E7ACD24EDDB0D03CC1592124D31E9871150`；BibTeX 唯一匹配 `lv_2021_Tiltedprecession`，DOI `10.1103/PhysRevC.103.044308`。
- 按 experiment-ingest + project-ingest 深读 14 页，并视觉核对 Figs.2-6、Tables I-II、Figs.7-12 与 Appendix Figs.13-15；新建 source、`135Nd` nucleus、D1/TiP1/TiP2 三带和 JUROGAM II experiment。
- 用户已审核 source 与 LV21-1 至 LV21-18；source 升级为 `human-reviewed`，全部 claims 改为 `needs_review: false`。`135Nd` 派生页、LSW-TIP-1 至 LSW-TIP-5、LSW-THEORY-1 至 LSW-THEORY-5 与更新后的 LSW-SYN-5 仍待审。
- 实验链：152 MeV `100Mo(40Ar,5n)135Nd`，0.5 mg/cm² enriched self-supported `100Mo`，JUROGAM II 15 tapered + 24 clover，约 `5.1×10^10` fold≥3 events；γγ/γγγ、`R_DCO`、`R_ac`、polarization 与 angular distribution。
- 用户核验 Table II：TiP1→D1 的 618.3/566.8 keV 为 `δ=-0.32(5)/-0.48(14)`、E2 fractions `9.3±2.6%/18.7±8.9%`；两者与 `δ²/(1+δ²)` 匹配，因此优先于 p.6 正文手写的无负号 0.32/0.33。TiP2→TiP1 的 518.3 keV 同为 M1-dominated；234 keV 太弱而无 multipolarity/`δ`。
- 约 90°的 24 个 clover 明确位于 75.5°、104.5°；已同步 source、experiment、DCO 与 `R_ac` 页面。
- LV21-13 补充作者如何使用整体 energy agreement、特别是 TiP2 已观测态的良好再现，作为 TiP assignment 的模型一致性依据；仍保留 TiP1 高自旋偏差与 wave-function mixing。
- QTR 使用 `β=0.19, γ=25°`、Harris `J0/J1=5/71.4`、Coriolis attenuation 0.7、pairing 与 7 个近 Fermi negative-parity orbitals；D1/TiP1/TiP2 主要 `[Ω_l,K_l]` 分别为 `[9/2,9/2]`、`[9/2,13/2]`、`[11/2,15/2]`。TiP1 高自旋 energies 被高估且 wave functions 混合。
- Umbrella 将本文标为 experimental TiP case / alternative interpretation source；新增 LSW-TIP-1 至 LSW-TIP-5 待审。只以 `135Nd` reference case cross-reference `135Pr/187Au`，不改判两个 controversy cases。
- 当前 lint 目标：108 pages、995 Wikilinks、16/16 source hash、0 error、10 warning、0 info。
- 已检查 `knowledge/questions.md`；现有 wobbling lifetime/electromagnetic evidence 与最小 identification protocol 问题已覆盖本轮缺口，不新增重复问题。
- Lv 2021 WIP 已 amend/finalize 为 `Ingest Lv 2021 experimental TiP bands in 135Nd` 并推送至 `origin/main`；`.obsidian/graph.json`、`raw/zotero/wiki-inbox.bib` 与 raw PDF 未纳入。

## 当前执行：Lawrie 2020 TiP / wobbling theory-ingest（审核完成，已 finalize/push）

- 目标 PDF `raw/papers/2020_Lawrie et al_Tilted precession and wobbling in triaxial nuclei.pdf`，SHA-256 `777F935B0266FED8A9D9F2E1CC1F72995C84DD83E27CA1F5377AB2785B2EC405`；BibTeX 唯一匹配 `lawrie_2020_Tiltedprecession`，DOI `10.1103/PhysRevC.101.034306`。
- 按 theory-ingest + project-ingest 深读 12 页，并视觉核对 Eqs.15-16/33-34、Figs.4/9-11 与 Table I；新建 source 与 [[tilted-precession-bands]] concept，更新 QTR model、wobbling/transverse-wobbling concepts 和 low-spin umbrella。
- 用户已审核 source 与 LAW20-1 至 LAW20-15；source 升级为 `human-reviewed`，全部 claims 改为 `needs_review: false`。TiP concept、LSW-THEORY-1 至 LSW-THEORY-5 与更新后的 LSW-SYN-5 仍待审。
- 理论边界：完整 3D QTR/rotor solutions 在本文术语中是 TiP；wobbling 是 `f(n,I)<<1` 时的 principal-axis rotation + harmonic phonons approximation，并应显示 energy/transition-probability quantization。
- 按用户校准，LAW20-4 将 `f` 单调下降严格限定于本文固定参数的偶偶核示例；Fig.4 的 Lu TSD-longitudinal 下降，而 TSD-transverse 随自旋先降后升，不外推为所有奇 A coupling 的普遍趋势。
- LAW20-8 将 1 轴明确绑定为本文 irrotational-flow convention 中最大-MoI的 intermediate axis（中轴）；transverse approximation 难点是要求该轴上的 dominant rotational component 也为小量。
- Umbrella 新增 LSW-THEORY-1 至 LSW-THEORY-5，均待审；Lawrie 2020 标为 theoretical framework / alternative interpretation source。`135Pr/105Pd/Lu` 只保留本文理论比较，`187Au` 仅 cross-reference。
- 最终 lint 目标：102 pages、931 Wikilinks、15/15 source hash、0 error、10 warning、0 info。
- Lawrie WIP 已 amend/finalize 为 `Ingest Lawrie 2020 TiP and wobbling framework` 并推送至 `origin/main`；`.obsidian/graph.json`、`raw/zotero/wiki-inbox.bib` 与 raw PDF 未纳入。

## 当前执行：low-spin wobbling controversies umbrella project（审核完成，已 finalize/push）

- 用户明确启动 `knowledge/projects/low-spin-wobbling-controversies.md`，覆盖已审核的 `135Pr` 与 `187Au` 两个核素级 controversy project；该当前指令优先于 PLAN 中“TiP 摄入后再建”的旧顺序，但本轮未修改用户拥有的 PLAN。
- umbrella 分开记录 Motivation、科学重要性、case map、两案例 summary、共享实验判据/争议、模型景观、evidence gaps、follow-up sources、TiP future extension、data-analysis bridge 与 innovation candidates。
- 用户已审核 umbrella 全页与 LSW-SYN-1 至 LSW-SYN-7；页面升级为 `human-reviewed`，7 条 synthesis claims 均改为 `needs_review: false`。两个下位 project 与 144 条 source claims 的已审状态不变。
- 按用户校准，明确 predominant-E2/大 `abs(δ)` connecting-transition character 是所讨论 wobbling identification paradigm 的必要判据，但非充分条件；β/γ vibration、TiP 等也可能产生增强 E2 links。γ-softness 是势能面/形变动力学性质，不能由大 `δ` 直接标记。
- 新增跨案例开放问题：能否建立同时约束 mixing-ratio 双解、polarization、signature-partner identity 与 low-spin approximation 的最小 identification protocol。
- 最终 lint 目标：100 pages、897 Wikilinks、14/14 source hash、0 error、10 warning、0 info；warning 为既有元素/反应道提示与用户 raw BibTeX 修改。
- 本地 WIP 已 amend/finalize 为 `Build low-spin wobbling controversies evidence map` 并推送至 `origin/main`；`.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 未纳入。

## 当前执行：`187Au` longitudinal-wobbling project synthesis（审核完成，已提交）

- 清晨定时任务无配置、线程、回执或匹配产物，按 scheduled-continuation 回执门判定为“未触发/未执行”；当前会话已直接完成 synthesis。
- 用户已审核 AU-SYN-1 至 AU-SYN-10，project 升级为 `human-reviewed`，上述 claims 均改为 `needs_review: false`；矩阵继续并列支持链与反证链，不裁决争议。
- Guo 2022 与 Lv 2022 supplementary material 均已在 `raw/papers/`；它们不具独立 DOI/文献身份，未新建 source 或 BibTeX，而是分别挂接到既有 Guo/Lv source。
- Guo supplement 补齐 376/462 keV 的 `R_ac`/polarization 选门、污染控制、`a(Eγ)` calibration、`σ/I` 与误差处理，并给出 Bands 1/2 的 #19/#21/#23 QTR 波函数成分；G22-18 至 G22-20 与 AU-SYN-11 至 AU-SYN-12 已完成人工复核。
- Lv supplement 补齐 747/813/450 keV 的 gate/contamination checks、完整 transition table 与逐带 #14/#15/#16 QTR realignment；L22-14 至 L22-15 已完成人工复核。
- 用户授权在 `PLAN.md` 写入 umbrella project 计划：Lawrie 2020 与 Lv 2021 `135Nd` TiP 原始文献已进入 raw/BibTeX inbox，完成两篇摄入后启动 `low-spin-wobbling-controversies`，不提前建立空壳页。
- 当前 lint 目标：99 pages、862 Wikilinks、14/14 source hash、0 error、10 warning、0 info；144 条结构化 claims 全部已审。
- 已以 commit `41bcc6d`（`Build 187Au longitudinal-wobbling controversy evidence matrix`）提交并推送至 `origin/main`；用户 `.obsidian/graph.json`、`raw/zotero/wiki-inbox.bib` 与 raw PDF 均未纳入。

## 当前执行：Guo 2022 `187Au` low-spin wobbling counter-source（审核完成，已提交）

- 2026-07-04 按 `experiment-ingest + project-ingest` 深读 `raw/papers/2022_Guo et al_Probing the nature of the conjectured low-spin wobbling bands in atomic nuclei3.pdf`；citation key 唯一匹配 `guo_2022_Probingnature`，SHA-256 为 `DE541977E4C8402C905EF8268EBC5707303F4B92F244EB4F59405A70C3473206`。
- 新建 source 与 HIRFL experiment；source 建立 G22-1 至 G22-17，区分 observed facts、experimental criteria、author interpretation 与 QTR model results。用户已完成 source 页面与 G22-1 至 G22-17 全部审核；source 为 `human-reviewed`，所有 claims 均为 `needs_review: false`。
- 实验链：108 MeV `175Lu(18O,6n)187Au`；8 segmented clovers 垂直束流，16 coaxial HPGe 分布于 `26°/51°/129°/154°`；约 `5×10^10` fold≥2 events；联合 `R_ac` 与 linear polarization。
- 对 Sensharma 2020 的直接分歧：Guo 对相同 376/462 keV Band 2→Band 1 links 得到约 `δ=-0.26/-0.28` 的 M1-dominated 小解；指出 Sensharma 未测 connecting-transition polarization、未讨论小 `abs(δ)` branch，并主要把大解与 pure M1 比较。
- Guo 的 QTR 使用 `ε2=0.21, γ=12°`、Harris `J0/J1` 与 9 个近 Fermi 负宇称轨道，把 Bands 1/2 主要联系到最低/次低 `h9/2` 轨道；这是支持 single-particle reinterpretation 的模型结果，不是实验事实。
- reported Sensharma band (3) 在 Guo 数据中未见；相近 265/405/414/551 keV sequence 被归入 `188Pt`。已把该粉色 sequence 绑定为 `11/2-、15/2-、19/2-、23/2-` 的负宇称 `α=-1/2` unfavored-signature candidate，并明确 Guo Fig.2 的既有正宇称 “Band 3” 与 Sensharma 新建负宇称 band (3) 不是同一标签。
- 用户确认 Rupnik `187Ag` β-decay study 在覆盖大量 `187Au` states 至 `I=19/2` 时仍未见该 sequence；该自旋范围覆盖其 `11/2-–19/2-` 低段，已接入 project identity-level counter-evidence。
- 用户确认 G22-15：`J=j+R`，reported low-spin bandhead 的 `J≈j+1` 对应 `R≈1ħ`、极慢 collective rotation，难以形成高自旋小角 wobbling approximation 所需的进动。
- project 已从 supporting seed 更新为 two-sided evidence map；Guo 标记为 `counter-source or reinterpretation source against the low-spin longitudinal-wobbling interpretation in 187Au`，不裁决争议。
- Guo 对 `135Pr/133La/105Pd/183Au/127Xe` 等只作为 broader controversy assessment；未扩展摄入其他核素。TiP 仅记录为低自旋替代机制，不冒充本文对 `187Au` 的直接计算。
- supplementary material 不在当前 `raw/`，polarization procedure、`σ/I` 处理、QTR 细节与 broader-case reanalysis 保留为证据缺口。
- 全部审核后 lint 目标：99 pages、856 Wikilinks、14/14 source hash、0 error、10 warning、0 info；warning 为既有/新增未配置元素、`1p4n` 解析和用户已有 BibTeX 修改。
- 本轮未修改 `PLAN.md`、`USER_GUIDE.md`、schema、vocabulary、lint 或 `raw/`；用户已有 `.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 修改继续只读保护。
- 初始摄入与部分审核以 commits `e7b08a2`、`d4bbb1e` 推送；全量 claim-review 已以 commit `20656c9`（`Mark Guo 2022 source fully reviewed`）推送至 `origin/main`。`.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 均未纳入。
- umbrella project `low-spin-wobbling-controversies` 建议后续建立、但本轮暂缓：等待 TiP 原始理论/实验来源或第三个核素直接 counter-source 后再建，避免只由二手 broader assessment 支撑空壳 project。

## 当前执行：Sensharma 2020 `187Au` longitudinal wobbling（审核完成，待提交）

- 按 `experiment-ingest + project-ingest` 深读 `raw/papers/2020_Sensharma et al_Longitudinal Wobbling Motion in Au 187.pdf`；citation key 唯一匹配 `sensharma_2020_LongitudinalWobbling`，SHA-256 为 `F348DCE9976AD076FD9B1D5281A728E0923053ACED33B0270F643D770729366A`。
- 新建 source、`187Au` nucleus、yrast/LW/SP 三条 band、ATLAS/Gammasphere experiment 与 `187au-longitudinal-wobbling-controversy` supporting project。
- source 建立 AU20-1 至 AU20-15；用户已审核 source 与全部 claims，source 为 `human-reviewed`，AU20-1 至 AU20-15 均为 `needs_review: false`。
- supporting chain：LW→yrast 四条最低 links 有约 87.7%-93.3% E2 fractions；SP→yrast 两条 links 仅约 0.4%、1.0% E2；`E_wobb` 随自旋增加；PRM 比较 energies 与 transition ratios。
- 证据边界：本文未报告 connecting-transition polarization；完整 coincidence、spin/parity 与 angular-distribution systematics 留给 forthcoming publication；angular-momentum geometry 未给出逐自旋分量。
- `187Au` 作为独立 A≈190 project，只与 `135Pr` 在判据层做跨质量区比较，不作为 `135Pr` 直接证据。
- 用户同时审核并确认 `135pr-wobbling-controversy` evidence matrix 与其余章节无问题；该 project 为 `human-reviewed`。
- 审核后 lint 目标为 97 pages、805 Wikilinks、13/13 source hash、0 error、9 warning、0 info；用户已授权分 commit 后 push。

## 当前执行：`135Pr` wobbling controversy project-level synthesis（待用户审核）

- 基于已人工复核的 Matta 2015、Sensharma 2019 与 Lv 2022 共 41 条 source claims，重构 `knowledge/projects/135pr-wobbling-controversy.md` 为 locator-level evidence matrix。
- 分开整理 observed facts、experimental criteria、author interpretations、model results、counter-evidence、paper evidence gate、needs review、unresolved issues 与 follow-up sources。
- 核心争议覆盖 E2/M1 character、mixing-ratio 双解、polarization sign/magnitude、link polarization 覆盖、wobbling-energy trend、signature partner 对照、TAC/QTR/TPSM/TiP 模型边界。
- 三篇 source claims 均为 `needs_review: false`；新 project matrix 尚未人工审核，project 保持 `review_status: unreviewed`。
- Garg 2015/erratum、supplementary materials、TiP 理论/实验原始来源列为 follow-up；Guo 2022 与 `187Au` 仅列 future extension，本轮未摄入。
- 按用户明确要求在 `PLAN.md` 中追加“下一步充实 TiP 相关理论与实验知识”的中期规划。
- 本轮不 commit/push；等待用户审核 project Markdown。

## 当前执行：Lv 2022 `135Pr` counter-source（审核完成，待提交）

- 已确认 PDF `raw/papers/2022_Lv et al_Evidence against the wobbling nature of low-spin bands in 135Pr.pdf`，SHA-256 `4B87C540BF9DA5141FA88EF8F00859162CB08918D56A5DA74726C7537DF5E26B`；BibTeX 唯一匹配 `lv_2022_Evidencewobbling`。
- 已精读 6 页正文并视觉核对 Fig.1、Fig.2 与 Table 1；已新建 `knowledge/sources/lv-2022-evidence-against-wobbling-135pr.md` 和 `knowledge/experiments/jyfl-jurogam2-135pr-ar40-152mev.md`。
- source 已建立 L22-1 至 L22-13；用户已完成页面与全部 claims 核对，source 为 `human-reviewed`，L22-1 至 L22-13 均为 `needs_review: false`。
- 已把 counter-evidence 接入 `135pr-wobbling-controversy`，并更新 `135pr`、side/second-side bands、mixing-ratio、interband-E2、transverse-wobbling、QTR、index、overview 与 questions。
- project 将 Lv 2022 标记为 `counter-source against low-spin wobbling interpretation`，并列出其对 Matta 2015/Sensharma 2019 的具体反证，不裁决争议。
- 用户复核指出 Fig.4(c) 不直接展示 short/intermediate-axis realignment；已校正 L22-13：Fig.3(d) 是机制示意，p.5 正文是五条带发生 realignment 的作者陈述，Fig.4(c) 仅约束 `j_parallel` 与两角动量近乎平行、同步演化，逐带细节在 supplementary material。
- 审核后 lint 目标为 90 pages、729 Wikilinks、12/12 source hash、0 error、7 warning、0 info；warning 为既有元素配置、用户 `.bib` 与 `1p4n` 自动解析边界。
- 上一轮尚未提交的 Sensharma 声子能量校正仍在工作树：source S19-11、QTR model、memory、handoff、log；用户 `.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 继续只读保护。
- 用户已授权检查通过后自动 commit/push；必须排除 `.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib`。

## 当前执行：Sensharma 2019 `135Pr`（审核完成，待提交）

- 2026-07-03 按 `experiment-ingest + project-ingest` 深读 `raw/papers/2019_Sensharma et al_Two-phonon wobbling in 135Pr.pdf`；citation key 唯一匹配 `sensharma_2019_Twophononwobbling`，SHA-256 为 `54F06038943DE5F980DC731266844DCFA1980F1775E47A943F77D31C256C741F`。
- 新建 source、`135Pr` second-side-band 候选页和独立 DGS 高统计 experiment 页；更新 nucleus、TW1 band、mixing ratio、interband E2、wobbling energy、transverse wobbling、QTR、TPSM 与争议 project。
- source 建立 S19-1 至 S19-13，区分 observed facts、experimental criterion、author interpretation 与 model results；用户已完成页面与全部 claims 的原文核对，source 为 `human-reviewed`，S19-1 至 S19-13 均为 `needs_review: false`。
- project 把本篇标为 `supporting source for two-phonon wobbling interpretation`，并明确该 `n_w=2` hierarchy 依赖 Matta 2015 的 `n_w=0/1` assignment，不按独立重复证据计数。
- 用户补充校正 QTR anharmonicity 的物理量：应比较 successive wobbling-phonon spacings，写作 `E_TW1(I+1)-E_yrast(I) ≈ 2[E_TW2(I+2)-E_TW1(I+1)]`，而不是把 TW2 带能量与 TW1 带能量直接作两倍比较。
- 论文未报告 linear polarization；相对 E2 ratios 缺本文独立寿命测量；只有三条最低能 TW2→TW1 links 给出完整角分布/mixing ratio。
- 审核后 lint 目标为 88 pages、689 Wikilinks、11/11 source hash、0 error、6 warning、0 info；warning 为用户 `.bib`、既有 Lu 与 `16O` 元素配置提示。
- 用户已授权 commit/push；显式排除 `.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib`。

## 最近完成：Matta 2015 `135Pr`

- 2026-07-03 按 `experiment-ingest + project-ingest` 深读 `raw/papers/2015_Matta et al_Transverse Wobbling in Pr 135.pdf`；citation key 唯一匹配 `matta_2015_TransverseWobbling`，SHA-256 为 `8DB644705DCCFD58016753B759D19314A65284C48EFC1758F95F1B3CE23551D6`。
- 新建 source、`135Pr` nucleus、yrast/side/signature-partner/dipole 四条 band、ATLAS-Gammasphere 与 TIFR-INGA 两套 experiment，以及争议 project `knowledge/projects/135pr-wobbling-controversy.md`。
- source 建立 M15-1 至 M15-15；用户已完成页面级审核并确认全部 Key Results 与原文对照无误，source 为 `human-reviewed`，M15-1 至 M15-15 均为 `needs_review: false`。
- project 只把 Matta 2015 标为 `supporting source for transverse-wobbling interpretation`；2022 Lv/Guo 等仅列为未来反方摄入候选，未概述其结论，也未裁决争议。
- 更新 transverse-wobbling、wobbling-motion、wobbling-energy、mixing-ratio、interband-E2、DCO、polarization、TAC、QTR、index、overview 和 questions。
- 审核后 lint 目标统计为 85 pages、629 Wikilinks、10/10 source hash、0 error、5 warning、0 info。warning 包括用户 `.bib`、既有 Lu 元素配置和新 `16O` 反应元素配置提示；不修改 lint 配置。
- 已以 commit `e11c6a8`（`Ingest Matta 2015 and seed 135Pr wobbling controversy`）提交并推送；`.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 未纳入。

## 最近一次执行：Domscheit 1999 `163Lu`

- 2026-07-03 以 experiment-ingest + project-ingest 深读 `raw/papers/1999_Domscheit et al_Triaxial superdeformation in 163Lu.pdf`；citation key 唯一匹配 `domscheit_1999_Triaxialsuperdeformation`，PDF SHA-256 为 `EDDE41A90870CBA7451DA6D93579017EEB046D060513AA69B24661BA5A72B7C8`。
- 新建 source、`163Lu` nucleus、SD1/SD2 band、Legnaro Euroball experiment、superdeformation concept 和 transition-quadrupole-moment observable 页面；更新 triaxiality、wobbling、moments-of-inertia、DCO 和 index/overview/vocabulary。
- source 建立 DO99-1 至 DO99-13。实验事实、实验判据、作者解释、SD-ND 两能带混合结果与 UC/PES 模型结果已分开。
- A≈130 project 仅把该文作为 non-A≈130 comparative background；没有把它计入 A≈130 核心 source 或覆盖。
- 原始 PDF、BibTeX、`.obsidian/graph.json` 均未修改；未修改 lint 脚本、配置或测试。
- 用户确认 citation key、主要表述和科学内容无明显问题，并补充 `163Lu/164Lu` 分别为 5n/4n 蒸发道；source 页面升级为 `human-reviewed`，DO99-1 至 DO99-13 均改为 `needs_review: false`。派生页不冒充人工审阅。
- source 新增中英术语表，并明确 two-band mixing calculation 的对象是 SD1 与 `[411]1/2+` 正常形变带，而非 SD1 与 SD2；该消歧偏好同步到 vocabulary 和长期 memory。
- 最终 lint 保留两个 Lu 元素未配置提示；按本轮边界不修改 lint 配置。用户已有 `raw/zotero/wiki-inbox.bib` 修改继续产生第三个 warning。
- 下一步：本轮 Domscheit source 审核已完成；历史遗留 9 条 claim-level 待审项另行交给用户复核。
- 用户已进一步确认 A16-2、C23-2、C23-5、F24-2、F24-4、F24-7、FM97-6、P20-2、ZC91-5；当前 66 条结构化 claims 的 `needs_review` 均为 `false`，历史 claim-level 审核队列已清空。

## 已完成

- 阅读 `share_message/LLM_wiki创建.md` 与 `share_message/LLM检查.md`；
- 确定 Raw / Wiki / System 三类职责；
- 建立行为契约、检查表、研究档案、证据政策、schema、术语表和长期记忆。
- 建立 INGEST、QUERY、REFLECT、LINT 四个独立工作流；
- 建立核素、能带、概念、方法、综合、项目、决策和失败模板；
- 完成初始化系统核查，历史报告见 `outputs/system-audit-2026-07-01.md`。
- 将编译知识层从重复的 `wiki/` 重命名为 `knowledge/`；
- 将模板、日志和输出分别归入 `system/templates/`、`system/log.md` 和 `outputs/`；
- 增加 experiment、model、observable 三类页面；
- 增加 Zotero 轻量连接约定和强制文档同步门。
- 建立 Git 基线提交 `9264fdb`，PDF 与大型原始资料已忽略；
- 完成四篇代表性文献首轮摄入，建立 42 个正式知识页；
- 建立 `131Xe` 核素、三条负宇称序列和 VECC 实验页；
- 建立三个跨来源综合页，当前 181 个 Wikilink 无断链；
- 更新 Obsidian + AI 日常使用与写作指南。
- 完成第一版系统核查：0 个结构性失败，报告见 `outputs/system-audit-2026-07-01-v1.md`。
- 用户已将仓库作为 Obsidian vault 打开，附件目录设为 `raw/figures/`，启用核心功能与 Dataview；
- 用户建立私有 GitHub 仓库 `chenhx6/wiki-nuclear-structure`；本地仍未配置 `origin`；
- 用户建立 Zotero `Wiki Inbox` 并自动导出 `raw/zotero/wiki-inbox.bib`，当前含 2016 `133Ce` 一条 citation key；
- 用户对 `131Xe` 两个待审能带页及 wobbling/signature 综合做轻度科学校准，整体评价良好，页面升级为 `human-reviewed`，未升级为 `verified`；
- 完成 2016 `133Ce`、2020 `137Nd`、2021 `131Ba/133Ce` 三篇文献深度摄入；
- 新建 `131Ba`、`133Ce`、`137Nd` 核素页，四个稳定能带页和四个实验页；
- 建立 CNS、CDFT、CSM、`R_ac` 及 signature-splitting 多机制综合页；
- 正式科学知识页增至 61 个，来源增至 7 个。
- 完成本轮系统核查：372 个 Wikilink、0 断链、7/7 来源哈希匹配、0 个非法核心 type；报告见 `outputs/system-audit-2026-07-01-v2.md`。
- 用户提交 Obsidian/Zotero 桥接配置 `3cef934`，本地 `main` 已跟踪并推送 `origin/main`；
- 用户完成 `137Nd` D2-D3、D5-D6 和 signature-splitting 机制综合审阅，未发现大的问题；三页标为 `human-reviewed`，候选解释与证据缺口保留；
- 建立无第三方依赖的 `system/scripts/wiki_lint.py` 和声明式 `system/lint-config.json`；
- 自动 lint 覆盖 frontmatter、字段/type、slug/aliases、index、Wikilink、source SHA-256、A/Z/N、可解析 `(beam,xn)` 反应道、高置信度人工门和 Git/raw 边界；
- 建立 6 项标准库单元/集成测试及 `.github/workflows/wiki-lint.yml`；
- 本地最终结果：61 个正式科学页、372 个 Wikilink、7/7 source hash，0 error、0 warning、0 info；
- 更新 `AGENTS.md`、`check.md`、LINT workflow 与 `USER_GUIDE.md`，把自动 lint 纳入强制收尾。
- 2026-07-02 03:35 的一次性 heartbeat 未触发且没有生成运行记录；已在 11:15 删除，当前会话重新完成严格复核。后续不得把未验证的定时续跑表述为“无需用户操作即可保证完成”。
- 自动 lint 提交 `d807369` 已推送到 `origin/main`；当前环境未安装 `gh` 且浏览器未登录 GitHub，私有仓库 Actions 结果暂无法读取。
- 完成 03:35 调度故障复盘：到期前后 Codex 本地日志从 01:12:56 至 08:56:43 空白，自动任务表无运行回执。用户确认应用未退出，笔记本持续接电且接电时永久不休眠、不息屏；故障因此收敛为 Codex 后台调度链路未保持活跃或未消费到期 heartbeat，具体内部环节仍不可见。
- 新建 `system/workflows/scheduled-continuation.md`，并把“一小时以上禁用 heartbeat、一次性界面无歧义、无回执不得报完成”写入 `AGENTS.md`、`check.md`、`USER_GUIDE.md` 和长期记忆；复盘见 `outputs/automation-failure-review-2026-07-02.md`。
- 用户新增 README/PLAN 类根目录笔记，用于保存阶段性工作记录、使用备忘和计划；原始合并文件名为 `RAEDME + PLAN.md`。
- 将用户确认的合并笔记拆分为稳定入口 `README.md` 和用户拥有的阶段计划 `PLAN.md`，并把 README → PLAN → handoff 的上下文读取顺序写入 `AGENTS.md`。
- 2026-07-02 完成 PLAN/handoff 小范围规则修订：`PLAN.md` 改为按阶段计划、研究优先级、文献选择方向、项目建立、长期探索、多步骤建设或用户明确要求等条件读取；PLAN 管方向和好奇心，handoff 管最近状态和交接事实。
- 补充 safe suspend：执行余量不足且无法稳定完成时停止扩大范围，完成三项 Git 检查，写入完整 handoff，等待用户在额度刷新后发送“继续”；不把它描述为自动睡眠或原地恢复，不自动创建 automation 或 commit/push。
- 本次修改文件为 `AGENTS.md`、`README.md`、`USER_GUIDE.md`、`check.md`、`system/workflows/scheduled-continuation.md`、`system/memory.md`、`system/handoff.md` 和 `system/log.md`；`PLAN.md` 未修改，用户已有 `.obsidian/graph.json` 修改未触碰。
- 新建 repo 级 instruction-only Skill `.agents/skills/wiki-evidence-query/SKILL.md`，用于默认只读的核结构证据型知识问答；同步在 `USER_GUIDE.md` 增加显式调用说明。
- 本次 Skill 任务修改 `.agents/skills/wiki-evidence-query/SKILL.md`、`USER_GUIDE.md`、`system/handoff.md` 和 `system/log.md`；未修改 `PLAN.md`、`knowledge/`、`raw/` 或科学内容，也未新增脚本或 automation。
- 完成基础治理修正：明确 Wiki 是证据导航原型而非最终权威，建立 `system/paper-evidence-gate.md`，补充论文级准入、漏引检查、日常摄入/人工复核闭环和未来写作 Skill 接口。
- 用户明确确认已查看现有 7 个 source 页且无明显科学问题；7 页据此更新为页面级 `human-reviewed`，但 9 条 claim-level `needs_review: true` 原样保留，未自动清零或升级为 `verified`。
- 核对 `raw/papers/` 中 9 个 PDF 与 `raw/zotero/wiki-inbox.bib` 中 9 条记录，DOI/title/file 唯一对应；7 个现有 source 页 citation key 已与当前 BibTeX 精确同步，未修改 `.bib` 或 PDF。
- 本轮人工统计基线：页面级 unreviewed 48、source 页 unreviewed 0、claim-level `needs_review: true` 9、缺 locator 0、缺 claim kind 0、source 缺 raw_file 0、source 缺 citation key 0。
- 本次修改 `README.md`、`USER_GUIDE.md`、`system/memory.md`、`system/evidence-policy.md`、`system/schema.md`、三个 ingest/query/reflect workflow、`system/paper-evidence-gate.md`、`system/handoff.md`、`system/log.md` 及 7 个 source 页的审阅/citation 元数据；未修改 `AGENTS.md`、`PLAN.md`、`raw/`、脚本、Skill 或核物理正文。
- 上一轮验收结果：Wiki lint 为 0 error、1 warning（用户已有 `raw/zotero/wiki-inbox.bib` 工作树修改）；6 项单元/集成测试通过，当时自动 claim-level 统计尚未实现。
- 本轮在 `system/scripts/wiki_lint.py` 中加入 Markdown claim 表逐行解析和 `GOVERNANCE` 指标，自动报告页面/source unreviewed、claim 待审、缺 locator/kind、source 缺 raw_file/citation key；同步更新 config、测试、check、overview 和用户指南。
- 本轮验收结果：7 项 lint 单元/集成测试全部通过；Wiki lint 返回 0 error、1 个已解释的 `RAW_GIT_CHANGE` warning 和 9 个 `CLAIM_NEEDS_REVIEW` info。自动指标为页面级 unreviewed 48、source 页 unreviewed 0、claims 45、claim-level `needs_review: true` 9，缺 locator、缺 claim kind、source 缺 raw_file、source 缺 citation key 均为 0。
- `wiki-evidence-query` 已作为独立 commit `17a65b3` 提交；该提交只包含 Skill 文件。
- 新增 `USER_GUIDE_DETAIL.md` 作为面向用户和研究生的详细说明书；`USER_GUIDE.md` 保持快速指南，README 只增加详细指南入口。Project 可随具体问题、阶段性数据结果或写作目标进入，不必等待固定时间点；写作 Skill 仍只预留接口。
- 本轮文档按独立 commit `Add detailed wiki user guide` 交付；检查通过后推送 `main` 到 `origin`。用户已有 `.obsidian/graph.json` 与 `raw/zotero/wiki-inbox.bib` 修改保持未暂存、未纳入提交。
- 2026-07-02 按 review-ingest 策略摄入 De Voigt、Dudek 与 Szymanski 1983 高自旋综述；citation key 通过题名、作者年份与 DOI 唯一匹配 `devoigt_1983_Highspinphenomena`，原始 PDF 与用户 BibTeX 保持只读。
- 新 source 建立 8 条 review/background claims；DV83-2、DV83-7、DV83-8 标记 `needs_review: true`，分别对应统计衰变转述、pairing/alignment 混淆和历史实验方法系统学。
- 新建高自旋现象、转动带、backbending、角动量顺排、转动惯量和 in-beam γ 谱页面；只对 signature partner/splitting 页补充历史背景与二手证据边界，未修改核素或能带结论。
- 建立 `knowledge/projects/a130-high-spin-collective-modes-evidence-map.md`，连接现有 7 个 source、De Voigt review、4 个 synthesis、实验判据、模型入口与尚为空的用户数据分析桥。
- 本轮 lint 基线为 69 个正式页、468 个 Wikilink、8/8 source hash，0 error、1 个用户 `.bib` 修改 warning、12 个 claim review info；其中旧 9 条待审保持不变。
- 用户已完成人工审阅 De Voigt 1983 source，并逐条将 8 条 Key Results 与原文对比确认无误；页面为 `human-reviewed`，DV83-2、DV83-7、DV83-8 的 `needs_review` 已改为 `false`。适用边界校准为“经典术语、γ 探测基础和机制框架仍有效，后来发展的物理模式与具体装置/核素证据另查专门来源”；复核后 lint 为 page unreviewed 55、source unreviewed 0、0 error、1 个用户 `.bib` warning、9 个 claim review info。

## 关键设计决定

- 不照搬“来源数决定置信度”规则，改用证据直接性、独立性、模型依赖和人工复核。
- 不把两年以上文献统一标为过时；经典实验与理论按内容类型判断时效。
- 将操作流程拆成独立 Markdown，稳定后再转换为 skills，避免一开始把错误流程固化。
- 核素、能带和物理概念分开建页，避免把观测对象与物理解读混为一谈。
- 自动 lint 只阻止机械可判定的结构性 error；科学待审状态作为 warning/info，不为“绿灯”自动修改解释。
- GitHub 因不保存 PDF，只报告 raw source 缺失 warning；完整 source hash 必须在本机执行。
- 定时调度只提供尽力执行，不构成完成证据；运行回执与产物核验是“已执行”的必要条件。
- PLAN 负责阶段目标、研究兴趣、长期探索方向、研究优先级和文献补充方向；handoff 负责最近完成事项、具体执行状态、未完成问题、文件修改和下一次交接。无法分类的冲突必须询问用户。
- Safe suspend 是写回可恢复状态后结束当前执行，不是自动睡眠；后续 automation 属于读取 handoff 的新任务。
- `wiki-evidence-query` 只封装证据查询工作流和回答边界，不内置核物理结论，默认不写入 Wiki；摄入和知识页维护继续使用既有项目工作流。
- Wiki 只负责证据导航和研究辅助；论文级主张必须回到 source/raw、精确 locator、citation key 和人工复核，并完成竞争解释与漏引检查。
- 页面级 `human-reviewed` 与 claim-level `needs_review` 独立；页面审阅不构成批量清除具体 claim 待审状态的授权。
- 现阶段不新增 ingest/reflect/lint/writing Skill；先稳定 workflow、schema、review 和 evidence gate，写作 Skill 等数据处理和真实 project 闭环就绪后再创建。
- 采用 bounded initiative：只允许直接相关、低风险、可解释、可回滚且可单独审查的必要最小同步；非必要优化只列建议。PowerShell 找不到 `git` 时，先定位 Git 绝对路径并执行同等边界检查。
- `ingest-strategies.md` 已固化 review、experiment、theory、method、targeted、project、daily、claim-review 和 data-analysis-bridge 默认策略；后续用户可用目标路径、BibTeX key、策略、主题、project 关系、注意事项和提交策略组成的短提示词启动摄入。
- 已建立 bilingual terminology normalization framework：`system/vocabulary.md` 提供高价值 seed terms、歧义和禁止合并边界；query workflow 与 `wiki-evidence-query` 执行中英文/缩写/口语双向扩展，`check.md` 增加人工检查项。
- 文献摄入默认在检查通过后创建本地 `WIP ingest:`、不 push；用户审核后由 Codex 推荐 final message，并以 amend 转换为 final commit。Safe suspend 的大量 diff 场景优先本地 WIP checkpoint，同一分支只保留一个 active WIP；旧式“不 commit/push，等待审核”解释为不 final commit、不 push，但允许本地 WIP。
- Bounded initiative 第四条已改为 Agent 行为契约：以验收标准收敛任务；验收缺失、含糊或与 workflow 冲突时先提出可验证标准并询问，不自行扩大目标。

## 下一步

1. 下一篇优先摄入 A≈130 原始实验文献，例如 `133Ce` 2013 MχD 或 `131Ba` 手征原始论文，并把精确观测接入 project evidence categories；
2. 如需把 De Voigt 转述的具体历史实验用于论文级主张，继续回溯其所引原始工作；
3. 数据处理出现新 γ 线、能级、ADO/DCO、polarization、mixing ratio、寿命或跃迁强度后，按 Data-Analysis Bridge 的状态字段接入；
4. 每累计 5 篇相关文献更新一次 synthesis，并继续避免以 review 替代原始实验；
5. 每次摄入或 claim 审阅状态变化后，以 lint `GOVERNANCE` 输出同步 `knowledge/overview.md`；
6. 用户在 GitHub Actions 页面确认 `Wiki lint` 结果；若失败，读取日志后修复。

当前规则修订已完成，无遗留修改事项。下一次任务应按 `AGENTS.md` 的条件判断是否需要读取 `PLAN.md`；若从 safe suspend 恢复，先读取 handoff 中的续跑提示词与风险记录。

`wiki-evidence-query` Skill 构建已完成，无遗留修改事项；后续可用 `$wiki-evidence-query` 对真实问题做只读验证。

## 未解决问题

- A≈130 的具体核素范围尚未确定；
- 带结构命名规范需结合用户现有论文和数据习惯；
- 本轮目标 Sensharma 2019 已建立 source；本地 source/PDF 对应只表示已摄入文件，不表示领域文献完整覆盖。
- 未发表数据的隔离与加密策略尚未确定。
- qmd 当前未安装；在页面规模证明有需要之前暂不引入。
- `131Xe` yrare 序列的 mixing ratio 与 B(M1)/B(E2) 仍需用户核对原始分析细节。
- `137Nd` 新伙伴 D3、D6 缺实验 B(M1)/B(E2) 与寿命，手征解释保持候选；
- GitHub Actions 首次远端运行结果尚未核验：当前环境无 `gh` 且浏览器未登录私有仓库；
- 自动反应道守恒当前只解析标准中子蒸发写法，复杂带电粒子道会报告 warning 并要求人工检查。
- 本机 heartbeat 未触发的具体内部原因仍不可见；应用开启、持续供电和禁用休眠均不能保证它执行，在验证常驻调度环境前不把它用于必须准时完成的任务。
- Sensharma 2019 的 source 与 S19-1 至 S19-13 已完成用户确认；派生页仍保持独立的 `unreviewed` 状态。
- De Voigt 1983 的 8 条 Key Results 已由用户逐条核对；其转述的关键历史实验仍需按项目需要回溯原始论文。
