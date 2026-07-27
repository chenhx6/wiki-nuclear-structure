---
type: project
title: 131Ce/133Ce 集体模式判别
aliases: [131Ce collective-mode discrimination]
created: 2026-07-27
updated: 2026-07-27
status: active
review_status: unreviewed
project_stage: candidate-L4-safe-suspended
confidentiality: private
nuclei: [131ce, 133ce, 131xe, 131ba]
tags: [l3, a130, collective-modes, evidence-map, candidate-l4]
---

# `131Ce/133Ce` 集体模式判别

## Research Question

以 [[alwaleedi-2013-band-structures-131ce]] 的 Bands 1–7 为 `131Ce` 结构基线，`131Ce/133Ce` 及必要邻核的公开证据最支持哪种形变背景与集体模式？wobbling、chirality、signature-partner/configuration coupling、γ-soft 粒子—芯耦合和 shape coexistence 中哪些仍可行，缺少哪些 observable 阻止裁决？

范围限定：

- 本 milestone 比较已摄入的直接实验来源与模型解释，不把相邻核标签倒灌到 `131Ce`；
- 不进行 L4 数据拟合或未授权 raw 数据分析；
- 2016 年 `131Ce/133Pr` lifetime 论文（DOI `10.1007/s12043-016-1218-6`）已由外部元数据发现，但全文尚未按 Wiki acquisition 流程摄入，因此只列为 `blocked-needs-source`，不用于数值结论。

## Current Hypotheses

| 排序 | 假设 | 当前状态 | 核心理由 | 会改变排序的证据 |
|---|---|---|---|---|
| 1 | signature-partner/configuration coupling 叠加 spin-dependent core response | provisionally preferred | `131Ce` 有完整 crossing/alignment/configuration 链；未出现要求新集体 phonon 的必要证据 | 精确连接跃迁 δ/偏振和寿命显示强集体带间 E2 |
| 2 | γ-soft particle-core coupling / 随自旋增强的非轴响应 | viable background | `133Ce` 的 γ-soft 三轴模型与邻核多机制 signature splitting 支持该背景；`131Ce` 作者也提出 core polarization | `131Ce` 绝对 E2/Q_t、γ-sensitive staggering 与统一模型计算 |
| 3 | chirality | viable for selected `133Ce` pairs; unsupported for `131Ce` baseline | `133Ce` 两组候选有同宇称 links、能量与 ratio fingerprints，但缺 lifetime；`131Ce` 没有等价闭合链 | 同组态双带的 absolute B(E2)/B(M1)、interband transitions 与几何一致性 |
| 4 | shape coexistence | model-dependent candidate in `133Ce`; unestablished in `131Ce` | `133Ce` RMF 给出不同三轴极小，但该结论依赖同一实验/模型链；`131Ce` 只见 spin-dependent configuration/shape response | 多带 Q_t/绝对 E2、E0 或 quadrupole invariants 与独立 PES/配置验证 |
| 5 | wobbling | not supported for current `131Ce` bands | 没有相邻 phonon band identity、enhanced out-of-band E2、可靠 δ/偏振或 wobbling geometry | 明确的 ΔI=1 collective E2 links、B(E2)out/B(E2)in 和一致的 E_wob/角动量几何 |

关键合并判断：`signature/configuration coupling` 描述带身份机制，`γ-soft/core response` 描述形变背景，两者并不互斥；当前最节约假设的组合是“组态耦合主导、γ-soft 或随自旋演化的非轴芯作为背景”，不是固定 γ-rigid rotor，也不是已经证明的 chirality/wobbling。

## Evidence Available

### 证据地图

