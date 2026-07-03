---
type: system-workflow
graph-excluded: true
operation: query
updated: 2026-07-03
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

1. `knowledge/index.md`
2. 相关核素页、带结构页、概念页和方法页
3. 这些页面指向的 `knowledge/sources/` 来源页
4. 必要时回读 `raw/` 原文核验精确位置

将来启用 qmd 后，可优先搜索，但不得用搜索摘要代替完整阅读。

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

持久化后更新 index、log 和 handoff；若产生新问题，追加到 `knowledge/questions.md`。
