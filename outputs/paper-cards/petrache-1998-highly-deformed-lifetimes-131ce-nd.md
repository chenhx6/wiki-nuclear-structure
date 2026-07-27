# Paper Card：Petrache 1998《Lifetime measurements of highly deformed bands in 134,135Nd and 131Ce》

> Source coverage: Full paper
> Extraction confidence: High
> Locator mode: page-grounded
> Primary analytical lens: discovery
> Secondary analytical lens: methods
> Context verification: Paper-only
> Card completeness: Complete relative to supplied source

## 01 基本信息

- C. M. Petrache 等，1998，*Physical Review C* 57, R10–R14；DOI `10.1103/PhysRevC.57.R10`。
- Citation key：`petrache_1998_Lifetimemeasurements`。
- PDF：`raw/papers/1998_Petrache et al_Lifetime measurements of highly deformed bands in 1 3 4 , 1 3 5 Nd and 131 Ce.pdf`；SHA-256 `9D2297ED...90E5F`。

## 02 一句话总结

论文测得 `131Ce` 独立高度形变 yrast 带 `Q0=7.3(4) eb`，支持强形变及随转动收缩；它证明同核存在高形变结构，但不把 thesis normal-deformed Bands 1–7 直接升级为 shape-coexistence partners。[Paper: PDF pp.3–5, Table I]

## 03 研究问题

A≈130 高度形变带的绝对四极矩有多大，是否与 CHFB 的形变及自旋收缩预测一致？[Paper: PDF p.1]

## 04 研究背景与发展路径

作者针对该区较大的形变、i13/2 intruder 与既有相互不一致的矩测量，统一分析 `134,135Nd` 与 `131Ce` HD bands。[Paper: PDF pp.1–2]

## 05 论文识别的核心痛点

| 痛点 | 处理 | 边界 |
|---|---|---|
| DSAM feeding | side-feeding cascade 拟合 | 时标/矩假设相关 |
| 停止本领 | 多材料 recoil history | 系统误差影响 Q0 |
| 形变映射 | 轴对称 `Q0→β2` | 三轴性未纳入 |

## 06 核心思想

用绝对 `Q0` 对 CHFB 的高形变势阱和 rotation-induced shrinking 作定量检查，而不是从能级间距间接推断形变。

## 07 方法概览

132 MeV `110Pd(28Si,xn yα)`，GASP+ISIS；`131Ce` 由 `α3n` 道布居；DSAM 线形与 side feeding 联合拟合；CHFB 给出自旋相关 `Q0`。[Paper: PDF pp.1–3]

## 08 核心模块拆解

| 模块 | 输出 | 必要性 | 证据 |
|---|---|---|---|
| 粒子-γ 选择 | 分离反应道 | 识别 `131Ce` HD band | [Paper: PDF pp.1–2] |
| DSAM | `Q0,Qsf` | 绝对集体性 | [Paper: PDF pp.2–3] |
| CHFB | 自旋相关 `Q0` | 检验形变收缩 | [Paper: PDF pp.3–5] |

## 09 必要公式与符号

`Q0` 为 intrinsic quadrupole moment；`Qsf` 为 side-feeding cascade 使用的矩；`β2` 由轴对称四极矩关系得到，因此不是无模型 observable。[Paper: PDF p.3, Table I]

准备包还标记 `Equation 2`，逐页视觉复核确认它来自文本层/参考编号识别而非正文独立编号公式；本卡不据此建立额外物理关系。[Paper: PDF pp.1–5]

## 10 实验设计与证据链

| 证据 | 结果 | 支持 | 不支持 |
|---|---|---|---|
| `131Ce` DSAM | `Q0=7.3(4) eb` | 高度形变集体性 | 与 ND Band 1 同一身份 |
| 轴对称映射 | `β2=0.38(2)` | 大形变尺度 | γ 形状唯一性 |
| CHFB | `7.5→6.7 eb` | rotation-induced shrinking 可行 | intruder 数的简单规律 |

## 11 结论的正确解释

`131Ce` 确有大 `Q0` 的 HD 序列；该事实提高同核多种形变极小的可行性，但需要 linking transitions 或共同 band identity 才能把它与 thesis Bands 1–7 建立 shape-coexistence 关系。

## 12 作者明确承认的局限

DSAM 依赖 side feeding 与 stopping powers；`β2` 假设轴对称；理论随自旋趋势来自 CHFB。[Paper: PDF pp.2–5]

## 13 批判性分析

| `[Analysis]` 观察 | 风险 | 处理 |
|---|---|---|
| “yrast” 标签跨论文复用 | 错合并 Band 1 与 HD band | 强制独立 crosswalk 行 |
| `Q0` 与 ND `Q_t` 比较 | 不同几何约定被当同量 | 只作尺度分层比较 |
| 同核两种矩尺度 | 越级成已证实 coexistence | 仅记为多极小候选证据 |

## 14 学到的知识

- HD `Q0` 约为 normal-deformed `Q_t` 的数倍，但二者不能未经几何校正直接相除作物理结论。
- 高形变与具体低自旋集体模式是不同层次的问题。
- side feeding 必须进入 manifest 和不确定度边界。

## 15 与现有知识的联系

本工作为 [[131ce]] 提供独立的高度形变尺度；与 [[singh-2016-lifetime-131ce-133pr]] 的 normal-deformed yrast 序列只做分层比较，并服务 [[131ce-collective-mode-discrimination]] 中 shape-coexistence 候选的边界审计。

## 16 研究构想

以下每项均显式记录 Innovation status、Validation 与 Possible failure。

1. **跨形变区矩尺度审计**：状态 `partially checked`；验证为统一单位但保留 `Q0/Q_t` 几何差异；失败模式是 K/三轴约定不兼容。
2. **coexistence linking test**：状态 `blocked-needs-source`；验证为寻找 HD–ND links、共同势能面或 decay-out；失败模式是当前公开数据没有连接跃迁。