| 证据 | 支持 | 限制/反证 | 独立性与权重 |
|---|---|---|---|
| `131Ce` Bands 1–7 的 coincidence、angular ratios、crossings、alignments 与 Table 5.3 组态图 | signature/configuration coupling；spin-dependent core response | `B(M1)/B(E2)` 采用 `δ=0`；无 lifetime/absolute B(E2)/polarization；Table 5.1 Band 2 parity 为 probable typo/source conflict | 目标核直接来源，当前最高权重；[[alwaleedi-2013-band-structures-131ce]] AW13-1–11 |
| `133Ce` 两组候选伙伴带的同宇称 links、S(I)、relative `B(M1)/B(E2)` 与 RMF+TPRM | chirality 和不同三轴极小/shape coexistence 的作者解释 | 无 lifetime；TPRM 有 moment-of-inertia 调整和 Coriolis attenuation；模型未完全再现 staggering | 同一数据集的实验+模型链，不是独立多源确认；[[ayangeakaa-2013-evidence-multiple-chiral-doublet-bands-133ce]] A13-3–13 |
| `133Ce` 2016 完整中高自旋谱学地图 | 多组态竞争、显著三轴模型背景、不同轴/倾斜轴转动 | 旧 Q5/Q7 近简并 signature-partner 解释被新 links 推翻；弱带头和模型匹配非唯一 | 结构更新价值高，但部分复用 2013 数据；[[ayangeakaa-2016-133ce-in-beam]] A16-1–6 |
| `131Ba/133Ce` N=75 signature splitting 的 PES/CSM/QTR | 非轴形变与低-j Coriolis mixing 可共同产生 splitting | S(I) 不是 γ 的单值测量；模型 γ 约定与 attenuation 依赖 | 对机制有直接比较价值，但对 `131Ce` 仅邻核迁移；[[ding-2021-131ba-133ce-signature-splitting]] |
| `131Xe` wobbling vs unfavoured signature partner 反例 | 小 δ/M1-dominant links 可排除具体 wobbling assignment；建立电磁优先判据 | 不能证明整个核区无 wobbling；弱 transition δ 有系统误差 | 邻核方法学反证；[[chakraborty-2023-131xe-wobbling-origin]]、[[wobbling-vs-signature-partner]] |
| γ-soft IBFM 对若干 odd-A 非 yrast bands 的替代解释 | γ-soft particle-core coupling 不需预设 wobbling phonon即可生成低能带 | 模型参数、band matching 与部分异常 δ 敏感；没有新实验 | 理论替代机制，不能单独裁决目标核；[[nomura-2022-questioning-wobbling-ibfm]] |

### 证据依赖审计

1. `133Ce` 的 MχD、shape-coexistence 与后续谱学地图并非完全独立，因为共享或继承同一批 Gammasphere 数据和 band assignments。
2. `131Ce` thesis 的 configuration map 与 `B(M1)/B(E2)` comparison 共享模型输入，不能当作两条完全独立证据。
3. `131Xe/131Ba/133Ce` 邻核比较只检验机制可行性；它不能替代目标核的电磁 observable。
4. 模型给出的 γ 值使用不同参数化、轴约定和可调量，不能直接平均为“真实 γ”。

### 可区分预测矩阵

| 解释 | 若成立应优先看到 | 当前 `131Ce` 状态 |
|---|---|---|
| signature/configuration coupling | 同组态 signature 序列、可解释 splitting/crossing、links 以 M1 或普通 mixed M1/E2 为主 | 前两项较强；连接跃迁 δ/偏振不足 |
| γ-soft particle-core coupling | γ-sensitive staggering 与多带谱可由同一软芯参数描述，E2 分支随 core collectivity 有一致趋势 | 只有模型/邻核背景，缺目标核统一计算和绝对 E2 |
| wobbling | 明确 n_w→n_w−1 的 enhanced out-of-band E2、可靠 δ 与 B(E2)out/B(E2)in、合理 E_wob | 未建立 |
| chirality | 同组态近简并 ΔI=1 双带、相似 intraband B(M1)/B(E2)、可解释 interband transitions 与手征几何 | `133Ce` 部分满足；`131Ce` 未建立候选对 |
| shape coexistence | 不同带有可重复的不同 Q_t/绝对 E2 或 invariants，并有受控配置/混合证据 | `133Ce` 仅模型候选；`131Ce` 未建立 |

## Analysis Status

- L3 milestone: completed; awaiting P0/P1 milestone review。L4 candidate 已在手动启动关口 `safe-suspended`。
- Literature route: 已比较 1 个 `131Ce` 目标核 deep-read source、4 个邻核/目标邻近 direct sources 和 3 个既有 synthesis；CrossRef/arXiv 定向检索发现关键 lifetime source。
- Search stop reason: 当前假设排序已稳定；下一高信息增益步骤是摄入 lifetime paper 或进入数据研究，继续泛检索预计主要重复模式综述。
- Confidence: 对“configuration coupling 优先”是 medium；对 `131Ce` γ-soft 背景是 low-to-medium；对 wobbling/chirality/shape coexistence 的否定仅为“当前未支持”，不是排除。

## Decisions

