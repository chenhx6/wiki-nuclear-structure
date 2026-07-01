# 低能核结构 Wiki 使用指南

这套 Wiki 面向熔合蒸发反应和低能原子核结构研究。Obsidian 是人的浏览、审阅和写作界面；Agent 负责摄入、交叉引用、综合、检查与维护；Markdown 文件是双方共享的长期记忆。

## 1. 目录怎么理解

```text
raw/         原始论文、笔记、图像和数据；由你管理，Agent 只读
knowledge/   经过证据化整理的科研知识；Agent 维护，你审阅
system/      schema、模板、流程、记忆、日志和交接状态
outputs/     审计、报告、文章草稿和演示产物
```

最重要的入口：

- `knowledge/index.md`：知识导航；
- `knowledge/overview.md`：健康概览；
- `knowledge/questions.md`：开放科研问题；
- `system/handoff.md`：当前做到哪里、下一步是什么；
- `system/log.md`：只追加的操作历史；
- `check.md`：系统与科学质量检查。

## 2. 在 Obsidian 中打开

1. 在 Obsidian 选择“打开本地仓库作为库”。
2. 选择整个 `E:\imp\wiki`，不要只选择 `knowledge/`。
3. 这样可以同时看到证据、知识、治理规则和输出，但日常主要浏览 `knowledge/`。

推荐启用的核心功能：

- Backlinks；
- Outgoing links；
- Graph view；
- Properties；
- Templates；
- Search。

当前 vault 已启用 Dataview。它用于列出页面元数据，不替代 Markdown 正文和 Git 中可读的静态索引。

建议把附件目录设为 `raw/figures/`。该目录由你或 Obsidian 写入，Agent 不主动修改。

### 图谱过滤

在 Graph view 的 Filters 中使用：

```text
-path:"raw" -path:"system" -path:"outputs" -path:"share_message"
```

这样图谱主要显示核素、能带、概念、模型、观测量和来源之间的科研关系。

Dataview 插件程序本体位于 `.obsidian/plugins/`，不进入 Git；启用清单和核心 Obsidian 配置可以进入 Git。Zotero Integration 等其他社区插件应在轻量流程稳定后再引入，避免插件配置反客为主。

### Dataview 常用查询

在个人工作台页面中可粘贴：

````markdown
```dataview
TABLE type, review_status, updated
FROM "knowledge"
WHERE review_status = "needs-human-review"
SORT file.name ASC
```
````

查看某个核素的带页：

````markdown
```dataview
TABLE band_label, parity, spin_range, interpretation_status
FROM "knowledge/bands"
WHERE nucleus = "137nd"
SORT file.name ASC
```
````

## 3. 日常摄入论文

### 从 Zotero 选论文

1. 在 Zotero 建立 Collection：`Wiki Inbox`。
2. 把准备精读的论文加入该 Collection。
3. 将对应 PDF 复制到 `raw/papers/`。
4. 告诉 Agent：

```text
摄入 raw/papers/论文名.pdf。先检查重复和 Zotero 元数据，
列出拟创建或更新的页面，再开始写入。
```

一次处理一篇。不要把整个 Zotero 库批量倒进来。

### 摄入后你需要审阅什么

- 实验事实是否与作者解释分开；
- 能级、自旋宇称、跃迁能量和单位是否正确；
- 图号、表号、页码等 locator 是否足够；
- 组态、wobbling、chiral、γ-soft/γ-rigid 是否保留候选或争议状态；
- Agent 拟合并的概念是否真的物理等价；
- `needs-human-review` 项是否需要你裁决。

## 4. Zotero 轻量连接

当前推荐 Zotero 继续作为书目和标注主库，不直接读写运行中的 `zotero.sqlite`。

Better BibTeX 可将 `Wiki Inbox` 自动导出为 BibTeX/Better BibTeX JSON。具体约定见 `system/zotero-integration.md`。来源页预留：

- `zotero_item_key`
- `citation_key`
- `zotero_uri`
- `library_file`

没有导出元数据时也可摄入，Agent 会从 PDF 和文件名提取信息并标记待核对项。

当前自动导出文件为 `raw/zotero/wiki-inbox.bib`，由 Zotero/Better BibTeX 更新，Agent 只读。把新论文加入 `Wiki Inbox` 后，应确认该文件出现对应 citation key，再请求摄入。

## 5. 如何提问

示例：

```text
根据知识库，比较 A≈130 区 transverse wobbling 与 signature-partner
解释所依赖的实验判据。区分观测事实、模型结果和作者解释，并给出处。
```

```text
检查 131Xe 的现有页面：哪些观测真正区分 wobbling 与普通 signature splitting？
缺少哪些测量？
```

```text
把 γ-band staggering 对 γ-soft 和 γ-rigid 的判别写成证据矩阵，
同时列出模型前提和可能失效的情况。
```

Agent 应先检索 `knowledge/`，再回到 `knowledge/sources/` 和 `raw/` 核验，不得用模型记忆冒充本库证据。

## 6. 如何用于科研写作

推荐写作链：

```text
source 页 → nucleus/band/concept/model/observable 页
→ synthesis 证据矩阵 → outputs 中的文章或报告草稿
```

- `source` 保存一篇文献实际说了什么；
- `concept/model/observable` 积累跨文献认识；
- `synthesis` 专门处理证据、反证和竞争解释；
- `outputs` 承载论文段落、综述、报告和幻灯片。

要求 Agent 起草时可使用：

```text
根据 knowledge/synthesis/相关页面起草一节论文。
每个物理判断必须能追到 source 页；知识库未覆盖的引用用 TODO 标记，
不要编造参考文献。
```

## 7. 会话记忆和版本保护

聊天不是长期记忆。每次实质任务结束后，Agent 应更新：

- `system/handoff.md`
- `system/log.md`
- `knowledge/index.md`
- 必要时更新 `knowledge/overview.md` 与 `knowledge/questions.md`

每次还必须判断本指南是否需要更新。

Git 只管理 Markdown、规则和小型文本资产。PDF、数据和个人材料默认不进入普通 Git 历史；它们由 Zotero、原始存储和备份负责。

私有远端仓库为 `chenhx6/wiki-nuclear-structure`。首次连接本地仓库时运行：

```powershell
git remote add origin https://github.com/chenhx6/wiki-nuclear-structure.git
git push -u origin main
```

若 `git remote -v` 已显示 `origin`，不要重复执行 `remote add`。未发表解释、合作材料与审稿内容应继续留在被忽略的私有目录，不进入远端。

## 8. 常用指令

```text
按 check.md 检查本次改动，不自动合并科学概念。
```

```text
更新 handoff，写清本次完成内容、未解决问题和下一步。
```

```text
检查 USER_GUIDE、AGENTS、schema、templates 是否需要同步。
```

```text
做一次反向检验：主动寻找反证、替代解释和证据依赖关系。
```
