---
type: concept
title: sigma/I 归一化宽度
aliases: [sigma over I, sigma/I, sigma-over-I, sigma over spin, alignment width over spin]
created: 2026-07-08
updated: 2026-07-10
status: ai-draft
review_status: human-reviewed
concept_type: angular-distribution-analysis-parameter
confidence: low
high_confirmed_by:
high_confirmed_date:
tags: [alignment, angular-distribution, mixing-ratio, pado-support]
---

# sigma/I 归一化宽度 (Sigma over I)

## Definition

`sigma` denotes the Gaussian standard deviation of a magnetic-substate population `Pm(I)` when that population is parameterized by a Gaussian form. `sigma/I` is that width divided by the spin `I` of the level being analyzed.

在本项目语境中，`sigma/I` 是为了把 population width 按自旋尺度归一化的工作量。文献里之所以常出现 `sigma/I ~ 0.3` 一类经验值，一个重要原因是 raw `sigma` 往往随 `I` 近似线性变化，而归一化后的 `sigma/I` 在某些数据条件下更接近常数；但这种“更接近常数”是条件性的实践观察，不是普适定律。

## Source-Level Boundary

[[draper-1970-gaussian-substate-side-feeding]] 使用的是 Gaussian side-feeding width `sigma`，不是显式的 `sigma/I`。

[[zobel-1980-magnetic-substate-distributions]] 与 [[zobel-1983-energy-projectile-alignment]] 主要讨论 alignment attenuation coefficients，而不是直接给出 Gaussian `sigma/I`。

[[lauritsen-2025-gamma-angular-formalism-tracking-arrays]] 是当前最接近本项目记号的 formalism source：它用 Gaussian `Pm(J)` 并以 `sigma/J` 描述归一化宽度。因此，`sigma/I` 与 `sigma/J` 在项目层面是 related descriptions，但不能在未做 code / convention mapping 前机械当作同一量。

[[summary-2013-bases-spin-parity-assignments]] 记录了 high-spin angular-distribution / DCO guide language 中常见的典型 `sigma/I = 0.3`，但这是 guide-level heuristic，不是 universal prior。

[[kramer-flecken-1989-use-dco-ratios]] 进一步给出一个直接边界：近似常数的 `sigma/I` 经验规律只在较宽自旋区间内成立，低自旋 `I < 6` 区域会偏离这一经验关系。因此，低自旋工作不应无条件沿用高自旋 DCO / angular-correlation 语境中的固定 `sigma/I` 直觉。

[[gray-2020-hyperfine-fields-g-factor-measurements]] 给出边界例子：经验性的 `sigma/I` expectation 在特定 TDPAD / host-specific context 中可能失效。

## User-Analysis Note (Not a Source Claim)

以下内容来自当前项目用户自己的 `P(m)` 评估与代码语境，不应误写成上述文献直接结论：

- 对当前 aligned-state convention，`P(-m) = P(m)`；若为 oriented state，则 `P(-m) != P(m)`。
- 用户当前把 `P(m) < 1E-12` 视为数值上等于 0。
- 在这个实现与阈值下，半整数自旋时 `sigma ~ 0.19` 可近似视为 full alignment。
- 在这个实现与阈值下，整数自旋时 `sigma ~ 0.13` 可近似视为 full alignment。

这些 full-alignment threshold 是 user-analysis-specific calibration notes，不是 source-backed universal numbers。

## Project Use

[[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]] 使用本页作为 notation boundary anchor：

- 可以写“alignment-width assumptions are model dependent”；
- 可以讨论 `sigma/I` 是否需要显式 uncertainty treatment；
- 不可以在未映射用户代码 convention 前，把 Draper `sigma`、Lauritsen `sigma/J` 与项目里的 `sigma/I` 直接写成 one-to-one equality。

## Necessary Assumptions

- 必须先确认具体分析或代码里 `sigma/I` 的定义。
- 必须确认是 aligned-state 还是 oriented-state population convention。
- 必须确认是否采用 Gaussian `Pm(I)`，以及归一化是除以 `I` 还是 `J`。

## Discriminating Observables

- pure-E2 angular-distribution coefficients
- mixed-transition angular distributions and fitted `delta`
- linear polarization / DCO / conversion 信息
- calibration transitions with known multipolarity or known population behavior

## Supporting Evidence

[[draper-1970-gaussian-substate-side-feeding]] 支持 Gaussian width sensitivity。

[[lauritsen-2025-gamma-angular-formalism-tracking-arrays]] 给出 `Pm(J)` 与 `sigma/J` 的现代 formalism bridge。

[[chiara-2012-cu65-cu67-core-coupled-protons]], [[summary-2013-bases-spin-parity-assignments]], 和 [[gray-2020-hyperfine-fields-g-factor-measurements]] 共同说明 practice-level `sigma/I` language 的存在、用途和边界。

## What This Page Does Not Claim

- 不主张 `sigma/I = 0.3` 是所有 reaction / spin region 的通用默认值。
- 不主张 low-spin 区域一定服从某个统一的 `sigma/I` variation law。
- 不主张 `sigma/J`、`sigma/I` 与 attenuation coefficients 可以直接互换。

## Counter-evidence and Competing Interpretations

- Ekstrom 1979 与 Ionescu 1981 都说明单一 population model 可能失效。
- Gray 2020 说明经验性的 alignment-width expectation 可能在特定 context 下失败。
- 因此，即使 `sigma/I` 在某些高自旋或经验语境中看起来近似稳定，也不能把这种稳定性直接推广到所有数据集。

## Our Current Position

本页把 `sigma/I` 视为项目中的待映射 normalized-width working term。当前最稳妥的用法，是把它写成与 magnetic-substate population assumptions 相关的 model parameter，而不是 source-independent universal constant。

## Sources

- [[draper-1970-gaussian-substate-side-feeding]]
- [[zobel-1980-magnetic-substate-distributions]]
- [[zobel-1983-energy-projectile-alignment]]
- [[lauritsen-2025-gamma-angular-formalism-tracking-arrays]]
- [[chiara-2012-cu65-cu67-core-coupled-protons]]
- [[summary-2013-bases-spin-parity-assignments]]
- [[kramer-flecken-1989-use-dco-ratios]]
- [[gray-2020-hyperfine-fields-g-factor-measurements]]
