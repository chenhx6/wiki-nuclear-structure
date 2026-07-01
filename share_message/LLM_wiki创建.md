

请认真阅读下面karpathy的思想：

# LLM Wiki



A pattern for building personal knowledge bases using LLMs.

This is an idea file, it is designed to be copy pasted to your own LLM Agent (e.g. OpenAI Codex, Claude Code, OpenCode / Pi, or etc.). Its goal is to communicate the high level idea, but your agent will build out the specifics in collaboration with you.

## The core idea



Most people's experience with LLMs and documents looks like RAG: you upload a collection of files, the LLM retrieves relevant chunks at query time, and generates an answer. This works, but the LLM is rediscovering knowledge from scratch on every question. There's no accumulation. Ask a subtle question that requires synthesizing five documents, and the LLM has to find and piece together the relevant fragments every time. Nothing is built up. NotebookLM, ChatGPT file uploads, and most RAG systems work this way.

The idea here is different. Instead of just retrieving from raw documents at query time, the LLM **incrementally builds and maintains a persistent wiki** — a structured, interlinked collection of markdown files that sits between you and the raw sources. When you add a new source, the LLM doesn't just index it for later retrieval. It reads it, extracts the key information, and integrates it into the existing wiki — updating entity pages, revising topic summaries, noting where new data contradicts old claims, strengthening or challenging the evolving synthesis. The knowledge is compiled once and then *kept current*, not re-derived on every query.

This is the key difference: **the wiki is a persistent, compounding artifact.** The cross-references are already there. The contradictions have already been flagged. The synthesis already reflects everything you've read. The wiki keeps getting richer with every source you add and every question you ask.

You never (or rarely) write the wiki yourself — the LLM writes and maintains all of it. You're in charge of sourcing, exploration, and asking the right questions. The LLM does all the grunt work — the summarizing, cross-referencing, filing, and bookkeeping that makes a knowledge base actually useful over time. In practice, I have the LLM agent open on one side and Obsidian open on the other. The LLM makes edits based on our conversation, and I browse the results in real time — following links, checking the graph view, reading the updated pages. Obsidian is the IDE; the LLM is the programmer; the wiki is the codebase.

This can apply to a lot of different contexts. A few examples:

