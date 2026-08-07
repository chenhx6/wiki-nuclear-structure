---
type: system-architecture-update
date: 2026-08-06
status: active
scope: method-and-governance
graph-excluded: true
---

# Counter-evidence learning: expected companion observables

本记录是方法与治理学习，不是 `115I`、`116Cs` 或其它核结构知识页。

## 案例复盘

初始 116Cs critique 已检查效率、背景、cut-flow、opening-angle 对 direct/sequential 的区分、`f0`/源尺寸/门选择退化、`7.66 MeV` 与 `8.0 MeV` 重叠、`3−` 模型依赖、`12C` 粒子身份、`116In` 污染及多峰拟合复现性。这些属于必要的缺口审计，但仍偏向通用的“需要更多分析”。

导师 comment 提供了更高信息增益的反证路径：若 `507 keV` 的身份主张成立，应检查更强的 `563 keV` companion branch；若未见，先审计 p-gate、效率、统计灵敏度、谱图阈值和 `10 keV/channel` 粗 binning，不能把未显示直接当作不存在。`507 keV` 还要审计 β+ `511 keV` annihilation contamination，`203 keV` 要审计约 200 keV Compton/backscatter 背景；衰变路径、组态和中间跃迁也须整体闭合。这里的数值是导师 comment 的 **external counter-comment / method example**，不是本 Wiki 已核验的核数据事实。

## 固定证据链

```text
核心主张 → 必要伴随预测 → 应出现的信号/非信号
→ 探测器、gate、分辨率、binning 和背景灵敏度
→ 替代解释 → falsifier → belief revision
```

“Expected-but-absent” 不是自动反证。只有灵敏度足以排除可见性时，才可升级为 `absence candidate`；否则保持 `expected-but-not-established` 或 `blocked-needs-raw/event-level data`。

## 可复用审计单元

- **Branch closure**：主 feeding/level assignment 是否要求可见的 companion transition、分支比或中间级联？
- **Line identity**：目标峰是否靠近 annihilation line、Compton/backscatter、pile-up 或 detector-response feature？
- **Resolution/binning**：原始谱图、能量分辨率和 binning 是否足以支持峰的存在、缺失或分离？
- **Gate-specific sensitivity**：特定 gate 是否改变背景或相对效率？
- **Global path closure**：衰变路径、组态、自旋宇称和中间跃迁是否共同自洽？

导师 comment/审稿意见可作为高价值 **external counter-argument**，但底层来源未核验前不能写成独立事实；Wiki 推理标为 `[Analysis]` 或 `[Hypothesis]`，原文标为 `[Paper]`，独立来源标为 `[External]`。缺失伴随信号先写成 conditional contradiction。

## 迁移到研究工作流

- **Ingest**：高风险谱学 claim 必须做 companion、line-identity、binning 和 gate sensitivity 检查，并区分 observed、expected-but-not-established、absence candidate、blocked-needs-raw/event-level data。
- **每周自测**：至少选择一个必要伴随观测、一个背景/分辨率/gate 审计、一个来源独立性检查，并写明 belief revision 条件；“发现缺证据”与“发现新事实”同等记录。
- **L3**：milestone 固定 claim、companion prediction、support/counter/alternative、灵敏度、可区分预测、falsifier、belief revision 和停止条件。仅凭图像印象、粗 binning 或单一 feeding 线时保持 `active-L3` 或 `blocked-needs-source`。
- **L4**：candidate manifest/analysis plan 预先列出 expected-but-absent observables、response/background templates、gate/threshold/binning sensitivity、negative controls，以及 companion 缺失如何改变模型排序。L4 仍须用户手动启动。

目标是让证据链从“支持主张”扩展为“主张成立时必须同时解释什么，以及什么结果会迫使我们改信”。
