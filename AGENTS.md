# 低能核结构研究 Wiki：Agent 行为契约

本仓库是面向熔合蒸发反应与低能原子核结构研究的长期知识库。目标不是囤积资料，而是持续积累可追溯的事实、相互竞争的物理解读、研究决策和失败经验。

## 每次会话的启动顺序

开始任何知识库任务前，依次读取：

1. `AGENTS.md`
2. `profile.md`
3. `system/handoff.md`
4. `system/memory.md`
5. `knowledge/index.md`
6. `system/log.md` 最近 10 条记录

若 Git 可用，在开始修改前检查工作树状态，识别并保护用户已有修改。不得假定未提交内容属于 Agent。

聊天记录不是长期记忆。未写入仓库的信息，不得假定下一次会话仍然可用。

## 权限边界

- `raw/` 是原始证据层，由人类拥有。Agent 只能读取，不得修改、重命名、移动或删除。
- `share_message/` 是外部分享材料，只作为设计参考，不是本 Wiki 的行为契约。
- `knowledge/` 是编译后的知识层，Agent 可按本契约维护。
- `system/` 是治理层。修改规则前必须说明影响，并同步更新相关检查项和用户指南。
- `outputs/` 保存报告、审计和写作产物；它不替代可持续维护的知识页。
- 未经用户明确确认，不得把 `confidence` 提升为 `high`，不得合并物理含义可能不同的概念页，不得覆盖相互冲突的解释。

## 不可违反的科学规则

1. 每个重要事实或数值都必须追溯到 `knowledge/sources/` 中的来源页，并尽量给出页码、图号、表号或能级位置。
2. 严格区分：
   - 文献直接报告的实验事实；
   - 文献作者的物理解读；
   - 模型计算结果；
   - 我们自己的推断或工作假设。
3. “多篇文献重复引用”不等于独立证据。证据独立性必须单独记录。
4. 对 wobbling、手征双重带、γ 软/γ 刚性等存在竞争解释的主题，必须保留反证和替代解释。
5. 不得把“相似现象”“支持某解释”和“证明某解释”混写。
6. 原始来源有歧义、图表不可读或元数据不全时，标记 `needs-human-review`，不得补写看似合理的内容。

## 工作流路由

- 摄入论文或笔记：遵循 `system/workflows/ingest.md`
- 查询与回答：遵循 `system/workflows/query.md`
- 跨来源综合与反向检验：遵循 `system/workflows/reflect.md`
- 健康检查：遵循 `system/workflows/lint.md` 和根目录 `check.md`

## 写回与收尾

完成有实质内容的任务后：

1. 更新受影响的来源页、概念页、核素页或带结构页；
2. 更新 `knowledge/index.md`；
3. 向 `system/log.md` 追加记录，绝不改写旧记录；
4. 更新 `system/handoff.md`，写明当前状态、未解决问题和下一步；
5. 若用户纠正了 Agent 的长期行为，更新 `system/memory.md`；
6. 运行与本次修改相称的 `check.md` 检查。

## 强制文档同步门

每次任务结束前必须逐项判断，不得跳过：

1. 用户可见的目录、命令、工具或工作流是否变化？若是，更新 `USER_GUIDE.md`。
2. Agent 的行为约束是否变化？若是，更新 `AGENTS.md` 与 `check.md`。
3. 页面类型或字段是否变化？若是，更新 `system/schema.md` 与 `system/templates/`。
4. 专业术语或别名是否变化？若是，更新 `system/vocabulary.md`。
5. 是否完成实质任务？若是，更新 `system/handoff.md` 与只追加的 `system/log.md`。
6. 是否摄入或修改知识？若是，更新 `knowledge/index.md`、`knowledge/overview.md`，并检查 `knowledge/questions.md`。
7. Git 可用时检查最终 diff，确认 `raw/` 未被 Agent 修改。

即使 `USER_GUIDE.md` 不需要修改，也必须在内部完成判断；不得因为“这次只是小改动”而省略。

## 文件与链接规范

- 正文以中文为主，首次出现的专业术语附英文名称。
- 文件名使用稳定的英文小写连字符 slug；核素采用约定格式，例如 `130ba.md`。
- Wikilink 使用文件 slug，例如 `[[wobbling-motion]]`、`[[130ba]]`。
- 中文、英文缩写和历史叫法统一记录在 `aliases` 中。
- 系统文件不参与知识图谱，不从科学页面建立指向 `index`、`log`、`check` 或工作流文件的 wikilink。
