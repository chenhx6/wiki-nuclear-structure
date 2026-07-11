---
type: system-memory
graph-excluded: true
updated: 2026-07-10
---

# 长期记忆

这里只保存跨项目、跨会话仍应成立的规则。临时任务状态写入 `system/handoff.md`。

## 已确认规则

- 知识库主要服务于基于熔合蒸发反应的低能原子核结构研究。
- 当前主线质量区可以作为研究锚点，但不是知识库收录边界；文献摄入优先级应由实验核结构价值、证据密度、方法复用价值、跨质量区比较意义和用户明确优先级共同决定。
- 在扩充资料前，先建立检查、证据、术语和跨会话写回机制。
- 科学结论必须可追溯，并保留竞争解释。
- 不把 AI 对话本身当作长期记忆。
- Obsidian 以仓库根目录 `E:\imp\wiki` 为 vault，附件目录为 `raw/figures/`，已启用 Dataview。
- Zotero 使用 `Wiki Inbox` + Better BibTeX 自动导出 `raw/zotero/wiki-inbox.bib`；Agent 对该文件只读。
- QMD `2.5.3` 已配置为 `knowledge/**/*.md` 的本地候选检索层，collection 为 `nuclear-knowledge`；project-local `.qmd/` 为被 Git 忽略的可重建索引。Agent 自动按问题选择 direct read、`rg`/BM25、语义检索或完整 hybrid，并必须回读全文；QMD 不接管 Git。
- Markdown 知识库使用公开 GitHub 仓库 `chenhx6/wiki-nuclear-structure` 作为异地远端。未发表内容、合作材料、审稿材料、个人数据、敏感原始材料和 PDF 不得进入公开远端或普通 Git 历史。
- 用户在仓库根目录维护 `PLAN.md`，用于宏观阶段计划、个人好奇心备忘和研究方向草稿；它由用户拥有，不是 cite-key 文献清单、执行日志或 Agent 可自由改写的任务列表。
- `PLAN.md` 按任务条件读取并管理方向与优先级；`system/handoff.md` 管理最近执行事实与交接细节。无法分类的冲突必须询问用户。
- 执行余量不足且任务无法稳定完成时进入 safe suspend：停止扩大范围、完成 Git 检查、写完整 handoff，并等待用户在额度刷新后发送“继续”；不自动创建 automation 或 commit/push。
- 当前 Wiki 是证据型研究 Wiki 原型和证据导航系统，主要用于知识问答、证据追踪、研究辅助与创新点梳理；不保证文献完整性，不替代原文阅读或人工科学判断。
- Review status 是核查元数据，不是检索、可见性、科学价值或知识资格门槛。高相关、高信息增益的未审核内容应主动呈现，并说明其可能贡献、review/source/locator 状态和核查路径；不机械罗列低相关内容。
- `human-reviewed` 不表示永久正确、完整或已穷尽文献知识；已审核内容仍可被质疑、重新核验、纠正和继续挖掘。页面整体 `unreviewed` 不妨碍针对具体 claim 完成直接来源核验。
- Paper admission 针对具体 claim、拟用措辞和使用语境，并需要用户明确确认。局部 claim 核验不能自动改变整页或其它 claims 的 `review_status` / `needs_review`；Codex 只有在用户明确授权相应状态更新后才能修改。
- Strict paper evidence mode 只用于论文或投稿核查、正式引用、直接来源或原文引文、精确 locator、关键科学 claim 确认；普通问答、研究讨论、探索性综合、早期草稿和一般争议讨论仍使用 ordinary mode。
- Wiki 证据入口采用读取后核实的绝对文件行号链接，并在当前 Codex 客户端打开实时渲染可编辑视图；普通 Markdown 与 inline `code-comment` 均不能稳定强制只读审核界面。不得为改变界面而修改证据页、制造 fake/空白 diff 或创建临时 commit。
- 仓库用 `.gitattributes` 固定 Markdown 和常用文本格式为 LF；editable evidence view 仍可能产生 LF/CRLF-only dirty state。统一清理入口是 `system/scripts/clean_knowledge_eol_dirty.ps1`，写任务第一次写入前、commit 前和 push 前运行；纯 read-only 问答不运行。脚本只清理可证明为 LF/CRLF 行尾格式差异的 worktree 修改，不忽略普通行尾空格、Markdown 双空格或 Tab，也不审批科学修改；exit code `1` 由 Codex 按 dirty baseline、授权范围和 WIP 归属分类，exit code `2` 停止写操作。不得使用 `git add .`。
- 文献摄入和科学内容修改默认本地 WIP、用户审核后 amend 为 final；推荐审核完成当前摄入后再开始下一篇。允许多个 pending WIP，但共享文件必须在写入前选择合并原 WIP、记录依赖或暂缓，不得静默重叠。方案和验收已确认、无科学内容且检查通过的治理/框架/脚本任务可直接 final commit。
- 日常建设坚持一次摄入一篇论文，并在每次摄入后列出新增 claim、待审 claim、竞争解释和证据缺口。
- 现阶段 Skill 只保留证据型知识问答入口；ingest/reflect/lint 等流程稳定后再考虑封装，写作 Skill 等数据处理与证据层成熟后再创建。
- 经典高自旋综述不能仅因年代较早而被笼统降级：通用术语、γ 探测基础和物理成因框架可继续作为有效背景；应分别核对后来发展的物理模式、具体装置性能和单核素证据。
- 本仓库采用 bounded initiative：允许与当前任务直接相关的必要最小同步，禁止非必要顺手优化；PowerShell 的 `PATH` 找不到 Git 时，必须先定位 Git 可执行文件并完成同等检查。
- 中文科学页面中专业术语首次出现时保留英文名称或标准缩写；可能指向不同物理对象的简称必须写明具体对象，例如 two-band mixing 必须说明是哪两条带，避免后续查询只按中文词面误配。
- 讨论多声子 wobbling 的 anharmonicity 时，必须区分能带能量与 successive phonon spacing，并写清参与差分的能带和自旋；不得把“第二声子增量较低”简写成含义不同的“TW2 能量低于 TW1 的两倍”。