1. **Provisional milestone conclusion**：`131Ce` 当前最符合 signature/configuration coupling 主导、叠加 γ-soft 或随自旋增强的非轴 core response。
2. 不把 Alwaleedi 的轴对称 TRS 点解释为 γ-rigid 实验证据，也不把其 core-polarization 讨论升级为 shape coexistence。
3. `133Ce` 的 chirality/shape-coexistence 保持 viable、model-assisted candidate；lifetime gap 阻止正式裁决。
4. wobbling 在当前 `131Ce` Bands 1–7 中没有满足电磁优先判据，状态为 `unsupported`, 不是 `falsified for the nucleus`。
5. 决定性 observable 的优先级为：
   1. 连接 ΔI=1 跃迁的 mixing ratio（含 branch/sign）与线偏振；
   2. 多带寿命、absolute B(E2)/B(M1)、Q_t 与带间/带内 E2 比；
   3. 统一 band identity 后的 interband transition matrix；
   4. quadrupole invariants/Coulomb excitation 或同口径 soft-vs-rigid 模型比较。

## Risks and Blockers

- **P0 / downgraded**：视觉复核显示 Alwaleedi Table 5.1 的 Band 2 负宇称与 Figure 4.1、Tables 4.5–4.6 和 Section 5.2.2 冲突，当前为 probable typo；原始单元已隔离，不用于 working parity。用户基于 Figure 4.1 的 provisional map 为 Bands 2/3/5 正宇称、1/4/6/7 负宇称。
- **P1 / blocked-needs-source**：Singh et al. 2016 lifetime paper 可能直接补充 `131Ce` absolute E2/Q_t；目前只核验到元数据和题名，未摄入全文，不能引用其数值或作者结论。
- **P1 / remains-open**：Alwaleedi Table 5.3 Band 5 高自旋标签可能存在 signature/排版歧义。
- `133Ce` MχD 与 shape-coexistence 证据存在共享数据/模型依赖，独立性低于论文数量表面值。
- 公开来源尚未给出 `131Ce` Bands 1–7 的统一 measured δ、polarization 和 lifetime matrix。

## Candidate L4

- status: `candidate-L4 / blocked-needs-user-data`。
- 可用数据 A：用户已手动启动 L4，并确认 thesis Tables 4.1–4.7、5.1–5.4 与 Figure 5.5 的公开能量、强度、angular ratios、crossing 和相对 B(M1)/B(E2) 为本轮主要高质量基线。
- 可用候选数据 B：后续用户提供的 `131Ce` γ–γ、angular-correlation/polarization、lifetime 或拟合结果。
- 建议分析：建立 band/transition manifest；传播 intensity 与 δ 假设；比较 signature/configuration、γ-soft core coupling、wobbling/chirality 的可区分预测；执行 band-mapping 和 δ 分支敏感性负例。
- 最小数据字段：band/level identity、Eγ、Ei/Ef、Iiπ/Ifπ、intensity 与误差、multipolarity/δ 及误差/分支、polarization、lifetime 或 B(E2)/B(M1)、source locator。
- 可能创新点：把“模式标签争论”转换为可审计的 observable-discrimination score，并量化哪一项新测量提供最大信息增益。
- 本轮不越过 L4 手动启动关口。

## Next Actions

1. 先以 thesis-only 数据重建 band/transition crosswalk，并扫描 `δ=0, ±0.1, …, ±0.5` 的 B(M1)/B(E2) 敏感性。
2. thesis-only L4 后评估 DOI `10.1007/s12043-016-1218-6` 是否能映射到相同 band/spin 区并改变假设排序；此前仍为 `blocked-needs-source`。
3. 用户独立 `131Ce` 实验数据尚未提供，本轮不读取、不与 thesis 合并；未来需单独 manifest 和 identity mapping。
4. 不把本 project 的 provisional conclusion 写入正式论文结论或提升为 high confidence。

## Related Sources and Pages

- Target baseline: [[alwaleedi-2013-band-structures-131ce]], [[131ce]]
- `133Ce`: [[ayangeakaa-2013-evidence-multiple-chiral-doublet-bands-133ce]], [[ayangeakaa-2016-133ce-in-beam]], [[133ce]]
- Mechanism controls: [[ding-2021-131ba-133ce-signature-splitting]], [[chakraborty-2023-131xe-wobbling-origin]], [[nomura-2022-questioning-wobbling-ibfm]]
- Synthesis: [[gamma-soft-vs-gamma-rigid-diagnostics]], [[wobbling-vs-signature-partner]], [[signature-splitting-mechanisms]]
