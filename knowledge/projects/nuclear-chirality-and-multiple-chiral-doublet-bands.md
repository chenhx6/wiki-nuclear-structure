---
type: project
title: "Nuclear chirality and multiple chiral doublet bands"
aliases: [核手征与多个手征双带证据图, MχD evidence map]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: unreviewed
project_stage: evidence-mapping
confidentiality: private
nuclei: [133ce, 78br]
tags: [nuclear-chirality, multiple-chiral-doublet, evidence-map, writing-support]
---

# Nuclear Chirality and Multiple Chiral Doublet Bands

## Active Summary for Agents

本页是 evidence map / writing-support project，不是论文草稿。Meng 2010、Ayangeakaa 2013 与 Liu 2016 均已 deep-read 并完成人工 source review；本 project 页仍保留独立 review 状态。所有解释必须与 observed facts、experimental assignments、author interpretations 和 model calculations 分层。

Frauendorf 2001 is a reviewed review/background source for the rotating-mean-field symmetry map. It supplies PAC/planar/aplanar TAC distinctions, the TAC/PRM and symmetry-restoration boundary, and comparison mechanisms such as magnetic, antimagnetic and reflection-asymmetric rotation. It is not an additional original experiment and does not change the reviewed status of the Meng/Ayangeakaa/Liu claims.

## Research Question

- What experimental and theoretical evidence is required to interpret doublet bands as nuclear chiral partners?
- What distinguishes multiple chiral doublet bands from ordinary partner-band or shape-coexistence structures?
- How does triaxial shape coexistence support MχD interpretations?
- What does the `78Br` evidence establish about octupole correlations, and what does it not establish about stable octupole deformation?
- Which commonly used fingerprints remain model dependent?

## Current Hypotheses

- MχD 指认需要对每对双带分别建立实验与模型链，再检验多组三轴形变/组态是否共同支持。
- `133Ce` 的 triaxial shape coexistence 与 `78Br` 的 octupole correlations 可能提供不同的扩展背景，但都不能由近简并能谱单独确定。

## Scope and Limits

本轮范围限于 [[meng-2010-open-problems-nuclear-chirality]]、Ayangeakaa 2013 与 Liu 2016。项目组织理论预期、实验结构、指认、作者解释、模型支持、未解决歧义和未来观测，不声称文献完整覆盖，也不裁决所有候选带的最终性质。

## Source-by-Source Evidence Table

| Source | Role | Direct contribution | Boundary |
|---|---|---|---|
| [[meng-2010-open-problems-nuclear-chirality]] | theory/review/open problems | 几何、TAC/PRM 边界、fingerprint ambiguity、MχD/shape-coexistence 背景 | 不提供新的核素实验事实；具体案例需回原始来源 |
| [[ayangeakaa-2013-evidence-multiple-chiral-doublet-bands-133ce]] | original experiment + model comparison | `133Ce` 两对带、DCO/角分布、energy/`S(I)`/`B(M1)/B(E2)`、RMF+TPRM | MχD/shape coexistence 是作者解释；无 lifetime measurements，以 `135Nd` 相同建议组态的系统学作有限补充 |
| [[liu-2016-octupole-correlations-multiple-chiral-doublet-bands-78br]] | original experiment + method + model comparison | `78Br` 两对带、ADO/偏振、八条 E1 links、octupole systematics、MDC-CDFT+TPRM | MχD/octupole 是解释；Band 3/4 configuration tentative；quartet 是未来观测可能性，当前结构未被直接指认为 quartet |

## Theory Background

- [[frauendorf-2001-spontaneous-symmetry-breaking-rotating-nuclei]] supplies the rotating-mean-field, Routhian and discrete-symmetry background needed to separate chiral geometry from magnetic rotation, antimagnetic rotation and band termination. Its cited examples remain review/background until their original papers are checked.

- [[nuclear-chirality]]：高 `j` particle、core rotation 与高 `j` hole 的 aplanar 左右手几何。
- [[tilted-axis-cranking]]：半经典 mean-field 几何；不完整处理左右手量子隧穿。
- [[particle-rotor-model]]：实验室系量子模型；通常预设 rigid triaxial core、形变和组态。
- [[chiral-vibration]] 与 [[static-chirality]]：需要描述振动、隧穿和随自旋演化，不能只由近简并命名。

## Experimental Evidence in 133Ce

- Observed/assigned structures: [[133ce-positive-parity-mchd-pair]]（Bands 2–3）与 [[133ce-negative-parity-mchd-pair]]（Bands 5–6），包含带内、crossover 和 interconnecting transitions。
- Experimental criteria: DCO ratios 与 angular distributions 支持同宇称及 dipole/quadrupole assignments；Fig.2 比较能差、[[energy-staggering-parameter]] 和 `B(M1)/B(E2)`。
- Limitation: 本文没有 lifetime measurements；作者以同中子素 `135Nd` 中相同建议组态的手征带系统学增加可信度，但这种邻核比较只适当弥补信息缺口，不能替代 `133Ce` 自身的绝对 transition probabilities。

## Experimental Evidence in 78Br

待 Liu 2016 原始实验 source 摄入后填入。

## MχD and Triaxial Shape Coexistence

Meng 2010 总结的 constrained triaxial RMF 工作以多个三轴形变/组态极小提出 [[multiple-chiral-doublet-bands]]。Ayangeakaa 2013 在 `133Ce` 中把两对实验结构与 RMF states a/b 的不同三轴形变/组态、以及 TPRM 比较连接起来，并解释为 [[triaxial-shape-coexistence]]。该链是 experiment + assignment + model support，不是直接测得两个 `gamma` 值。

## MχD and Octupole Correlations

