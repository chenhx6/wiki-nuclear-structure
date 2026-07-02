---
type: observable
title: 旋称劈裂
aliases: [signature splitting, signature staggering, S(I)]
created: 2026-07-01
updated: 2026-07-02
status: active
review_status: unreviewed
observable_kind: band-energy-staggering
symbol: S(I)
units: keV-or-normalized
tags: [signature, odd-a, triaxiality]
---

# 旋称劈裂（Signature Splitting）

## Definition

同一转动组态的 α=±1/2 两支旋称伙伴带之间随自旋交替的能量劈裂。

[[de-voigt-dudek-szymanski-1983-high-spin-phenomena]] 的 pp.955-956 与 Fig.3 提供 signature 分类和奇 A splitting 的历史性综述示例；本页不把该二手示例作为 A≈130 的原始实验依据。

## Formula and Conventions

不同论文可采用能量差、去除平均转子后的差值或归一化 staggering；引用数值时必须同时记录原文公式和单位。[[ding-2021-131ba-133ce-signature-splitting]] 使用：

`S(I)=E(I)-E(I-1)-1/2[E(I+1)-E(I)+E(I-1)-E(I-2)]`。

## How It Is Obtained

由两支带的对应自旋能级计算，并结合 Routhian 或去平均转子能量展示。

## Diagnostic Use

可检验 [[signature-partner-bands]] 关系，也对三轴 γ 参数敏感。

## Model Dependence

劈裂同时受 K、组态、Coriolis 耦合、γ 形变、近邻低-j 轨道和配对影响。详见 [[signature-splitting-mechanisms]]。

## Failure Modes and Ambiguities

较大 S(I) 可支持 γ deformation，但不能单独证明 [[wobbling-motion]] 或 γ-rigid。

## Examples

[[chakraborty-2023-131xe-wobbling-origin]] 报告 `131Xe` νh11/2 伙伴带具有较大 S(I)，TPRM/TPSM 可再现其趋势。

[[ding-2021-131ba-133ce-signature-splitting]] 报告 N=75 `131Ba`、`133Ce` 的中子 g7/2 带劈裂约为奇 Z Ta/Re 质子类比的十倍，并用 γ 扫描和 Coriolis attenuation 分离机制。

## Sources

- [[chakraborty-2023-131xe-wobbling-origin]]
- [[frauendorf-2024-wobbling-review]]
- [[ding-2021-131ba-133ce-signature-splitting]]
- [[de-voigt-dudek-szymanski-1983-high-spin-phenomena]]

## Evolution Log

- 2026-07-01：建立三轴性与 wobbling 判别边界。
- 2026-07-01：加入原文 S(I) 定义及“非轴性 + 低-j mixing”的多机制约束。
- 2026-07-02：加入 1983 review 的 signature 历史背景，并明确二手证据边界。
