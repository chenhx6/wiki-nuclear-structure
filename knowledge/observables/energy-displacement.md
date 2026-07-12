---
type: observable
title: Opposite-parity energy displacement
aliases: [energy displacement delta E, octupole energy displacement]
created: 2026-07-13
updated: 2026-07-13
status: active
review_status: unreviewed
observable_kind: alternating-parity-energy-systematics
symbol: delta E(I)
units: energy
tags: [octupole-correlation, alternating-parity]
---

# 相反宇称能量位移（Opposite-Parity Energy Displacement）

## Definition

衡量某一宇称态相对相邻相反宇称序列插值能量的偏离。

## Formula and Conventions

Liu 2016 使用 `delta E(I)=E(I)-[(I+1)E(I-1)+I E(I+1)]/(2I+1)`。

## How It Is Obtained

由已连接并完成 spin/parity assignment 的正、负宇称能级能量计算。

## Diagnostic Use

stable octupole deformation 的 alternating-parity limit 中预期接近零；有限值可用于比较 octupole correlations。

## Model Dependence

依赖能级归属、configuration correspondence 和 band mixing。

## Failure Modes and Ambiguities

单独接近零不构成稳定八极形变证明；跨核比较还受转动尺度影响。

## Examples

`78Br` 与 octupole-correlated `125Ba` 可比，明显偏离 stable-octupole `224Th`。

## Sources

- [[liu-2016-octupole-correlations-multiple-chiral-doublet-bands-78br]]

## Evolution Log

- 2026-07-13：建立公式与 `78Br`/`125Ba`/`224Th` 比较边界。
