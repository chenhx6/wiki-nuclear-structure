

请对当前知识库做一次完整的系统状态核查，逐项验证以下内容，
输出核查报告到 wiki/outputs/system-audit-YYYY-MM-DD.md：

## 一、目录结构完整性
验证 raw/ 和 wiki/ 下所有子目录是否存在

## 二、CLAUDE.md 关键规则覆盖（逐项输出是/否）
- [ ] Raw 层不可变原则
- [ ] INGEST 来源类型判断（personal-writing vs 外部来源）
- [ ] INGEST SHA-256 哈希记录规则
- [ ] INGEST 去重检测（含 canonical_source 译文检测）
- [ ] INGEST 概念名称对齐检查（aliases 匹配）
- [ ] INGEST QUESTIONS.md 匹配检查
- [ ] INGEST 缺少 frontmatter 的处理规则
- [ ] INGEST URL 直接输入的 defuddle 调用规则
- [ ] INGEST 最后一步执行 qmd update
- [ ] QUERY 使用 qmd query 优先（含 fallback）
- [ ] QUERY 来源溯源要求（追溯到 sources 页）
- [ ] QUERY Confidence Notes 输出要求
- [ ] QUERY 高价值答案持久化规则
- [ ] confidence: high 必须用户确认，禁止自动晋升
- [ ] LINT 运行 scripts/lint.py（9 项检查）
- [ ] LINT 执行 qmd 索引同步验证
- [ ] REFLECT Stage 0 反向检验
- [ ] REFLECT Stage 1 使用 qmd multi-get 批量扫描
- [ ] REFLECT Stage 3 Gap Analysis
- [ ] MERGE 跨语言合并专项流程（redirect 文件保留）
- [ ] Wikilink 格式铁律（英文小写连字符）
- [ ] Wikilink 禁止清单（系统文件不得被 wikilink）
- [ ] Wiki 语言规范（中文写作，英文 slug，aliases 跨语言）
- [ ] 系统文件隔离规则（graph-excluded: true）
- [ ] 文档维护规则（CLAUDE.md 更新时同步 USER_GUIDE.md）

## 三、模板文件完整性（逐项验证必需字段）
- [ ] source-template.md 含 language / canonical_source
- [ ] personal-writing-template.md 含 type: personal-writing / confidence_at_writing
- [ ] concept-template.md 含 aliases / domain_volatility / last_reviewed / Evolution Log
- [ ] entity-template.md 含 aliases
- [ ] synthesis-template.md 含 Counter-evidence / Confidence Notes / Limitations

## 四、系统文件隔离状态
- [ ] wiki/log.md 含 graph-excluded: true
- [ ] wiki/index.md 含 graph-excluded: true
- [ ] wiki/overview.md 含 graph-excluded: true
- [ ] wiki/QUESTIONS.md 含 graph-excluded: true

## 五、scripts/lint.py 检查项（验证是否包含全部 9 项）

## 六、qmd 状态
- qmd status 输出（索引文件数量）
- 执行一次测试查询，输出 top 3 结果

输出：✅ 通过 / ❌ 未通过（含缺失内容） / 建议修复优先级