- Observed/assigned structures: [[78br-positive-parity-mchd-pair]] 与 [[78br-negative-parity-mchd-pair]]；Band 1–3 间八条强 E1 links。
- Experimental criteria: [[angular-distribution]] 中的 ADO ratio、linear polarization、[[be1-be2-ratio]] 与 [[energy-displacement]]。
- Model support: TPRM energies/ratios/effective angles；MDC-CDFT `beta30` softness。
- Boundary: evidence supports [[octupole-correlation]]/[[octupole-softness]]，不建立 stable [[octupole-deformation]]；作者认为共存证据指向在单核中观测 [[chirality-parity-quartet-band]] 的未来可能性，但未把当前四条带直接指认为 quartet。

## Observed Facts versus Interpretations

| Layer | Current content |
|---|---|
| observed facts | Meng 无新实验；`133Ce`/`78Br` 两文分别建立两对 bands/links；`78Br` 直接观测八条 E1 links |
| experimental assignments | `133Ce` DCO/角分布与 `78Br` ADO/偏振支持 multipolarity/spin-parity；configuration 不属于直接测量 |
| author interpretation | `133Ce` MχD+triaxial shape coexistence；`78Br` MχD+octupole correlations/softness；均保留原作者归属 |
| model calculations | Meng 的 TAC/PRM/RMF 边界；`133Ce` RMF+TPRM；`78Br` MDC-CDFT+TPRM，均含输入/拟合/截断 |
| counter-evidence | 缺 model-independent chirality selection rule；`133Ce` 无 lifetime，`135Nd` 系统学不能替代本核绝对跃迁强度；`78Br` 明显不同于 stable-octupole `224Th`，且 Band 3/4 configuration tentative |
| Wiki synthesis | 三篇形成理论背景→两个不同扩展案例，不构成“理论预言被完全证实”的线性故事；每对 MχD 与每个 shape claim 仍需独立审核 |

## Evidence Available

当前可用证据仅为 Meng 2010 的 theory/review background；两篇原始实验尚待逐篇接入。上方 source table 与 observed-versus-interpretation table 共同记录来源角色和证据层级。

## Model Roles and Limitations

- TAC：角动量取向与 aplanar mean-field solution；总角动量通常不是好量子数，隧穿超出平均场。
- PRM：量子劈裂、跃迁和角动量几何；芯形变、转动惯量和组态通常作为输入。
- constrained RMF/CDFT：形变和组态候选及势能面；模型极小值不是直接实验形变测量。
- `133Ce` TPRM：以 RMF `beta/gamma` 为输入并调整转动惯量；正宇称对另使用 Coriolis attenuation。能量/ratio 趋势再现不是独立实验证明，且未再现实验小幅 staggering。
- `78Br` MDC-CDFT：给出组态形变与 `beta30` softness；TPRM 给出 energies/ratios/effective angles，但忽略的 `f5/2-p3/2` mixing 被作者用于解释 Band 3 偏差。

## Competing Interpretations / Unresolved Questions

- near-degenerate same-parity doublets 是否由 `gamma` vibration、shape coexistence、many-particle correlations、pseudospin partners 或 core polarization 产生？
- 对每对 MχD 候选，哪些电磁观测真正独立于能谱系统学？
- 从 chiral vibration 到 static chirality 的过渡能否由统一模型和数据共同约束？

## Evidence Gaps

- `133Ce` 两对候选带缺 lifetime/absolute transition-probability 独立确认；`135Nd` 相同建议组态的系统学只提供补充支持。
- `78Br` 的 absolute E1/E2 information、configuration mixing 与 stable-deformation exclusions 仍可由后续来源加强。
- 当前三篇不足以构成 MχD 或 octupole-chirality 领域完整书目。
- 缺 model-independent electromagnetic selection rule。
- 综述中的候选核总结不能替代原始实验论文。

## Risks and Blockers

- 常用 fingerprints 缺少 model-independent selection rule；
- 形变、组态与角动量几何主要由模型反演，不能写成直接观测；
- `78Br` 的八极术语若误写，会把 correlations/softness 错升为 stable deformation；quartet 应写成由共存证据指向的未来观测可能性，不得把当前四条带直接写成已建立 quartet。

## Next Actions

1. 三篇 source 已完成人工审核；本页 evidence matrix 继续保留独立 project review 状态。
2. 后续优先摄入 lifetime/absolute transition-strength 或直接竞争解释来源；不自动扩展本轮 reference lists。

## Future Writing Hooks

- 用“theoretical expectation → observed structures → assignments → author interpretation → model support → residual ambiguity”组织背景段，而不写成理论已被完全证实的线性故事。
- 对每个 fingerprint 同时写适用模型条件和竞争解释。

## Claims Not Yet Ready for Paper Evidence Gate

本页全部跨来源判断当前均为 candidate evidence。Meng `M10-1..11`、Ayangeakaa `A13-1..12`、Liu `L16-1..15` 尚待联合人工审核；在用户明确确认前不描述为通过 paper evidence gate。

## Related Sources and Pages

- [[chiral-doublet-bands]]、[[multiple-chiral-doublet-bands]]、[[triaxial-deformation]]
- [[chiral-rotation-from-aplanar-tac]]

## Evolution Log

- 2026-07-13：以 Meng 2010 建立理论背景、模型边界和后续两篇实验 source 的证据容器。
- 2026-07-13：接入 Ayangeakaa 2013 的 `133Ce` 两对带、实验判据、RMF/TPRM 和 lifetime/model-discrepancy 边界。
- 2026-07-13：接入 Liu 2016 的 `78Br` ADO/偏振、两对带、八条 E1 links、octupole systematics 与 MDC-CDFT/TPRM；明确 stable deformation/quartet exclusions。
