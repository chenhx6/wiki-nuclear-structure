---
type: system-architecture-update
graph-excluded: true
title: Research Autonomy L3 and L4 Foundation
date: 2026-07-27
status: implementation-in-progress
branch: codex/l3-l4-131ce-pilot
---

# Research Autonomy L3 and L4 Foundation

## Motivation

Continuous Research-Learning v1 已建立可追溯 source、证据矩阵、反向检验、research-note 与 Human review，但普通摄入、课题调查、数据研究和周期自测之间还缺少清晰升级路径。本次升级把“能否自主校验、形成课题并选择下一步”作为核心指标，同时把用户审核集中到 P0/P1、研究里程碑和正式发布。

## User-calibrated L0-L4 scale

| Level | Research behavior |
|---|---|
| L0 | 导师指定文章后完成精读、locator 和知识摄入。 |
| L1 | 在阅读基础上形成可靠联想、联系和边界，Wiki 不再只是静态资料库。 |
| L2 | 摄入/综合默认组合 L1，固化通用知识、质疑和验证；高价值问题进入问题队列。 |
| L3 | 调查研究背景和已有工作，发现不足，提出课题/假设，寻找反证并决定最高信息增益的下一步。 |
| L4 | 在用户确认数据后手动启动，以真实、公开或可靠模拟数据执行可复现研究并修正认识。 |

L3/L4 不是文件权限名称。项目 permission profile 仍名为 `wiki_l3`，只表示 Wiki 内可写、外部只读。

## Permission-boundary history and repair

### Initial problem

最初尝试通过项目 hook 和 deny 规则保护外部文件及项目治理文件。该设计产生了自锁和多层状态冲突：hook 会阻止修改自身；嵌套 `.codex` deny/read 规则触发 deny-read ACL 状态；`.git`、`.agents` 与 `.codex` 的实际写入能力不一致；审批 reviewer 的宿主显示也与配置语义不完全一致。

### Sandbox state and ACL failure

- `deny_read_acl_state.json` 曾损坏为无法正常解析的短文件/全 NUL 状态，并在日志中产生 `parse deny-read ACL state` 等 setup error；用户将损坏状态移走后重新启动。
- 旧配置留下的 capability SID 与 `CodexSandboxUsers` 显式 DENY ACE 不再有可用恢复记录，成为 `.codex`、随后 `.agents` 和 `.git` 上的孤立 ACL。
- 修复只精确删除列明主体的 DENY ACE，未执行 ACL reset、未关闭继承、未重设整个目录权限，也未删除 Allow ACE。

### Final boundary

- 删除项目 `hooks.json` 及冲突 guard 方案；
- 使用项目级 `.codex/config.toml`：`:root = read`，Wiki、`.codex`、`.git`、`.agents` 为 write，网络开放，TEMP/TMP/cache 位于 Wiki；
- 固定 `approval_policy = never`，Wiki 外写入不存在提权入口；
- 不使用机器级 requirements，不影响其它项目。

### Acceptance

修复后验证了 PowerShell/Node/Python/Git 启动、Wiki 内普通目录和三个特殊目录 CRUD、Git index write/unstage、Agent 管理 incoming 路径、Wiki 外新建与既有文件覆盖/重命名/删除拒绝、状态 JSON 可解析且无 principal、新日志无 deny-read parse/apply/setup error，以及独立普通项目不加载 `wiki_l3`。所有探针和 ACL 备份均已清理。

### Patch-helper regression during this upgrade

2026-07-27 本次升级开始时，Codex desktop 注入的 `apply_patch.bat` 指向 WindowsApps 中的桌面 `codex.exe`，默认包装器与底层可执行均返回 access denied。npm Codex 的 `--codex-run-as-apply-patch` 在 Wiki-local TEMP/TMP 下验证可用，因此继续使用同一 apply-patch 语义，没有改用任意脚本覆写文件。该回归属于 patch helper 启动路径，不是 Wiki writable roots 或 ACL 再次失效。

## Architecture decisions

