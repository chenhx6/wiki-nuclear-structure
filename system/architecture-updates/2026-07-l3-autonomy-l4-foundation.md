---
type: system-architecture-update
graph-excluded: true
title: Research Autonomy L3 and L4 Foundation
date: 2026-07-28
status: released
branch: codex/continuous-research-learning-v2-release
---

# Research Autonomy L3 and L4 Foundation

Release name: **Continuous Research-Learning v2（硅基研究生 V2）**. Canonical annotated tag: `continuous-research-learning-v2`.

## Decision

Continuous Research-Learning v2 将普通摄入的自校验、课题级调查和数据研究连接成一条可审计路径，同时把人工注意力集中到 P0/P1、研究里程碑、正式结论和发布。完整等级、状态机、每周自测和人工关口只由 [[../workflows/autonomous-research|autonomous-research workflow]] 维护；本页只记录设计决策与 pilot 结果。

## Permission repair conclusion

旧 hook/deny 方案曾造成自锁、损坏的 deny-read 状态和 `.codex/.agents/.git` 孤立 DENY ACE。修复精确移除了列明的旧 DENY、删除冲突 hook，并改用项目级 `.codex/config.toml`：Wiki 内可写、Wiki 外只读、`approval_policy=never`。验收覆盖工具启动、Wiki 内 CRUD、Git index、外部写拒绝、状态 JSON、日志回归和普通项目隔离；未使用 ACL reset、机器级 requirements 或全局配置。

权限 profile `wiki_l3` 仅描述文件边界，不表示科研自治等级。后续 L3/L4 扩展不得改变这一边界。

## Architecture choices

- ordinary Q&A 只读；授权 ingest/reflect/project/synthesis 默认自校验并可按信息增益进入 L3。
- L3 绑定具体问题、milestone 和停止条件，自主选择来源、反证和下一步，不采用机械检索次数限制。
- L4 必须先形成 candidate、safe suspend，并由用户确认数据后手动启动；可复现分析、负例和 belief revision 缺一不可。
- P0/P1 是风险与价值优先级，不等于逐项等待人工处理；正式结论、`confidence: high`、权限/raw、不可逆操作和 push 仍保留人工关口。
- 每周自测只在有实质变化时建立本地 WIP 和集中报告；用户审核前不 push，automation 不由 Wiki 会话创建。

## `131Ce` pilot result

Alwaleedi 2013 thesis 建立 Bands 1–7 的结构基线。thesis-only L4 发现 Figure 5.5 的 gated branching inputs 未公开，Tables 4.1–4.7 的全局强度不能复现该图；`δ=0` 的 `|δ|≤0.5` 修正不足以解释缺口。

加入 Singh 2016、Li 2004 和 Petrache 1998 后，lifetime-informed L4 建立了三条独立数据谱系、band crosswalk、限值传播和可执行测试。Singh 四个有限 `Q_t` 点的加权斜率为 `−0.030±0.047 eb/ℏ`，因此“随自旋下降”在该子集不足 1σ。独立 HD band 的 `Q0=7.3(4) eb` 提高了同核多形变极小的可行性，但没有建立它与 thesis Bands 1–7 的 shape-coexistence 连接。

L4 workflow 已通过“真实公开数据 → manifest → 代码/测试 → null result → belief revision”的流程验收；Li 2004 的 LI04-1–4 已完成 claim-level 人工审核，其余物理结论仍为 provisional、按使用场景复核。用户独立 `131Ce` 实验数据未读取或合并。

## Release state

- thesis/L3 science-only lineage 与完整 v2 release lineage 均经审计后直接 fast-forward 发布到 `origin/main`；未创建远端 evidence branch，也未使用 force push。
- Codex push 阻塞来自 Git 调用 repo-local PowerShell credential helper 时的嵌套进程挂起，而不是 PAT repository/workflow scope 不足。发布使用 Codex bundled Git 2.53、命令级 `GIT_EXEC_PATH` 和 repo-local DPAPI 密文包装器，仅在子进程注入精确仓库 URL 的 Authorization header；未修改全局凭据、SSL 校验或系统 Git。
- 初始 release commit `e3aeebd` 的 GitHub Wiki lint 已通过（run `30373076310`）。最终 annotated tag `continuous-research-learning-v2` 只指向同样通过 Wiki lint 的 main release commit；实际 commit 与远端发布状态以 Git refs 为权威。
