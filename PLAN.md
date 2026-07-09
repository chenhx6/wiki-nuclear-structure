# Wiki 阶段计划与用户备忘

> 本文件由用户拥有和维护。Agent 仅在任务涉及阶段计划、研究优先级、文献选择方向、项目建立、长期探索方向、多步骤知识库建设，或用户明确要求时读取；除非用户明确要求，不得覆盖、重写、删除或重排其中内容。

## 当前阶段目标

第一版 Wiki 结构、代表性文献摄入和自动 lint 已经建立。当前目标是补齐关键原始证据链，并让知识库开始服务一个真实研究项目，而不是只作为文献百科。

## 待办事项

1. 将 2020 `137Nd`、2021 `131Ba/133Ce` 加入 Zotero `Wiki Inbox`，回填 citation key；
2. 摄入 `133Ce` 2013 MχD 原始论文；
3. 摄入 `131Ba` 手征带原始论文；
4. 补充 `137Nd`、`133Ce` 等核素的寿命、B(M1)、B(E2) 原始测量；
5. 确认 GitHub 的 `Wiki lint` Action 为绿色。
6. 继续补充 `ionescu_1981_Improvedanalysis`：关注用 branching ratios 提取、且带模型依赖的混合比 `delta` 证据，并补入 source 页。

## 中期计划

在 `knowledge/projects/` 建立第一个真实研究项目页，例如“A≈130 某核素的 wobbling/chirality 竞争解释”。项目页记录：

- 当前研究问题；
- 数据和核素；
- 候选组态；
- 已有证据；
- 缺失观测量；
- 当前分析状态；
- 下一步计算或实验任务。

下一步充实 tilted precession（TiP）相关的理论与实验知识，重点整理 TiP 的角动量几何、与 wobbling 的判别边界、代表性模型计算和原始实验案例。

## 形变背景层与 `131Ce` 数据分析

wobbling 相关知识之后，下一阶段补充 γ-soft / γ-rigid / stable triaxial、shape coexistence、band crossing 与自旋驱动形变演化等形变背景层。该层面服务后续 `131Ce` 数据分析：在讨论 wobbling、chirality、signature partner 或其他具体物理模式前，先尽量判断核形变背景与证据强弱，避免由主观先验过早指认一个数据层面并不充分支持的物理图像。

这些内容在本页只作为研究方向和好奇心备忘，不展开具体文献、判据或结论；具体来源、证据分层与综合判断留给 source、project 或 synthesis 页面处理。

未来建立“γ-soft→γ-rigid / stable-triaxial transition”专题摄入链。该方向是当前 A≈130 核结构研究的重要问题，优先补充：

- 跨自旋或带交叉的寿命、绝对 B(E2)、`Q_t` 与 E2 matrix elements；
- 由 Coulomb excitation 或其他多矩阵元分析得到的形状不变量与 γ 涨落约束；
- 同一核、同一 γ 约定和尽量 common input 下，允许 γ 涨落的集体模型与固定三轴模型比较；
- pairing、奇粒子-芯耦合、shape coexistence 与准粒子对齐对 soft-to-rigid localization 的影响；
- `131Ce/133Ce` 及相关 A≈130 核的 nucleus-specific sources，避免用 `136Sm` 或偶偶邻核直接替代；
- 手征双重带与 wobbling bands 作为稳定三轴形变研究的重要候选集体指纹，同时分别保留其模式判据、竞争解释与“候选带不单独证明 γ-rigid”的证据边界。

Lawrie 2020 *Tilted precession and wobbling in triaxial nuclei* 与 Lv 2021 `135Nd` tilted-precession 原始文献现已进入 `raw/papers/` 和 `wiki-inbox.bib`。完成这两篇来源摄入后，启动 `knowledge/projects/low-spin-wobbling-controversies.md` umbrella project，把 `135Pr`、`187Au` 及后续直接 counter-source 按 observed facts、experimental criteria、author interpretations 与 model results 分层比较；在此之前不提前建立空壳页面。

## 长期节奏

- 每篇论文：一次精确摄入；
- 每 5 篇相关论文：做一次 synthesis；
- 每 10 篇：做一次系统审计；
- 每周：查看 [knowledge/questions.md](knowledge/questions.md) 和 [system/handoff.md](system/handoff.md)；
- 开始写文章前：先建立证据矩阵，再生成正文。

## 当前边界

暂时不批量导入全部 Zotero 文献，不堆积 Obsidian 插件。QMD 已在 Windows 启用，当前只索引 `knowledge/**/*.md`，作为 Agent 的本地候选检索层；它不替代 source/raw 核验，不接管 Git，也不推动批量摄入。当前仍优先补齐关键原始论文，并让知识库服务真实研究项目。

## 暂缓事项：QMD MCP 常驻服务接入

QMD 已通过 CLI 正式接入 Wiki，并采用 project-local 索引。当前阶段暂不接入 QMD MCP daemon / 常驻服务。

当前策略：

- 已知页面优先直接读取；
- 精确核素、作者、DOI、术语与关键词使用 `rg` 或 `qmd search`；
- 机制、近义表达和概念关联使用 `qmd vsearch`；
- 复杂跨文献综合时才使用完整 `qmd query`；
- QMD 结果只作为候选导航，不能替代完整页面、source 页面和 raw 原始材料核验；
- 知识更新后继续使用 CLI 执行 `qmd.cmd update` 和 `qmd.cmd embed -c nuclear-knowledge`；
- 禁止使用 `qmd update --pull`，避免 QMD 操作 Git。

暂缓 MCP 常驻服务的原因是：当前 Wiki 仍处于真实科研查询试运行阶段，CLI 已能覆盖关键词检索、语义检索、混合检索和全文回读；过早接入 MCP daemon 会增加后台服务、路径、环境变量和资源占用等维护成本。

后续满足以下情况时再重新评估是否接入：

- 已完成约 10 次真实科研查询，并确认 QMD 召回质量稳定；
- 经常需要 Agent 自动调用 Wiki 检索，而不是人工手动执行 QMD 命令；
- 完整 hybrid 查询的冷启动时间成为明显负担；
- Wiki 页面规模显著扩大，且反复加载模型影响工作流效率。

可能的后续命令仅作为备忘：

```powershell
qmd.cmd mcp --http --daemon
```

在正式接入前，不将 MCP daemon 写入默认启动流程，也不要求每次会话自动开启。

## 维护规则

- 用户负责决定和维护本文件中的阶段目标、优先级与备忘；
- Agent 仅在任务涉及阶段计划、研究优先级、文献选择方向、项目建立、长期探索方向、多步骤知识库建设，或用户明确要求时读取本文件；
- Agent 不得擅自覆盖、重写、删除或重排本文件内容；
- 只有用户明确要求时，Agent 才能修改本文件。
