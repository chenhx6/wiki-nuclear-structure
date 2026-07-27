# Paper Card：Singh 2016《Lifetime measurements in the yrast band of the gamma-soft nuclei 131Ce and 133Pr》

> Source coverage: Full paper
> Extraction confidence: High
> Locator mode: page-grounded
> Primary analytical lens: discovery
> Secondary analytical lens: methods
> Context verification: Paper-only
> Card completeness: Complete relative to supplied source

## 01 基本信息

- R. P. Singh 等，2016，*Pramana – Journal of Physics* 87, 7；DOI `10.1007/s12043-016-1218-6`。
- Citation key：`singh_2016_Lifetimemeasurements`。
- 原始 PDF：`raw/papers/2016_Singh et al_Lifetime measurements in the yrast band of the gamma-soft nuclei 131Ce and 133Pr.pdf`；SHA-256 `95E0831B...1A30`。
- 主题：`131Ce/133Pr` yrast 带寿命、`Q_t`、γ-softness 与 TRS。

## 02 一句话总结

论文以 RDDS/DSAM 给出 `131Ce` 负宇称 `νh11/2` yrast 带的 4 个寿命和 3 个限值，发现 `Q_t` 随自旋温和下降；γ-soft/强非轴演化来自与 TRS 的联合解释，而不是寿命的唯一反演。[Paper: PDF pp.5–10, Table 1, Figs. 5, 9–12]

## 03 研究问题

`131Ce/133Pr` 的 γ-soft 核芯在奇粒子存在时如何随转动频率改变集体性？寿命能否约束 `Q_t` 和形变演化？[Paper: PDF pp.1–2]

## 04 研究背景与发展路径

此前 `131Ce` 只有零散寿命和限值。本文把 plunger 与 DSAM 结合，并与早期 Li 2004、Klemme 1999 以及 TRS 对照，以延伸自旋依赖的 `Q_t` 系统学。[Paper: PDF pp.1–2, 5]

## 05 论文识别的核心痛点

| 痛点 | 处理 | 边界 | 证据 |
|---|---|---|---|
| ps 级寿命与 feeding 耦合 | RDDS + DSAM + side-feeding 模型 | 高自旋仍有单侧限值 | [Paper: PDF pp.3–6] |
| 非轴转子的 K mixing | 修正 CG 系数并与 `K=1/2` 比较 | 差异仅数个百分点，但仍为模型约定 | [Paper: PDF pp.5, 8] |
| `Q_t` 不能唯一给 γ | 与 TRS 势能面联合解释 | γ 极小不是直接测量 | [Paper: PDF pp.8–10] |

## 06 核心思想

以寿命提供独立于能谱/branching 的 E2 集体性约束，再把该约束与频率依赖的 TRS 极小比较。可迁移原则是：先保留 `τ/Q_t` 直接层，再单独标注 `β2/γ` 的模型层。

## 07 方法概览

- `119Sn(16O,4n)131Ce`；86 MeV plunger、90 MeV DSAM。
- 12 个 Compton-suppressed HPGe，`50°/98°/144°`。
- `τ → T(E2) → Q_t`，并评估 side feeding 与 K mixing。
- TRS 给出随频率变化的 `(β2,γ)` 候选极小。[Paper: PDF pp.2–5, 8–10]

## 08 核心模块拆解

| 模块 | 输入 | 输出 | 必要性 | 证据 |
|---|---|---|---|---|
| RDDS | target-stopper 距离谱 | 低自旋寿命 | 约束慢寿命 | [Paper: PDF pp.2–4] |
| DSAM | Doppler 线形 | 高自旋寿命/限值 | 延伸自旋范围 | [Paper: PDF pp.3–6] |
| E2 转换 | `Eγ,τ,CG,K` | `Q_t` | 比较集体性 | [Paper: PDF p.5, Eqs. 1–3] |
| TRS | 频率与组态 | `(β2,γ)` 极小 | 解释而非测量 | [Paper: PDF pp.8–10] |

