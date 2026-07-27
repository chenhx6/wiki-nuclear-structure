# Paper Card：Li 2004《Lifetimes of Excited Levels in 131Ce》

> Source coverage: Full paper
> Extraction confidence: Mixed
> Locator mode: page-grounded
> Primary analytical lens: discovery
> Secondary analytical lens: methods
> Context verification: Paper-only
> Card completeness: Complete relative to supplied source
> Preparation note: PDF 文本层损坏；3 页均以渲染图视觉复核。

## 01 基本信息

- Li Guang-Sheng 等，2004，*Chinese Physics Letters* 21, 461–463；DOI 未在论文/BibTeX 中确认。
- Citation key：`guang-sheng_2004_LifetimesExcited`。
- PDF：`raw/papers/2004_Lifetimes of Excited Levels in 131Ce.pdf`；SHA-256 `100A06FC...DCC5`。

## 02 一句话总结

论文用 DSAM 得到 `131Ce` 正、负宇称序列的寿命与 `Q_t`，报告正宇称带平均矩较大；这一差异支持组态依赖的芯响应，但不足以单独证明形状共存。[Paper: PDF p.3, Table 1]

## 03 研究问题

`131Ce` 正、负宇称 yrast 带的集体性是否不同，单中子轨道的形状驱动效应能否解释该差异？[Paper: PDF pp.1,3]

## 04 研究背景与发展路径

工作建立在 `131Ce` 已知正负宇称级联上，以寿命补充只靠能谱和组态的解释，并与邻核 `130Ce` 比较。[Paper: PDF pp.1,3]

## 05 论文识别的核心痛点

| 痛点 | 论文处理 | 边界 |
|---|---|---|
| 快寿命与 feeding | DSAM 线形 | side feeding/阻止本领依赖 |
| 两序列集体性比较 | 同一实验提取 `Q_t` | 平均值误差较大 |
| 形状解释 | Nilsson 轨道 driving tendency | 不是直接形变测量 |

## 06 核心思想

以正负宇称带的 `Q_t` 系统学检验不同中子轨道对芯集体性的影响，同时把实验 `Q_t` 与轨道形状驱动解释分层。

## 07 方法概览

95 MeV `116Sn(19F,p3n)131Ce`；Pb backing；11 个 BGO-suppressed HPGe；通过 DSAM 拟合 Doppler 线形并转为 `B(E2)/Q_t`。[Paper: PDF pp.1–2]

## 08 核心模块拆解

| 模块 | 输出 | 必要性 | 证据 |
|---|---|---|---|
| 部分纲图 | 正负宇称级联 | 定义 band identity | [Paper: PDF p.2, Fig.1] |
| DSAM | 寿命/限值 | 提供独立 E2 约束 | [Paper: PDF pp.2–3] |
| 转子换算 | `B(E2),Q_t` | 比较集体性 | [Paper: PDF p.3, Table 1] |

## 09 必要公式与符号

论文用 E2 转子关系由 `τ/Eγ` 提取 `B(E2)` 与 `Q_t`；`Q_t` 的几何系数、branching、内转换与 side feeding 假设必须随数值保留。[Paper: PDF p.3]

## 10 实验设计与证据链

| 证据 | 结果 | 支持 | 不支持 |
|---|---|---|---|
| 负宇称表 | 平均 `Q_t=3.09(61) eb` | 中等集体性 | 唯一 γ 形状 |
| 正宇称表 | 平均 `Q_t=4.56(145) eb` | 可能更强集体性 | 静态 shape coexistence |
| 轨道解释 | `h11/2` vs `g7/2` driving | configuration-dependent core response | 直接测得势能面 |

## 11 结论的正确解释

实验支持两条序列的 E2 集体性可能不同；由于误差、限值和转子假设，形状共存仍只是候选解释之一。

## 12 作者明确承认的局限

部分能级仅给寿命上下限；结论建立在 DSAM、转子关系和轨道 driving 倾向上。[Paper: PDF pp.2–3]

## 13 批判性分析

| `[Analysis]` 观察 | 风险 | 处理 |
|---|---|---|
| PDF 文本层损坏 | OCR/转录错 | 所有 3 页视觉复核；正式引用再查 p.3 |
| 2016 重列本文值 | 重复计权 | 本文为原始谱系，2016 行仅 cross-check |
| 正负平均矩差异 | 被越级为两种稳定形状 | 保留为 configuration-dependent response |

## 14 学到的知识

- `131Ce` 的寿命证据早于 2016，且覆盖正、负宇称序列。
- 跨论文 `Q_t` 比较必须先统一 CG/K/branching 约定。
- 序列身份应靠 spin/parity/Eγ 联合映射。

## 15 与现有知识的联系

负宇称 510–642–750–827–892 keV 级联与 thesis Band 1/2016 yrast 带高度一致；正宇称序列为 shape-driving 比较提供额外证据，但不与 Band 1 合并。

## 16 研究构想

以下每项均显式记录 Innovation status、Validation 与 Possible failure。

1. **同一寿命、不同换算约定审计**：状态 `partially checked`；验证为用统一公式复算 Li 与 Singh 表中的 `Q_t` 差异；失败模式是原文没有完整公布 branching/IC 输入。
2. **正负宇称对照**：状态 `unverified`；验证为在同一误差模型下比较两序列；失败模式是点数、限值和系统误差不足。
