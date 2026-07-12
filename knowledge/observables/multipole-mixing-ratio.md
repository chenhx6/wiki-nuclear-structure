---
type: observable
title: 多极混合比
aliases: [multipole mixing ratio, E2/M1 mixing ratio, mixing ratio, δ]
created: 2026-07-01
updated: 2026-07-12
status: active
review_status: unreviewed
observable_kind: electromagnetic-transition-observable
symbol: δ
units: dimensionless
tags: [gamma-transition, multipolarity, wobbling]
---

# 多极混合比（Multipole Mixing Ratio）

## Definition

混合多极跃迁中两种辐射振幅之比；本库当前主要关注 ΔI=1 跃迁的 E2/M1 mixing ratio。

## Formula and Conventions

δ 的符号与相位约定必须沿用原文；只比较绝对值时也要说明。

## How It Is Obtained

可由角分布、角关联/DCO、线偏振和内转换系数与理论响应比较得到。

## Diagnostic Use

较大的集体 E2 成分可支持 wobbling-band 间跃迁；接近纯 M1 更符合普通 signature partner。

## Model Dependence

DCO 几何、alignment 参数、角分布系数和探测器响应进入提取过程。理论 mixing ratio 还依赖 E2/M1 transition operators、effective charges、`g` factors 和模型波函数；模型给出的 `δ` 不能写成实验提取值。

## Failure Modes and Ambiguities

弱跃迁、有限角度覆盖和系统误差可能产生多解或大不确定度。

angular-distribution `χ²(δ)` 可能同时存在大 `abs(δ)` 与小 `abs(δ)` 两个局部解。只比较大解与 pure-M1 曲线，或只依据 polarization 符号而不使用其幅度与不确定度，不能证明已唯一选出 E2-dominated branch。

ICC-based `delta` extraction 也可能带来明显非对称误差；当 experimental conversion coefficient 相对误差较大时，简单反演混合 ICC 公式可能低估 `delta` 的中心值或区间。

## Examples

`131Xe` 的 671、882、1055 keV 连接跃迁 δ 很小，构成反对 wobbling 指认的重要证据。

[[matta-2015-transverse-wobbling-135pr]] 的 Table I 报告 `135Pr` 747.0、812.8、754.6 keV side-to-yrast transitions 分别有 `δ=-1.24(13)`、`-1.54(9)`、`-2.38(37)`；这些值是其 wobbling 支持链的关键待审数据。

[[sensharma-2019-two-phonon-wobbling-135pr]] 的 Fig.2 报告 450.2、550.5、517.1 keV second-side-to-side-band transitions 的 `δ` 分别为约 `-1.91`、`-2.26`、`-3.48`。它们支持较大 E2 成分，但 phonon-order 解释仍依赖 band assignment。

[[lv-2022-evidence-against-wobbling-135pr]] 强调 angular distribution 可产生大/小 `abs(δ)` 双解，并由联合 polarization/`R_ac` 得到 747.3、813.2、450.2 keV 的小 `abs(δ)` 解。

[[sensharma-2020-longitudinal-wobbling-187au]] 报告四条 LW→yrast links 的 `δ` 约为 `-2.67` 至 `-3.72`，而两条 SP→yrast links 为 `-0.06(1)`、`-0.10(1)`；本文未报告 connecting-transition polarization。

[[guo-2022-low-spin-wobbling-187au]] 用独立数据联合 `R_ac` 与 linear polarization，对同一 376/462 keV links 得到约 `δ=-0.26/-0.28` 的小 `abs(δ)` branch，并指出该解与早期 internal-conversion data 更一致。两篇结果构成直接实验冲突，不能把任一 branch 当作无争议事实。

[[rusev-2009-multipole-mixing-ratios-11b]] 明确展示，同一个 measured polarization-related asymmetry 也可能对应两支 `delta` 解；作者对 `11B` 选择较小 `|δ|` branch，是基于大 `|δ|` branch 会给出异常大 `E2` admixture 的物理判断。

[[rezynkina-2017-graphical-extraction-multipole-mixing-ratios]] 与 [[kibedi-2008-evaluation-theoretical-conversion-coefficients-bricc]] 共同说明：ICC-based `delta` extraction 需要把 theoretical ICC、transition-energy 与 `delta` 本身的不确定度一起传播。

[[nomura-2022-questioning-wobbling-ibfm]] 用 IBFM transition operators 计算 `135Pr/133La/127Xe/105Pd` 的 `δ(E2/M1)`。多数被比较 links 的计算值偏向小 `abs(δ)`/M1 dominance，但 `127Xe` 低自旋存在由近零 M1 matrix element 导致的异常大 `abs(δ)`；该模型比较挑战 wobbling assignments，却不替代原始 angular-distribution/polarization analysis。

## Sources

- [[chakraborty-2023-131xe-wobbling-origin]]
- [[frauendorf-2024-wobbling-review]]
- [[matta-2015-transverse-wobbling-135pr]]
- [[sensharma-2019-two-phonon-wobbling-135pr]]
- [[lv-2022-evidence-against-wobbling-135pr]]
- [[sensharma-2020-longitudinal-wobbling-187au]]
- [[guo-2022-low-spin-wobbling-187au]]
- [[nomura-2022-questioning-wobbling-ibfm]]
- [[rezynkina-2017-graphical-extraction-multipole-mixing-ratios]]
- [[kibedi-2008-evaluation-theoretical-conversion-coefficients-bricc]]
- [[rusev-2009-multipole-mixing-ratios-11b]]

## Evolution Log

- 2026-07-01：由 `131Xe` 判别问题建立。
- 2026-07-03：加入 Matta 2015 的 `135Pr` 大 mixing-ratio 支持案例。
- 2026-07-03：加入 Sensharma 2019 的 TW2→TW1 mixing-ratio 支持案例。
- 2026-07-03：加入 Lv 2022 的双解问题与联合 polarization/`R_ac` counter-evidence。
- 2026-07-03：加入 Sensharma 2020 的 `187Au` LW/SP angular-distribution 对照。
- 2026-07-04：加入 Guo 2022 的 `R_ac-P` 小 `abs(δ)` branch 与同一 links 的直接冲突。
- 2026-07-05：加入 Nomura 2022 的 IBFM `δ` 预测、实验值比较及 `127Xe` 异常分母边界。
- 2026-07-12：加入 Rusev 2009 的 asymmetry 双解，以及 Rezynkina 2017 / Kibedi 2008 的 ICC-based `δ` 不确定度边界。