## 09 必要公式与符号

Eq. (1) 为 `T(E2)=1.224×10^12 Eγ^5 |<I2K0|I−2,K>|² Q_t²`；Eγ 用 MeV、`Q_t` 用 eb。Eqs. (2–3) 处理非轴/K-mixed 系数；Eqs. (4–5) 将 `Q_t` 与 `β2/γ` 映射。[Paper: PDF pp.5, 8]

准备包的正则清单还标记了 `Equation 1, Equation 2, Equation 3, Equation 4, Equation 5, Equation 6, Equation 8, Equation 10, Equation 21, Equation 23, Equation 30, Equation 37, Equation 39, Equation 51, Equation 54`。逐页视觉复核确认：前五项对应正文实际编号 Eqs. (1)–(5)；其余是参考文献编号或文本层误报，不作为论文公式。[Paper: PDF pp.5, 8–11]

## 10 实验设计与证据链

| 实验 | 直接结果 | 支持 | 不支持 | 来源 |
|---|---|---|---|---|
| RDDS/DSAM | 4 个寿命、3 个限值 | band-mapped E2 集体性 | γ 刚性唯一值 | [Paper: PDF p.5, Table 1] |
| 自旋系统学 | `Q_t≈3→2.5 eb` | 集体性温和下降 | 独立 shape coexistence | [Paper: PDF p.6, Fig.5] |
| TRS 比较 | 多个频率相关极小 | γ-soft/nonaxial 背景可行 | 直接测得 `γ≈−80°` | [Paper: PDF pp.8–10] |

## 11 结论的正确解释

有限结论是：`131Ce` Band-1-like 负宇称序列具有中等、随自旋略降的 `Q_t`；寿命加强 γ-soft/core-response 的可行性，但不能单独裁决 wobbling、chirality 或静态 shape coexistence。

## 12 作者明确承认的局限

作者讨论 side feeding、K mixing 与高自旋限值，并把具体形变演化建立在 TRS 上；文中没有把寿命宣称为 γ 的无模型测量。[Paper: PDF pp.5–10]

## 13 批判性分析

| `[Analysis]` 观察 | 风险 | 检验 |
|---|---|---|
| Table 1 混列当前与旧值 | 重复计权 | 以原始实验为谱系单位 |
| Singh 重算的 Li `Q_t` 与 Li 原表不同 | 约定差异被误当冲突 | 同时保留 `τ`、公式与两套 `Q_t` |
| TRS 的大负 γ | 模型极小越级成事实 | 将 `τ/Q_t` 与 TRS 分层 |
| Band 1 映射 | 跨文献身份误配 | 联合 spin/parity/Eγ/configuration crosswalk |

## 14 学到的知识

- 寿命是 Alwaleedi branching 分析的正交约束，但不能恢复缺失的 gated intensity。
- 单侧 `τ` 限值必须反向映射为 `Q_t` 限值。
- 同一测量在综述表中的再计算不增加证据独立性。

## 15 与现有知识的联系

该序列与 [[alwaleedi-2013-band-structures-131ce]] Band 1 高度对应；它补充 [[transition-quadrupole-moment]] 与 [[131ce-collective-mode-discrimination]]，并约束 γ-soft core response，而非替代 configuration/crossing 证据。

## 16 研究构想

以下每项均显式记录 Innovation status、Validation 与 Possible failure。

1. **Band 1 `Q_t` crossing test**：状态 `partially checked`；验证为把 lifetime 点映射到 thesis crossing frequency 并检验 crossing 前后斜率；失败模式是限值和系统误差使统计力不足。
2. **模型独立性测试**：状态 `partially checked`；验证为比较 axial `K=1/2` 与 K-mixed 提取；失败模式是论文未给出完整逐态 K-mixing 系数。
3. **最小裁决 observable**：状态 `unverified`；验证为检查新增 mixing ratio、polarization 和带间 E2 是否改变排序；失败模式是 band identity 或公开数据仍不完整。