### One canonical autonomy workflow

`system/workflows/autonomous-research.md` 是 L0-L4 唯一完整规则源。`AGENTS.md`、query、reflect、ingest 和 Wiki evidence skill 只保留短路由，避免重复定义、规则漂移和治理堆积。

### L2 default loop

ordinary Q&A 保持只读。摄入/综合默认执行知识影响判断、反证检查和必要验证；P0/P1 是内部优先级而不是逐项人工审核清单。只有高价值、可检验且当前无法解决的问题进入 `knowledge/questions.md`。

### L3 question-scoped autonomy

L3 绑定一个有范围、milestone 和终止条件的研究问题，也可以由摄入或每周自测发现的高价值问题触发。Agent 自主调查背景、选择文献和阅读强度、比较竞争假设、寻找独立反证、修订 belief 并形成课题 prospectus。深度由信息增益和成本动态决定，不使用机械篇数上限。

### L4 data loop

L4 可以使用真实、公开或可靠模拟数据，但必须先形成 candidate、建立 checkpoint 并 safe suspend；用户确认数据位置和授权后才能手动启动。每次分析记录输入、代码/命令、参数、输出、残差、失败和 hypothesis impact。复现、作图或写作本身不构成 L4 通过。

### Weekly self-test

每周自测按知识风险、研究价值、证据充分度、信息增益和资源消耗动态深入；高价值问题可进入 L3，L4 candidate 必须停在手动关口。有实质变化时创建 P0/P1 报告和本地 WIP，经用户集中审核后才 fast-forward/push main；无实质变化不制造文件或空 commit。automation 由用户在 Codex 应用中手动启用，Wiki 会话不修改外部应用状态。

### Human gates retained

用户 raw 与敏感材料、正式知识晋升、`confidence: high`、claim 审核清除、外发/投稿、破坏性操作、显著成本和 push 仍需相应用户授权。自治扩大科研选择，不扩大不可逆权限。

## First pilot: `131Ce`

首个验收来源为 Mohammed Abdullah Alwaleedi 2013 博士论文 *Band Structures of 131Ce*。它提供 `100Mo(36S,5nγ)131Ce`、165 MeV、Gammasphere 能级纲图、跃迁表、角强度比、alignment、组态和 `B(M1)/B(E2)`。用户判断后续实验数据不会扩展该能级纲图；因此论文作为结构基线，未来 L4 优先分析新数据能提供的参数和可区分 observables。

该 pilot 不是 Wiki 研究范围限制。其作用是检验：Agent 能否在无逐步提示时完成 source 摄入、自主形成/修订假设、寻找反证、选择下一步，并诚实报告 L4 当前缺失的数据和分析接口。

## L4 current boundary

当前已具备证据治理、project/research-note/failure/decision/output 类型、Wiki-local 代码执行与外部学术检索。尚未完成 `131Ce` 数据 manifest、统一数据表、稳定 observable 计算、common-input model adapter 和 failure-driven revision。L3 结束后先形成 L4 candidate 并 safe suspend；只有用户手动启动后才测试，状态必须按真实结果报告。

## Validation and release gates

- governance：完整等级定义只有一份，ordinary/L2/L3/L4 触发互不泄漏；
- source：论文关键表、图、能级和 claim 可回放，作者解释与实验事实分开；
- L3：无常规人工提示时能选择下一步、查反证并修订假设；
- L4：报告真实 readiness、可复现要求和缺口，不把文献综合冒充数据闭环；
- Git：`wiki-inbox.bib` 本轮只读，不提交；权限提交、治理升级和科学 pilot 在独立分支可审查；最终主线发布等待用户审阅。

## Release state

Implementation and pilot validation are performed on `codex/l3-l4-131ce-pilot`. Git commits and remote push state remain Git-authoritative; this record does not self-record its own final hash. After the pilot branch is pushed, the user will review governance compactness, L3 acceptance, L4 status, trigger semantics and the future `131Ce` data route before deciding whether to integrate it into `main`.
