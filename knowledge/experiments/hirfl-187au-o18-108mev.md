---
type: experiment
title: "HIRFL 187Au 108 MeV 18O angular-correlation and polarization dataset"
aliases: [Guo 2022 HIRFL experiment, HIRFL 187Au dataset]
created: 2026-07-04
updated: 2026-07-04
status: ai-draft
review_status: unreviewed
experiment_id: hirfl-187au-o18-108mev
facility: Heavy Ion Research Facility in Lanzhou
beam: 18O
target: natural Lu
beam_energy: 108 MeV
reaction: 175Lu(18O,6n)187Au
evaporation_channel: 6n
residual_nuclei: [187au]
detector_array: 8 segmented clover and 16 coaxial HPGe detectors
data_status: published
sources: [guo-2022-low-spin-wobbling-187au]
tags: [hirfl, 187au, gamma-spectroscopy, angular-correlation, linear-polarization]
---

# HIRFL `187Au` `R_ac` 与线偏振数据集

## Identity

Guo 2022 为重新检验 `187Au` reported low-spin wobbling bands 获得的独立 HIRFL 数据集。

## Beam, Target and Reaction

108 MeV `18O` 束流轰击两层各 `0.7 mg/cm²` 的自支撑天然 Lu 靶，经 `175Lu(18O,6n)187Au` 产生目标核。

## Detector Configuration

- 8 个 segmented clover detectors 位于垂直束流的一个环；
- 16 个 coaxial HPGe detectors 位于相对束流 `26°`、`51°`、`129°`、`154°` 的四个环；
- 其中 8 个 HPGe 配 anti-Compton shields。

## Trigger and Coincidence Conditions

用 general-purpose digital data acquisition system 记录约 `5×10^10` 个 double- or higher-fold events。正文未展开 trigger logic、时间窗和完整 coincidence sorting 参数。

## Data Products

- Fig.2 的 `187Au/188Pt` 部分能级纲图与 265/233 keV gated spectra；
- `R_ac`：比较 `154°` 与 `90°` 探测器谱中、在所有探测器可见跃迁上设 gate 后的目标峰强度；
- `P`：使用 clover 相邻晶体内垂直/平行方向 Compton scattering events；
- Fig.3 的联合 `P-R_ac` mixing-ratio 约束；
- Fig.4 的实验-QTR energies 与 transition-ratio 比较。

## Nuclei and Bands Studied

重点检验 [[187au]] 的 [[187au-yrast-band]] 与 [[187au-longitudinal-wobbling-band]]，并重新检查 [[187au-signature-partner-band]] 所代表的 reported sequence 是否属于 `187Au`。同一反应数据中的相近序列被作者归入 `188Pt`，本轮不扩展为 `188Pt` 核素摄入。

## Known Limitations

- `R_ac`、polarization calibration、效率修正与详细分析程序位于 supplementary material，但该材料未在当前 `raw/` 中；
- 376/462 keV links 的 mixing-ratio error bars 较大；
- `B(E2)_out` 是结合外部 `B(E2)_in` 的估计，不是本数据集的 lifetime measurement；
- 对 reported sequence 的未观察结论依赖 channel assignment、谱门和灵敏度，需结合 Fig.2 与补充材料人工复核。

## Sources

- [[guo-2022-low-spin-wobbling-187au]]

## Evolution Log

- 2026-07-04：由 Guo 2022 建立，记录 `R_ac + P` 联合测量与 detector geometry。
