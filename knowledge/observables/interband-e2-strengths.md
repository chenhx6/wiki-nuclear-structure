---
type: observable
title: 带间集体 E2 强度
aliases: [interband E2 strength, B(E2)out, B(E2)out/B(E2)in]
created: 2026-07-01
updated: 2026-07-04
status: active
review_status: unreviewed
observable_kind: reduced-electric-quadrupole-strength
symbol: B(E2)out/B(E2)in
units: dimensionless-or-source-dependent
tags: [wobbling, electric-quadrupole]
---

# 带间集体 E2 强度（Interband E2 Strength）

## Definition

候选伙伴带之间的 E2 跃迁强度，常与基带内 E2 归一化为 `B(E2)_out/B(E2)_in`。

## Formula and Conventions

必须记录所比较的具体跃迁、自旋和多极混合处理。

## How It Is Obtained

由 mixing ratio、分支比、能量和寿命信息推导；弱跃迁时系统误差关键。

## Diagnostic Use

相邻 wobbling quanta 带之间 collectively enhanced E2 是 [[frauendorf-2024-wobbling-review]] 强调的核心实验判据。

## Model Dependence

QTR/PTR 与 TPSM 对其绝对大小可能有系统差异。

## Failure Modes and Ambiguities

只有 δ 而缺寿命时，通常得到相对 E2 成分，不一定得到绝对集体强度。

## Examples

`131Xe` 新序列的连接跃迁 E2 成分很小，因此不支持 wobbling。

[[matta-2015-transverse-wobbling-135pr]] 的 Table I 给出 `135Pr` side-to-yrast transitions 的 E2 fractions 与相对 `B(E2_out)/B(E2_in)`；作者将其作为 wobbling 支持证据。没有独立寿命时，这些是 mixed-transition 分解后的相对量，不等同于绝对 `B(E2)`。

[[sensharma-2019-two-phonon-wobbling-135pr]] 的 Fig.3 比较 TW2→TW1、TW1→yrast、TW2→yrast 与 signature-partner→yrast 的相对 `B(E2)_out/B(E2)_in`。论文明确说明未测得绝对跃迁概率；这些比值由强度和 angular-distribution mixing ratios 提取。

[[lv-2022-evidence-against-wobbling-135pr]] 报告 `B(E2;747)/B(E2;526)=0.7(+0.7/-0.5)`；作者认为两条强度相近，不符合 wobbling-to-yrast 应显著强于到 signature-partner 的预期。

[[sensharma-2020-longitudinal-wobbling-187au]] 的 LW→yrast `B(E2)_out/B(E2)_in` 最大约 0.7，并显著高于 SP→yrast；PRM 较好再现 E2 ratios，但 M1 ratios 存在系统偏差。

[[guo-2022-low-spin-wobbling-187au]] 由其小 mixing ratios 与外部文献的 `B(E2)_in=100-200 W.u.` 估计 `B(E2)_out` 仅数 W.u.，作者据此反对 Band 2 的 collective excitation。该量是派生估计，不是本文 lifetime/absolute-`B(E2)` measurement。

[[lv-2021-tilted-precession-135nd]] 对 TiP1→D1 报告 `B(E2)out/B(E2)in` ratios，并与 QTR 比较；618.3/566.0 keV links 的实验值为 0.11(4)/0.12(7)。注意 566.0 keV ratio row 与 Table II 中另一个 566.8 keV、`δ=-0.48(14)` 的 connecting transition 不是同一行。这些值由 branching/mixing-ratio information 得到，不等于完整 independent lifetime/absolute-`B(E2)` measurement。

## Sources

- [[chakraborty-2023-131xe-wobbling-origin]]
- [[frauendorf-2024-wobbling-review]]
- [[matta-2015-transverse-wobbling-135pr]]
- [[sensharma-2019-two-phonon-wobbling-135pr]]
- [[lv-2022-evidence-against-wobbling-135pr]]
- [[sensharma-2020-longitudinal-wobbling-187au]]
- [[guo-2022-low-spin-wobbling-187au]]
- [[lv-2021-tilted-precession-135nd]]

## Evolution Log

- 2026-07-01：建立 wobbling 的关键电磁判据。
- 2026-07-03：加入 Matta 2015 Table I 的相对 E2 支持链及绝对强度边界。
- 2026-07-03：加入 Sensharma 2019 的 TW2 相对 E2 ratios 及无绝对寿命的边界。
- 2026-07-03：加入 Lv 2022 的 747/526 E2-strength counter-test。
- 2026-07-03：加入 Sensharma 2020 的 `187Au` LW/SP relative-E2 对照。
- 2026-07-04：加入 Guo 2022 的数 W.u. `B(E2)_out` 估计及其外部输入边界。
- 2026-07-04：加入 Lv 2021 `135Nd` TiP1→D1 relative-E2 ratios 与非绝对寿命边界。
