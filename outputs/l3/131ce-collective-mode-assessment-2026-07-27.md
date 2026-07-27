# L3 milestone report：`131Ce/133Ce` 集体模式判别

日期：2026-07-27

状态：`awaiting-milestone-review`
Canonical project：[[131ce-collective-mode-discrimination]]

## 本次范围

- 目标核：`131Ce`；对照：`133Ce`、`131Ba`、`131Xe`。
- 模式：signature/configuration coupling、γ-soft particle-core coupling、wobbling、chirality、shape coexistence。
- 证据：Alwaleedi 2013 全文 deep-read；5 个既有 direct/theory source；3 个既有 synthesis；CrossRef/arXiv 定向检索。
- 未执行：L4 数据拟合、用户 raw 分析、未经确认的全文下载。

## P0

1. **Table 5.1 parity inconsistency — `downgraded`, 不阻塞 science publication**
   - 影响：Band 2 crossing 的 parity 标签。
   - 依据：原表视觉复核确认 Table 5.1 显示负宇称，但 Figure 4.1、Tables 4.5–4.6 和 Section 5.2.2 均支持 Band 2 正宇称。
   - 处置：分类为 `probable typo/source conflict`；不使用该 parity 单元形成 working conclusion，crossing 数值保留来源归属。
   - 用户 claim-level 判断：依据 Figure 4.1，Bands 2/3/5 暂定正宇称，Bands 1/4/6/7 暂定负宇称；未把整页升级为 `human-reviewed`。

2. **数据/权限/Git hard P0：none identified**
   - `raw/zotero/wiki-inbox.bib` 保持用户维护、未暂存；未修改 Wiki 外文件；未启动 L4。

## P1

1. 当前最佳解释不是单一模式标签，而是 **configuration/signature coupling 主导 + γ-soft 或随自旋演化的非轴 core background**。
2. `133Ce` chirality 与 shape coexistence 保持 model-assisted candidate；共享数据链和 lifetime gap 降低独立性。
3. 当前 `131Ce` Bands 1–7 没有 wobbling 必需的 collective interband E2 证据；结论是 `unsupported`, 不是全核排除。
4. 2016 lifetime paper（DOI `10.1007/s12043-016-1218-6`）是最高优先级新来源；当前仅元数据核验，状态 `blocked-needs-source`。
5. 决定性 observable：δ（含分支/符号）+ polarization；lifetimes/absolute B(E2), B(M1), Q_t；带间/带内 E2 matrix；quadrupole invariants 或同口径模型比较。
6. thesis 的 branching-ratio 推导满足 `R(δ)=R(0)/(1+δ²)`；引用结果必须携带 δ=0。若 `|δ|≤0.5`，相对真实值最多高估 25%，相对 `R(0)` 的差值最多 20%；这不是 ICC 反演的约 25% 实验误差。

## 低风险摘要

- 将 `131Ce` source、nucleus、experiment 与新 L3 project 建立反链。
- 未机械拆分 Bands 1–7，避免在 identity 未跨来源稳定前形成重复页面。
- Paper Card 采用 `structure-grounded`，审计通过且仅有无 source bundle 的预期 warning。

## 验证与研究过程摘要

- 对每个解释建立支持、反证、隐含假设和可区分预测。
- 审计证据独立性：`133Ce` 2013/2016 部分共享数据；thesis configuration map 与 ratio comparison 共享模型输入；邻核只作机制参照。
- 停止泛检索的理由：假设排序已稳定，下一信息增益来自 lifetime full text 或真实数值分析。

## 升级状态

- L3 milestone：完成，等待用户集中审核。
- L4：`candidate-L4 / blocked-needs-user-data`。
- 可选数据：thesis 公开 Tables 4.1–4.7、5.1–5.4、Figure 5.5，或用户后续提供的 `131Ce` 测量/拟合结果。
- 手动启动格式：`开始 131Ce L4：数据=<Wiki 内路径>；问题=<可省略>`。

## 文件与 Git

- 新增：`knowledge/projects/131ce-collective-mode-discrimination.md`、本报告。
- 修改：`knowledge/questions.md`、`knowledge/index.md`、`knowledge/nuclei/131ce.md`。handoff/queue/log 留到 L4 手动关口检查点单独同步。
- Commit message：`Validate L3 research scouting for 131Ce collective modes`。
- Commit hash：由包含本报告的 Git commit 记录；精确 hash 见 handoff 与 `git log`，避免在被 amend 的 commit 内保存失效的自引用 hash。
- Push：local evidence branch `codex/131ce-l3-evidence-pilot@4f1e9fb` 已构建；fetch/push 因 GitHub network/credentials 失败，未发布；`origin/main` 未被修改。
