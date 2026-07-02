# 低能核结构研究 Wiki

本 Wiki 是面向个人科研工作的可追溯知识库，用于积累文献事实、竞争性物理解读、研究决策和失败经验，并支持 Obsidian 浏览、AI 辅助整理与科研写作。

## 研究范围

- 基于熔合蒸发反应的低能原子核结构研究；
- A≈130 质量区原子核；
- 原子核转动与振动；
- wobbling motion；
- chiral doublet bands；
- γ 形变、γ-soft deformation 和 γ-rigid deformation；
- 相关实验判据、理论模型及竞争解释。

## 推荐阅读入口

| 需要了解的内容 | 入口 |
| --- | --- |
| Wiki、Obsidian 和日常使用方法 | [USER_GUIDE.md](USER_GUIDE.md) |
| 已有核素、能带和主题 | [knowledge/index.md](knowledge/index.md) |
| 知识库规模和健康状态 | [knowledge/overview.md](knowledge/overview.md) |
| 尚未解决的科研问题 | [knowledge/questions.md](knowledge/questions.md) |
| 当前阶段计划和用户备忘 | [PLAN.md](PLAN.md) |
| 最近一次 Agent 执行交接 | [system/handoff.md](system/handoff.md) |
| 摄入论文 | [system/workflows/ingest.md](system/workflows/ingest.md) |
| 查询知识库 | [system/workflows/query.md](system/workflows/query.md) |
| 跨来源综合与反向检验 | [system/workflows/reflect.md](system/workflows/reflect.md) |
| 自动检查 | [system/workflows/lint.md](system/workflows/lint.md) |
| 字段、页面类型和命名规则 | [system/schema.md](system/schema.md) |
| 术语和禁止混并的概念 | [system/vocabulary.md](system/vocabulary.md) |
| Zotero 连接方式 | [system/zotero-integration.md](system/zotero-integration.md) |
| 完整人工检查 | [check.md](check.md) |

日常主要浏览 `knowledge/`。`raw/` 保存原始证据，`system/` 保存规则与执行交接，`outputs/` 保存审计和写作产物。

推荐流程：

```text
Zotero Wiki Inbox
→ PDF 放入 raw/papers
→ Agent 摄入
→ 用户在 Obsidian 审阅
→ synthesis 跨来源综合
→ outputs 形成文章、报告或汇报
→ lint
→ Git commit/push
```

自动检查命令：

```powershell
python system/scripts/wiki_lint.py --fail-on error
```

## README、PLAN 与 handoff

- `README.md` 是稳定、简洁的 Wiki 入口，不保存大量阶段性待办。
- `PLAN.md` 是用户拥有和维护的阶段计划与备忘。
- `system/handoff.md` 是 Agent 的执行交接，记录最近状态、未解决问题和下一步。

若三者存在冲突，当前用户明确指令优先，`PLAN.md` 优先于旧的 `system/handoff.md`；仍不确定时，Agent 应停止并询问用户。

## Agent 使用规则

Agent 必须遵循 [AGENTS.md](AGENTS.md)，按规定读取启动文件，保护用户已有修改和 `raw/` 原始证据，不得以猜测补写事实或擅自覆盖 `PLAN.md`。