## 用户纠正记录

- 2026-07-02：定时续跑必须区分“一次”与“每天”；不得把未生成运行记录的调度写成已执行，也不得承诺未验证的本地定时任务会自动完成。
- 2026-07-02：03:35 故障发生时 Codex 应用未退出；笔记本持续接电、未断电，并已设置接电时永久不休眠和不息屏。后续复盘不得再把应用退出或电脑休眠列为本次故障候选。
- 2026-07-02：`PLAN.md` 改为条件读取；其探索性内容不等于立即执行任务。PLAN 管方向，handoff 管最近状态；额度或执行余量不足时使用 safe suspend，而非假定任务会自动恢复。
- 2026-07-02：用户确认已查看现有 7 个 source 页且未发现明显科学问题；这允许页面级标记为 `human-reviewed`，但不构成逐条清除 claim-level `needs_review: true` 的授权。
- 2026-07-02：用户审阅 De Voigt 1983 source，并逐条对照原文确认 8 条 Key Results 无误；高自旋领域的通用术语与基础 γ 探测方法不因年代而失效，现代阵列主要提升效率和覆盖，后续来源应重点补充新物理模式、具体性能与单核素证据。
- 2026-07-03：用户确认 Domscheit 1999 source 的 citation key、表述和科学内容无明显问题；补充确认 `163Lu/164Lu` 分别由 5n/4n 道产生，并要求中英专业术语对应及具体对象消歧，尤其不能把 SD-ND two-band mixing 简写成可能被误解为 SD1-SD2 混合的“两带混合”。
- 2026-07-03：用户确认历史遗留的 A16-2、C23-2/C23-5、F24-2/F24-4/F24-7、FM97-6、P20-2、ZC91-5 均贴近原文或作者总结；当前结构化 claim-level 待审队列清零。
- 2026-07-03：用户纠正 Sensharma 2019 的 anharmonicity 表述：QTR 比较的是逐级 wobbling 声子能量，关系应写为 `E_TW1(I+1)-E_yrast(I) ≈ 2[E_TW2(I+2)-E_TW1(I+1)]`，不能表述为 TW2 带能量简单低于 TW1 的两倍。
- 2026-07-06：用户重申审核后 WIP 收口规则：文献摄入使用 `WIP ingest:`，project/synthesis/跨来源综合等待审核使用 `WIP review:`；用户审核完成并要求 final commit/push 时，必须 amend 对应 WIP，不保留独立 WIP 后另建 final commit。用户指定 final message 时原样使用；未指定时由 Codex 推荐直接相关的 message 并报告。该仓库内授权优先于通用“不主动 amend”约束。
- 2026-07-10：用户强调：Wiki 是面向实验核物理与低能核结构研究的个人科研知识库。当前主线质量区是研究锚点，不是收录边界；摄入优先级应由实验核结构价值、证据密度、方法复用价值、跨质量区比较意义和用户明确优先级决定，不得因非当前主线质量区自动降级，也不得凭空推断某实验与用户个人履历直接相关。
- 2026-07-10：Review history 记录“用户已完成的一轮实质性人工审核”，不要求固定触发短语，也不由 commit/push/overview/QMD 触发；它不要求 task closed，可与 Pending WIP 并存，只记录 `review commit message` 而不记录 hash/push 状态。Review history 是核查与追溯元数据，不是科学证据、知识白名单或 paper-readiness 索引。

## 禁止写入

- 当前一次会话的待办；
- 尚未核实的科学结论；
- 大段聊天摘要；
- 可从其他页面重新推导的信息；
- 密钥、账号或其他敏感凭据。