- **Personal**: tracking your own goals, health, psychology, self-improvement — filing journal entries, articles, podcast notes, and building up a structured picture of yourself over time.
- **Research**: going deep on a topic over weeks or months — reading papers, articles, reports, and incrementally building a comprehensive wiki with an evolving thesis.
- **Reading a book**: filing each chapter as you go, building out pages for characters, themes, plot threads, and how they connect. By the end you have a rich companion wiki. Think of fan wikis like [Tolkien Gateway](https://tolkiengateway.net/wiki/Main_Page) — thousands of interlinked pages covering characters, places, events, languages, built by a community of volunteers over years. You could build something like that personally as you read, with the LLM doing all the cross-referencing and maintenance.
- **Business/team**: an internal wiki maintained by LLMs, fed by Slack threads, meeting transcripts, project documents, customer calls. Possibly with humans in the loop reviewing updates. The wiki stays current because the LLM does the maintenance that no one on the team wants to do.
- **Competitive analysis, due diligence, trip planning, course notes, hobby deep-dives** — anything where you're accumulating knowledge over time and want it organized rather than scattered.

## Architecture



There are three layers:

**Raw sources** — your curated collection of source documents. Articles, papers, images, data files. These are immutable — the LLM reads from them but never modifies them. This is your source of truth.

**The wiki** — a directory of LLM-generated markdown files. Summaries, entity pages, concept pages, comparisons, an overview, a synthesis. The LLM owns this layer entirely. It creates pages, updates them when new sources arrive, maintains cross-references, and keeps everything consistent. You read it; the LLM writes it.

**The schema** — a document (e.g. CLAUDE.md for Claude Code or AGENTS.md for Codex) that tells the LLM how the wiki is structured, what the conventions are, and what workflows to follow when ingesting sources, answering questions, or maintaining the wiki. This is the key configuration file — it's what makes the LLM a disciplined wiki maintainer rather than a generic chatbot. You and the LLM co-evolve this over time as you figure out what works for your domain.

## Operations



**Ingest.** You drop a new source into the raw collection and tell the LLM to process it. An example flow: the LLM reads the source, discusses key takeaways with you, writes a summary page in the wiki, updates the index, updates relevant entity and concept pages across the wiki, and appends an entry to the log. A single source might touch 10-15 wiki pages. Personally I prefer to ingest sources one at a time and stay involved — I read the summaries, check the updates, and guide the LLM on what to emphasize. But you could also batch-ingest many sources at once with less supervision. It's up to you to develop the workflow that fits your style and document it in the schema for future sessions.

**Query.** You ask questions against the wiki. The LLM searches for relevant pages, reads them, and synthesizes an answer with citations. Answers can take different forms depending on the question — a markdown page, a comparison table, a slide deck (Marp), a chart (matplotlib), a canvas. The important insight: **good answers can be filed back into the wiki as new pages.** A comparison you asked for, an analysis, a connection you discovered — these are valuable and shouldn't disappear into chat history. This way your explorations compound in the knowledge base just like ingested sources do.

**Lint.** Periodically, ask the LLM to health-check the wiki. Look for: contradictions between pages, stale claims that newer sources have superseded, orphan pages with no inbound links, important concepts mentioned but lacking their own page, missing cross-references, data gaps that could be filled with a web search. The LLM is good at suggesting new questions to investigate and new sources to look for. This keeps the wiki healthy as it grows.

## Indexing and logging



Two special files help the LLM (and you) navigate the wiki as it grows. They serve different purposes:

**index.md** is content-oriented. It's a catalog of everything in the wiki — each page listed with a link, a one-line summary, and optionally metadata like date or source count. Organized by category (entities, concepts, sources, etc.). The LLM updates it on every ingest. When answering a query, the LLM reads the index first to find relevant pages, then drills into them. This works surprisingly well at moderate scale (~100 sources, ~hundreds of pages) and avoids the need for embedding-based RAG infrastructure.

**log.md** is chronological. It's an append-only record of what happened and when — ingests, queries, lint passes. A useful tip: if each entry starts with a consistent prefix (e.g. `## [2026-04-02] ingest | Article Title`), the log becomes parseable with simple unix tools — `grep "^## \[" log.md | tail -5` gives you the last 5 entries. The log gives you a timeline of the wiki's evolution and helps the LLM understand what's been done recently.

## Optional: CLI tools



At some point you may want to build small tools that help the LLM operate on the wiki more efficiently. A search engine over the wiki pages is the most obvious one — at small scale the index file is enough, but as the wiki grows you want proper search. [qmd](https://github.com/tobi/qmd) is a good option: it's a local search engine for markdown files with hybrid BM25/vector search and LLM re-ranking, all on-device. It has both a CLI (so the LLM can shell out to it) and an MCP server (so the LLM can use it as a native tool). You could also build something simpler yourself — the LLM can help you vibe-code a naive search script as the need arises.

## Tips and tricks



- **Obsidian Web Clipper** is a browser extension that converts web articles to markdown. Very useful for quickly getting sources into your raw collection.
- **Download images locally.** In Obsidian Settings → Files and links, set "Attachment folder path" to a fixed directory (e.g. `raw/assets/`). Then in Settings → Hotkeys, search for "Download" to find "Download attachments for current file" and bind it to a hotkey (e.g. Ctrl+Shift+D). After clipping an article, hit the hotkey and all images get downloaded to local disk. This is optional but useful — it lets the LLM view and reference images directly instead of relying on URLs that may break. Note that LLMs can't natively read markdown with inline images in one pass — the workaround is to have the LLM read the text first, then view some or all of the referenced images separately to gain additional context. It's a bit clunky but works well enough.
- **Obsidian's graph view** is the best way to see the shape of your wiki — what's connected to what, which pages are hubs, which are orphans.
- **Marp** is a markdown-based slide deck format. Obsidian has a plugin for it. Useful for generating presentations directly from wiki content.
- **Dataview** is an Obsidian plugin that runs queries over page frontmatter. If your LLM adds YAML frontmatter to wiki pages (tags, dates, source counts), Dataview can generate dynamic tables and lists.
- The wiki is just a git repo of markdown files. You get version history, branching, and collaboration for free.

## Why this works



The tedious part of maintaining a knowledge base is not the reading or the thinking — it's the bookkeeping. Updating cross-references, keeping summaries current, noting when new data contradicts old claims, maintaining consistency across dozens of pages. Humans abandon wikis because the maintenance burden grows faster than the value. LLMs don't get bored, don't forget to update a cross-reference, and can touch 15 files in one pass. The wiki stays maintained because the cost of maintenance is near zero.

The human's job is to curate sources, direct the analysis, ask good questions, and think about what it all means. The LLM's job is everything else.

The idea is related in spirit to Vannevar Bush's Memex (1945) — a personal, curated knowledge store with associative trails between documents. Bush's vision was closer to this than to what the web became: private, actively curated, with the connections between documents as valuable as the documents themselves. The part he couldn't solve was who does the maintenance. The LLM handles that.

## Note



This document is intentionally abstract. It describes the idea, not a specific implementation. The exact directory structure, the schema conventions, the page formats, the tooling — all of that will depend on your domain, your preferences, and your LLM of choice. Everything mentioned above is optional and modular — pick what's useful, ignore what isn't. For example: your sources might be text-only, so you don't need image handling at all. Your wiki might be small enough that the index file is all you need, no search engine required. You might not care about slide decks and just want markdown pages. You might want a completely different set of output formats. The right way to use this is to share it with your LLM agent and work together to instantiate a version that fits your needs. The document's only job is to communicate the pattern. Your LLM can figure out the rest.



```
根据上面思想，请帮我从零搭建一个基于 Karpathy LLM Wiki 思路的个人知识库系统。
完整执行以下所有步骤，不要遗漏任何细节。

## 一、创建目录结构

创建以下目录：
raw/articles/
raw/clippings/
raw/images/
raw/pdfs/
raw/notes/
raw/personal/
wiki/sources/
wiki/concepts/
wiki/entities/
wiki/synthesis/
wiki/templates/
outputs/
scripts/

## 二、创建系统文件

### wiki/index.md
frontmatter 包含：type: system-index, graph-excluded: true
正文包含：Sources 列表（按日期倒序）、Concepts 列表、Entities 列表、Recent Synthesis 列表、Outputs 列表

### wiki/log.md
frontmatter 包含：type: system-log, graph-excluded: true
说明：仅追加操作日志，格式为「YYYY-MM-DD | 操作类型 | 说明」

### wiki/overview.md
frontmatter 包含：type: system-overview, graph-excluded: true
包含：Knowledge Base Health Dashboard 表格（总来源数、高置信度概念数、开放问题数、Stale 页面数）

### wiki/QUESTIONS.md
frontmatter 包含：type: system-questions, graph-excluded: true
包含：Open Questions 列表（checkbox 格式）、Resolved Questions 列表

## 三、创建页面模板

### wiki/templates/source-template.md
frontmatter 字段：type, title, date, source_url, domain, author, tags, processed, raw_file, raw_sha256, last_verified, possibly_outdated, language, canonical_source
正文结构：## Summary、## Key Points、## Concepts Extracted、## Entities Extracted、## Contradictions（与其他来源的分歧）、## My Notes

### wiki/templates/personal-writing-template.md
frontmatter 字段：type: personal-writing, title, date, status(draft/published/deprecated), topic_tags, confidence_at_writing(low/medium/high), superseded_by, raw_file, raw_sha256, last_verified, tags, processed
正文结构：## Core Argument、## Key Claims、## Evidence Referenced、## Limitations

### wiki/templates/concept-template.md
frontmatter 字段：type: concept, title（中文主名称）, date, updated, tags, source_count, confidence(low/medium/high), domain_volatility(low/medium/high), last_reviewed, aliases（数组，存储中英文所有叫法）
正文结构：## Definition（首行用「中文名（English Name）」格式）、## Key Points、## My Position、## Contradictions、## Sources（仅 wikilinks 列表）、## Evolution Log（每次更新追加一条）

### wiki/templates/entity-template.md
frontmatter 字段：type: entity, title, date, tags, entity_type(person/tool/institution/paper), aliases
正文结构：## Description、## Key Contributions、## Related Concepts、## Sources

### wiki/templates/synthesis-template.md
frontmatter 字段：type: synthesis, title, date, tags, source_count, confidence
正文结构：## Thesis、## Evidence、## Counter-evidence（Stage 0 反向检验结果）、## Synthesis、## Confidence Notes、## Limitations、## Sources

## 四、创建 scripts/lint.py

lint.py 执行以下 9 项检查，完成后将报告写入 wiki/outputs/lint-YYYY-MM-DD.md（frontmatter 含 graph-excluded: true）：

1. YAML frontmatter 合法性：所有 wiki/ 下的 .md 文件是否有合法 YAML frontmatter（含 type 和 date）
2. Broken Wikilinks：[[xxx]] 引用了不存在的页面
3. Index 一致性：wiki/index.md 中标记的文件是否都实际存在
4. Stub 页面：正文少于 100 字的空壳页面
5. 近重复概念名称：slug 名称 Jaccard 相似度 > 0.7 的 concept 页对
6. SHA-256 完整性：raw 文件哈希与 source 页 raw_sha256 字段比对（⚠ SOURCE MODIFIED）
7. Stale 页面：超过 domain_volatility 时效阈值（high=90天, medium=180天, low=365天）
8. 跨语言重复：source URL 相似度检测 + 不同 concept 页的 aliases 字段重叠检测
9. Wikilink 格式规范：检测非英文小写连字符格式的 wikilink（如中文词汇 [[价值投资]]）及别名断链

## 五、创建 CLAUDE.md（行为契约）

CLAUDE.md 是 LLM 的核心行为规范，必须包含以下所有章节：

### 系统概述
- 三层架构说明（Raw/Wiki/Outputs）
- 核心原则：你完全拥有 wiki/ 目录的读取和写入权限，raw/ 目录由我（人类）拥有，你只能读取，绝不修改。

### INGEST 操作规范
触发词：ingest、摄入、处理这个

来源类型判断（优先级由高到低）：
1. frontmatter 含 type: personal-writing → 走「个人写作」流程
2. 文件路径包含 raw/personal/ → 走「个人写作」流程
3. frontmatter 含 type: pdf-reference → 走「PDF 参考」流程
4. 其他 → 走「外部来源」标准流程

缺少 frontmatter 时的处理规则：
- 从文件第一个 # 标题提取 title；若无标题则从文件名推断
- source 字段留空，在 wiki/sources/<slug>.md 中标注「来源未知」
- date 使用文件系统修改时间
- 不中断 INGEST，但在 log.md 记录「警告：来源文件缺少标准 frontmatter」

**外部来源标准流程（11 步）**：
1. 读取目标原始来源（raw/ 中的文件，只读）
2. 计算原始文件的 SHA-256 哈希（Python hashlib）
3. 与用户确认核心要点（逐一摄入，保持参与感）
4. 生成 slug（小写英文，用连字符，例如 `attention-is-all-you-need`）
5. 创建 wiki/sources/<slug>.md（使用 source-template.md），frontmatter 中写入：
   - `raw_file`: 相对路径（如 `raw/articles/filename.md`）
   - `raw_sha256`: SHA-256 哈希值
   - `last_verified`: 摄入日期（YYYY-MM-DD）
   - 若来源发表日期超过 2 年前：标注 `possibly_outdated: true`，并在摘要末尾添加提示
6. **概念名称对齐检查**（提取概念之前必须执行）：
   - 将每个提取到的概念名称统一映射为英文小写连字符 slug（例如「第一性原理」→「first-principles-thinking」）
   - 在 wiki/concepts/ 中查找该 slug 是否已存在对应文件
   - **同时检查所有已有 concept 页的 `aliases` 字段**：遍历 wiki/concepts/*.md，解析每页 frontmatter 的 aliases 列表，检查是否包含当前概念名称（支持中英文别名匹配）
   - 若通过 slug 匹配或通过 aliases 匹配到已有页面：更新已有页面，不创建新页面
   - 若找不到任何匹配：才创建新页面，并在 frontmatter 的 `aliases` 中同时填入中文名和英文名（如果有的话）
7. 为每个提取到的概念：
   - 如果 wiki/concepts/<concept>.md 已存在：更新它，追加新来源引用，在 Evolution Log 追加记录，更新 source_count 和 confidence，**同时更新 last_reviewed 字段**
   - 如果不存在：创建新文件（使用 concept-template.md），**同时在 aliases 字段填入该概念的中英文名称**
   - **Evolution Log 追加规则**：
     - 若本次来源与当前 Definition 一致：写「强化」
     - 若有修正：写「修正：[具体变化]」
     - 若相互矛盾：写「新增分歧：[分歧内容]，见 Contradictions 节」
     - 格式：`- YYYY-MM-DD（N sources）：[本次认知变化的一句话描述]`
8. 为每个提取到的实体：同上逻辑
9. 更新 wiki/index.md：将来源从 Unprocessed 移动到 Processed
10. 读取 wiki/QUESTIONS.md，检查本次来源是否能回答开放问题：
   - 若能：提示用户「此来源可能回答了开放问题：[问题描述]，是否立即执行 QUERY？」
   - 用户确认后，执行 QUERY 并将结果写入 wiki/synthesis/，同时在 QUESTIONS.md 中将该问题移入 Answered
11. 在 wiki/log.md 末尾追加：`YYYY-MM-DD HH:MM | ingest | [来源标题]`

**个人写作流程（不同于标准流程）**：
- 不生成 Summary 节，跳过客观摘要
- 核心论点写入相关 concept 页的 ## My Position 节（标注「个人认知」）
- 不参与 confidence 的 source_count 计数（避免用自己的文章给自己背书）
- 若文章中引用了外部来源，提取这些引用并尝试与已有 wiki/sources/ 页面建立 wikilinks
- raw_sha256 哈希机制同样适用
- Evolution Log 记录：「YYYY-MM-DD 个人写作 [[slug]] 确立了对此概念的明确立场」

### QUERY 操作规范
触发词：直接提问，或「根据我的知识库」

执行步骤：
Step Q1：执行 qmd query "<用户问题>" --json，获取 top 5 相关页面（若 qmd 报错则降级读取 wiki/index.md）
Step Q2：逐一完整读取 top 5 文件
Step Q3：合成答案，每个核心结论必须溯源到具体 wiki/sources/<slug>.md（不允许只引用 concept 页）；注明各来源 confidence 级别；来源相互矛盾时显式标注分歧
Step Q4：若答案具有复用价值，写入 wiki/outputs/YYYY-MM-DD-<topic>.md，文件 frontmatter 含 graph-excluded: true；在输出末尾包含「⚠ Confidence Notes」节；更新 wiki/index.md 的 Recent Synthesis 列表；追加 wiki/log.md

输出格式按问题类型：
- 普通问题 → Markdown 正文
- 比较类 → Markdown 表格
- 演示类 → Marp 幻灯片（frontmatter 加 marp: true）
- 趋势类 → Python matplotlib 代码块
- 清单类 → 结构化 bullet list

### LINT 操作规范
触发词：lint、检查、健康检查

执行步骤：
1. 运行 scripts/lint.py（包含 9 项检查）
2. 将报告写入 wiki/outputs/lint-YYYY-MM-DD.md（frontmatter 含 graph-excluded: true）
3. 执行 qmd status，对比索引文件数与 wiki/ 实际 .md 文件数（排除系统文件）；若索引落后则执行 qmd add wiki/，在报告中记录
4. 向用户展示摘要并询问是否修复

### REFLECT 操作规范
触发词：reflect、综合分析、发现规律

四阶段执行：
Stage 0（反向检验）：在生成任何合成结论之前，主动搜索反驳证据。若无反对来源，在 Limitations 节标注「⚠ 回音室风险：未找到反驳来源，结论可能存在确认偏差」
Stage 1（模式扫描）：使用 qmd 批量扫描
  qmd multi-get "wiki/concepts/*.md" -l 40
  qmd multi-get "wiki/entities/*.md" -l 40
  qmd multi-get "wiki/synthesis/*.md" -l 60
  识别跨来源模式、隐性关联、内容空白、矛盾对
Stage 2（深度合成）：对有证据支撑的候选项，完整读取相关页面，写入 wiki/synthesis/<topic>-synthesis.md
Stage 3（Gap Analysis）：
  - source_count = 1 且创建超过 30 天的孤立概念
  - 多处提及但无独立页面的概念/实体（隐性盲区）
  - 覆盖明显稀薄的主题领域
  - 输出到 wiki/outputs/gap-report-YYYY-MM-DD.md（frontmatter 含 graph-excluded: true）

完成后更新 wiki/overview.md 的 Health Dashboard，更新 wiki/index.md，追加 wiki/log.md

### MERGE 操作规范
触发词：merge、去重

同语言合并流程：
1. 与用户确认合并方案（绝不自动合并）
2. 主 slug 保留，被合并页面的 wikilinks 全部更新
3. 被合并文件替换为重定向文件（内容：redirect: [[wiki/concepts/主slug]]）
4. log.md 记录：YYYY-MM-DD | merge | [旧slug] → [主slug]

跨语言合并专项流程（区别于同语言 MERGE）：
1. 主 slug 保留英文
2. aliases 取两个页面的并集
3. Key Points / Sources / Evolution Log 按并集+去重合并
4. My Position 若两页都有，先向用户展示对比后再合并
5. 被合并的旧 slug 文件保留为 redirect 文件（确保旧 wikilinks 不 broken）
6. log.md 记录：YYYY-MM-DD | merge | [旧slug] → [主slug]（跨语言合并）

### ADD-QUESTION 操作规范
触发词：我想搞清楚、add question、记录一个问题

执行步骤：
1. 将问题规范化（提取核心疑问）
2. 追加到 wiki/QUESTIONS.md（checkbox 格式：- [ ] 问题内容（opened YYYY-MM-DD））
3. 追加 wiki/log.md

### Wikilink 使用规范

**格式铁律（不可违反）**：
所有 wikilink 目标必须使用英文小写连字符格式
✅ [[value-investing]]  ✅ [[attention-mechanism]]  ✅ [[warren-buffett]]
❌ [[价值投资]]（中文词汇）❌ [[ValueInvesting]]（驼峰）❌ [[value_investing]]（下划线）

中文名称的正确处理方式：
- 写入 concept 页 frontmatter 的 aliases 字段
- concept 页正文第一行使用括号标注：「价值投资（Value Investing）」
- wikilink 始终用英文 slug

**允许使用 wikilinks 的场景**：
- concept 页引用其他 concept/entity 页
- source 页引用 concept/entity 页
- synthesis 页引用 concept/source/entity 页

**禁止使用 wikilinks 的场景**：
- 任何页面不得引用系统文件：[[log]] [[index]] [[overview]] [[QUESTIONS]]
- 任何页面不得引用 lint 报告：[[outputs/lint-xxx]]
- 任何页面不得以操作名称作为 wikilink：[[ingest]] [[query]] [[reflect]]
- log.md 内部记录使用纯文本路径（如 wiki/sources/xxx.md），不使用 wikilinks

### Wiki 语言规范
- Wiki 层（concept/entity/synthesis 页）统一用中文写作
- concept 页 title 字段使用中文主名称（图谱节点显示）
- 英文术语在 concept 页首次出现时括号标注：「注意力机制（Attention Mechanism）」
- 所有 slug（文件名）统一用英文小写连字符，不使用中文文件名
- aliases 字段覆盖中英文所有叫法

### Confidence 更新规则
| 来源数量 | Confidence | 处理方式 |
|---|---|---|
| 1 个来源 | low | 自动设置 |
| 3+ 个来源 | medium | 自动设置 |
| 5+ 个来源且无重大矛盾 | 候选 high | 向用户展示 Definition 和 Sources 列表，等待确认 |
| 用户明确回复「确认」或「ok」| high | 才可设置 |

注意：个人写作（raw/personal/）不参与 source_count 计数

### Source Integrity Rules
- re-ingest 规则：若 lint 报告 ⚠ SOURCE MODIFIED，需重新摄入该文件并更新所有受影响的 concept/entity 页面，Evolution Log 记录「YYYY-MM-DD 来源更新：[[slug]] 哈希变更，内容已重新提取」
- 来源超过 2 年标注 possibly_outdated: true
- 矛盾来源必须在 source 页和 concept 页的 Contradictions 节显式记录，不得静默覆盖

### 系统文件隔离规则
以下文件的 frontmatter 必须含 graph-excluded: true，不参与 Obsidian 图谱：
- wiki/log.md
- wiki/index.md
- wiki/overview.md
- wiki/QUESTIONS.md
- wiki/outputs/ 下所有文件

### 文档维护规则
当 CLAUDE.md 规则更新时，同步更新 USER_GUIDE.md 对应章节，确保两份文档一致。

## 六、初始化 qmd 索引

执行：
qmd add wiki/
qmd status

## 八、执行完成后的验证

输出以下验证报告：
1. 目录结构树（tree -L 3 或 find）
2. CLAUDE.md 包含的章节列表
3. wiki/templates/ 下的模板文件列表
4. qmd status 输出（索引文件数量）
5. scripts/lint.py 包含的检查项列表
```