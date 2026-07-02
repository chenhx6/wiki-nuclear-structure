# 低能核结构研究 Wiki：Agent 行为契约

本仓库是面向熔合蒸发反应与低能原子核结构研究的长期知识库。目标不是囤积资料，而是持续积累可追溯的事实、相互竞争的物理解读、研究决策和失败经验。

## 每次会话的启动顺序

本文件作为行为契约加载后，开始任何知识库任务前依次读取：

1. `README.md`：了解 Wiki 的稳定入口和研究范围；
2. `system/handoff.md`：了解最近一次 Agent 执行交接；
3. `profile.md`；
4. `system/memory.md`；
5. `knowledge/index.md`；
6. `system/log.md` 最近 10 条记录。

`PLAN.md` 是条件读取文件，不是每次小任务的强制启动文件。当任务涉及阶段计划、研究优先级、文献选择方向、项目建立、长期探索方向、基于用户好奇点扩充知识库、多步骤知识库建设，或用户明确要求读取 `PLAN.md` 时，必须在读取 `README.md` 后、读取 `system/handoff.md` 前额外读取 `PLAN.md`。

`PLAN.md` 由用户拥有和维护，用于宏观阶段计划、个人好奇心备忘和研究方向草稿，可以记录讨论点、好奇点、未来探索问题以及需要补充的文献类别或问题方向。它通常不写具体 cite key，不是文献清单、执行日志或 Agent 可自由改写的任务列表；其中模糊、大纲式或探索性的内容不等于 Agent 必须立即执行的任务。未经用户明确要求，Agent 不得覆盖、重写、删除、重排或机械整理其内容。

`system/handoff.md` 用于记录最近完成事项、当前具体执行状态、未完成问题、文件修改记录和下一次任务交接细节。简言之：`PLAN.md` answers “where the user may want to go next”; `system/handoff.md` answers “where the last task stopped.”

若文件之间存在冲突：

1. 用户当前明确指令永远最高；
2. 在阶段目标、研究兴趣、长期探索方向、研究优先级和文献补充方向上，`PLAN.md` 优先于旧的 `system/handoff.md`；
3. 在最近完成事项、具体执行状态、未完成问题、文件修改记录和下一次任务交接细节上，`system/handoff.md` 优先作为事实记录；
4. 若冲突无法判断属于哪一类，停止并询问用户，不得猜测。

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
- 定时续跑或无人值守任务：遵循 `system/workflows/scheduled-continuation.md`

完成知识页、治理规则、模板或脚本的实质修改后，必须运行：

```text
python system/scripts/wiki_lint.py --fail-on error
```

自动 lint 的 error 必须在提交前处理；warning 和 info 必须如实报告，但不得为了消除提示而自动改写科学解释。修改 lint 脚本或配置时，还必须运行 `python -m unittest discover -s system/tests -p "test_*.py" -v`。

## 定时续跑的可靠性边界

- 定时任务是尽力执行的调度手段，不是完成保证。只有生成运行记录并核验产物后，才能写“已执行”或“已完成”。
- `heartbeat` 只用于短时、同一线程的继续工作；等待超过 1 小时不得使用 heartbeat。较长等待优先使用面向工作区的独立调度，但仍须说明本机应用、调度服务和电脑保持可用的前提。
- 一次性请求不得以界面显示为“每天”的规则交付。若调度器只能用带 `COUNT=1` 的重复规则表达，必须明确告知界面歧义并优先改用无歧义方案。
- 配额刷新不会主动唤醒任务。若到期执行依赖本地应用或电脑保持唤醒，必须在承诺前说明；不能确认时，应留下完整 handoff 和续跑命令，请用户在刷新后唤醒会话。
- 到期后必须核对运行回执、开始/结束时间和输出。没有回执即报告“未触发/未验证”，不得依据预定时间推断已运行。

## Safe suspend

当 Codex 发现上下文、token、5 小时额度或执行余量不足，且任务无法稳定完成时，不得继续扩大修改范围，必须立即进入 safe suspend：

1. 停止新增大范围修改；
2. 运行 `git status --short`、`git diff --stat`、`git diff --check`；
3. 更新 `system/handoff.md`，记录已完成事项、未完成事项、已修改文件、当前风险，以及下一轮可直接执行的续跑提示词；
4. 不得自动 commit/push，除非用户明确要求；
5. 告知用户等待额度刷新后发送“继续”。

Safe suspend 不是让当前任务自动睡眠并原地恢复。若用户后续使用 automation，应视为额度刷新后新开一次任务，由新任务按启动规则读取 handoff 后继续；不得因进入 safe suspend 自动创建 automation。

## 写回与收尾

完成有实质内容的任务后：

1. 更新受影响的来源页、概念页、核素页或带结构页；
2. 更新 `knowledge/index.md`；
3. 向 `system/log.md` 追加记录，绝不改写旧记录；
4. 更新 `system/handoff.md`，写明当前状态、未解决问题和下一步；
5. 若用户纠正了 Agent 的长期行为，更新 `system/memory.md`；
6. 运行与本次修改相称的 `check.md` 检查。
7. 实质修改通过自动 lint 后方可提交；自动检查不能替代 `check.md` 中需要科学判断的项目。

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
