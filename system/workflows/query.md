---
type: system-workflow
graph-excluded: true
operation: query
updated: 2026-07-06
---

# QUERY：知识库查询流程

## 1. 定界

- 明确问题对应的核素、能区、能带、观测量、模型和时间范围。
- 区分用户是在问实验事实、文献观点、领域共识，还是要求我们的综合判断。

## 2. 双语术语归一化

1. 识别问题中的中文、英文、缩写、历史写法和实验口语。
2. 使用 `system/vocabulary.md` 的 canonical、aliases、query expansion，以及相关页面 frontmatter 的 `aliases` 双向扩展检索词。
3. 中英文等价词检索同一 canonical concept；原文术语仍保留在来源与回答中。
4. 泛称命中多个模型或方法时，列出候选并询问用户，或按候选分别回答；不得擅自选择一个。
5. `do_not_merge_with` 中的术语不得静默合并。尤其区分 angular distribution / angular correlation、shell model / CSM / PSM / TPSM，以及 wobbling 上位概念与 transverse/longitudinal 下位类型。
6. γ 谱学语境中的 `gate`、`gated by`、“开门”“拉门”“开窗”可扩展到 gating/coincidence gate，但必须保留能量、gate 类型和上下文限定。

若术语扩展改变了检索范围，在最终回答中简要列出使用的 canonical term 和主要扩展词。术语表只负责检索归一化，不构成科学证据。

## 3. 检索顺序

### 3.1 QMD 状态与范围

QMD 已启用为本地候选检索层。project-local 索引位于被 Git 忽略的 `.qmd/`，collection 为 `nuclear-knowledge`，只索引 `knowledge/**/*.md`。从仓库根目录检查：

```powershell
$qmd = Get-Command qmd.cmd -ErrorAction SilentlyContinue
if (-not $qmd) { $qmd = Join-Path $env:APPDATA 'npm\qmd.cmd' }
& $qmd status
```

若 QMD 不可用或索引异常，降级到 `rg`、`knowledge/index.md` 和直接读取，并在回答中说明未使用 QMD。不得把未执行写成已检索。

### 3.2 检索路由

1. 已知路径或候选页面很少：直接读取文件。
2. 精确核素、作者、DOI、citation key、带名和术语：先用 `rg` 或快速 BM25。

   ```powershell
   qmd.cmd search "signature splitting wobbling" -c nuclear-knowledge --format files -n 10
   ```

3. 用户用自然语言描述机制、近义概念或竞争解释，关键词检索覆盖不足：使用语义检索。

   ```powershell
   qmd.cmd vsearch "如何区分低自旋 wobbling 与替代解释" -c nuclear-knowledge --format files -n 10
   ```

4. 高价值跨页综合且执行余量充足：可使用完整 hybrid query。

   ```powershell
   qmd.cmd query "比较低自旋 wobbling、TiP 和 IBFM 替代解释的证据边界" -c nuclear-knowledge --format files -n 10
   ```

   当前 Windows + Intel Iris Xe 环境的首次实测中，BM25 为十秒级、语义检索约两分钟、完整 query 约七分钟。完整 query 不作为简单问答默认路径；超时或收益不足时降级，不得让检索工具阻塞任务。

### 3.3 全文回读与证据追踪

搜索结果只用于建立候选集合。不得从 snippet、score、query expansion 或 reranker 排名直接生成科学结论。对候选页执行：

```powershell
qmd.cmd get "qmd://nuclear-knowledge/synthesis/example.md"
```

然后按以下顺序回读：

1. 相关核素页、带结构页、概念页、模型页和观测量页；
2. 这些页面指向的 `knowledge/sources/` 来源页；
3. 必要时回到 `raw/` 原文核验页码、图表、能级和不确定度。

### 3.4 索引维护

实质修改 `knowledge/` 后运行：

```powershell
qmd.cmd update
qmd.cmd embed -c nuclear-knowledge
qmd.cmd status
```

增量 `embed` 只处理新建或变化内容。`qmd pull` 仅下载/校验 embedding、generation 和 reranking 模型；正常查询与日常知识更新不需要重复运行。禁止使用 `qmd update --pull`，因为 Git 获取、冲突处理和用户工作树保护必须由显式 Git 工作流负责。

## 4. 回答要求

- 每个核心结论追溯到来源页。
- 关键数值附单位、不确定度和 locator。
- 术语首次出现时优先使用“中文（English, abbreviation）”；必要时说明 canonical term、用户原词和原文术语的关系。
- 显式标明实验事实、实验判据、作者解释、模型结果、我们的推断和综合判断。
- 相互冲突的来源并列呈现。
- 库中没有的信息明确写“当前知识库未覆盖”。
- 不以模型的通用记忆冒充本库资料。
- 页面或 claim 未完成人工复核时，明确标记为阅读线索，不把它写成论文级结论。
- synthesis 只能帮助综合和导航，不能替代原始 source/raw。
- source/claim 引用继续以知识页和原始 locator 为准，不得只引用 vocabulary。

## 5. 持久化判断

只有满足下列任一条件才写入 `outputs/` 或 `knowledge/synthesis/`：

- 回答解决了反复出现的科研问题；
- 建立了新的跨来源证据矩阵；
- 形成可用于论文、报告或项目决策的内容；
- 明确暴露了重要证据缺口。

普通问答不机械归档。

涉及论文级文字、引用建议或创新点判断时，额外遵循 `system/paper-evidence-gate.md`。当前 Wiki 没有覆盖到的文献不能被推断为“不存在”。

## 6. 收尾

持久化后更新 index、log 和 handoff；若产生新问题，追加到 `knowledge/questions.md`。知识层有实质变化且 QMD 可用时，按 3.4 更新索引。
