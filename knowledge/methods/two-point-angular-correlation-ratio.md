---
type: method
title: 两点角关联比
aliases: [two-point angular-correlation ratio, angular-correlation ratio, Rac, R_ac]
created: 2026-07-01
updated: 2026-07-04
status: active
review_status: unreviewed
method_type: gamma-ray-angular-correlation
tags: [multipolarity, gamma-spectroscopy, angular-correlation]
---

# 两点角关联比（`R_ac`）

## Purpose

将前后角探测器与约 90° 探测器的符合强度归一化比较，用有限角度统计区分 stretched dipole 和 quadrupole 特征。

## Inputs and Assumptions

探测器角度分组、效率校正、同一 gating 条件、已知跃迁标定以及足够的核取向。

## Procedure

建立 `Eγ(forward/backward)-Eγ(any)` 与 `Eγ(~90°)-Eγ(any)` 非对称矩阵，在相同 gate 下取目标峰强度比并用已知多极性跃迁标定。

## What It Can Establish

在特定阵列中支持主要 dipole 或 quadrupole 性质，并据连接关系约束新能级的相对自旋宇称。

## What It Cannot Establish Alone

不能在弱统计下唯一确定 mixing ratio，也不能由多极性本身证明 wobbling、手征几何或某一组态。

## Conventions and Systematics

经验数值高度依赖几何：

- JUROGAM II `137Nd`：dipole≈0.8，quadrupole≈1.4；
- GALILEO `131Ba`：dipole≈0.77，quadrupole≈1.54；
- AFRODITE `133Ce`：dipole≈0.74，quadrupole≈1.27；
- Gammasphere `133Ce`：文中采用 quadrupole>1.0、dipole<0.8 的经验区分。

这些阈值不得跨实验机械复用。

## Examples

- [[petrache-2020-137nd-multiple-chiral-bands]] 用 `R_ac` 约束新 D3、D6 的连接跃迁；
- [[ding-2021-131ba-133ce-signature-splitting]] 在两套不同阵列中分别标定 band 2 跃迁。
- [[guo-2022-low-spin-wobbling-187au]] 以 `154°/90°` gated intensities 构造 `R_ac`，并与 clover linear polarization 联合选择 376/462 keV links 的 mixing-ratio branch。

## Sources

- [[ayangeakaa-2016-133ce-in-beam]]
- [[petrache-2020-137nd-multiple-chiral-bands]]
- [[ding-2021-131ba-133ce-signature-splitting]]
- [[guo-2022-low-spin-wobbling-187au]]

## Evolution Log

- 2026-07-01（3 sources）：从 DCO 页面中分离出不依赖 gate 多极性的 `R_ac` 方法。
- 2026-07-04：加入 HIRFL `154°/90°` 几何和与 polarization 联合选解的案例。
