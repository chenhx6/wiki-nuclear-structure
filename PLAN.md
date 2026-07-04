# Wiki 阶段计划与用户备忘

> 本文件由用户拥有和维护。Agent 每次启动时涉及阶段计划、研究优先级、项目建立等任务时读取；除非用户明确要求，不得覆盖、重写、删除或重排其中内容。

## 当前阶段目标

第一版 Wiki 结构、代表性文献摄入和自动 lint 已经建立。当前目标是补齐关键原始证据链，并让知识库开始服务一个真实研究项目，而不是只作为文献百科。

## 待办事项

1. 将 2020 `137Nd`、2021 `131Ba/133Ce` 加入 Zotero `Wiki Inbox`，回填 citation key；
2. 摄入 `133Ce` 2013 MχD 原始论文；
3. 摄入 `131Ba` 手征带原始论文；
4. 补充 `137Nd`、`133Ce` 等核素的寿命、B(M1)、B(E2) 原始测量；
5. 确认 GitHub 的 `Wiki lint` Action 为绿色。

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

Lawrie 2020 *Tilted precession and wobbling in triaxial nuclei* 与 Lv 2021 `135Nd` tilted-precession 原始文献现已进入 `raw/papers/` 和 `wiki-inbox.bib`。完成这两篇来源摄入后，启动 `knowledge/projects/low-spin-wobbling-controversies.md` umbrella project，把 `135Pr`、`187Au` 及后续直接 counter-source 按 observed facts、experimental criteria、author interpretations 与 model results 分层比较；在此之前不提前建立空壳页面。

## 长期节奏

- 每篇论文：一次精确摄入；
- 每 5 篇相关论文：做一次 synthesis；
- 每 10 篇：做一次系统审计；
- 每周：查看 [knowledge/questions.md](knowledge/questions.md) 和 [system/handoff.md](system/handoff.md)；
- 开始写文章前：先建立证据矩阵，再生成正文。

## 当前边界

暂时不批量导入全部 Zotero 文献，不堆积插件，也不安装 qmd。当前优先补齐关键原始论文，并让知识库服务真实研究项目。

## 维护规则

- 用户负责决定和维护本文件中的阶段目标、优先级与备忘；
- Agent 每次启动时读取本文件；
- Agent 不得擅自覆盖、重写、删除或重排本文件内容；
- 只有用户明确要求时，Agent 才能修改本文件。
