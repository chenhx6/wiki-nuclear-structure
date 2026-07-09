---
type: model
title: 复合核反应模型
aliases: [compound nucleus reaction model, CNR model, CNR, MANDY alignment estimate]
created: 2026-07-09
updated: 2026-07-09
status: ai-draft
review_status: unreviewed
model_family: reaction-population-model
degrees_of_freedom: [transmission-probability normalization, optical-model parameter choice, feeding assumption]
parameters: [V, r0, Wd, rD, aD, Vso, energy above threshold]
confidence: low
high_confirmed_by:
high_confirmed_date:
tags: [alignment, reaction-model, compound-nucleus, pado-support]
---

# 复合核反应模型 (Compound Nucleus Reaction Model)

## Role in This Wiki

在当前 `sigma-over-i` project 里，这一页只记录与 alignment prediction 直接相关的最小边界，不展开一般核反应理论综述。

## Source-Level Meaning

[[ekstrom-1979-spin-alignment-attenuation-a61-a67]] 使用 statistical compound nucleus reaction (CNR) theory，经由 MANDY 程序从 transmission probabilities 计算 magnetic-substate population parameters，再转成 alignment coefficients。该文的重点不是证明模型绝对正确，而是比较模型预测与实验 attenuation factors 的偏差、参数敏感性和可接受的 uncertainty budget。

## Practical Boundary

- CNR / MANDY alignment estimate 是 model-based alignment prediction。
- 它不是用户代码里对 `sigma/I` 做 marginalization 的同义物。
- 若忽略高于阈值较远 levels 的 gamma feeding，direct-population 风格的 CNR alignment estimate 可能偏低。
- 使用这类模型预测时，Ekstrom 1979 主张必须显式给出 uncertainty，而不是把预测值当作近似已知常数。

## Purpose

本页只记录 CNR / MANDY 在 alignment prediction 语境下的最小用途：作为从 reaction transmission probabilities 出发估计 magnetic-substate population 与 alignment 的模型来源。

## Assumptions

- 反应可在 compound-nucleus statistical framework 中近似处理。
- 选定的 optical-model parameters 足以生成有意义的 transmission probabilities。
- 目标能级的 population 可主要由所建模的 reaction path 表征，而未建模 gamma feeding 不至于主导结果。

## Predicted Observables

- magnetic-substate population parameters
- alignment coefficients
- 经由与实验 `A2/A4` 或 `alpha2/alpha4` 对比得到的 alignment consistency

## Known Limitations

- 对 optical-model parameters 的某些选择较敏感，Ekstrom 1979 的示例中尤其是 `r0` 和 `V`。
- 若 levels 高于阈值较远且 gamma feeding 显著，direct-population 风格的 CNR estimate 可能偏低。
- 它不是用户代码中 `sigma/I` 的直接替代量，也不自动给出 universal prior。

## Sources

- [[ekstrom-1979-spin-alignment-attenuation-a61-a67]]
