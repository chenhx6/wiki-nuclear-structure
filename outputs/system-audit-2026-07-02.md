---
type: output
title: "System audit 2026-07-02"
aliases: []
created: 2026-07-02
updated: 2026-07-02
status: active
review_status: unreviewed
output_type: system-audit
scope: automated-lint-implementation
sources: []
tags: [audit, lint, automation]
---

# 系统核查报告：2026-07-02

## 范围

检查自动 lint 实现、`137Nd` 人工复核写回、Git/远端状态、用户指南和治理规则同步。

## 自动 lint 结果

```text
SUMMARY pages=61 wikilinks=372 hashes=7 errors=0 warnings=0 info=0
```

- 正式科学页：61；
- Wikilink：372，断链 0；
- source SHA-256：7/7 本地核验通过；
- frontmatter/type/字段 error：0；
- A/Z/N 与已解析反应道 error：0；
- index 遗漏、重复 slug、alias collision：0；
- 页面级 `needs-human-review`：0。

## 测试结果

Python 标准库 `unittest` 共 6 项，全部通过：

1. frontmatter scalar/list 解析；
2. 缺失 frontmatter fence 检出；
3. fenced code 内示例 Wikilink 排除；
4. 未经确认的 `confidence: high` 检出；
5. `A != Z+N` 故障检出；
6. 当前仓库集成 lint 无 error。

## 通过

- `main` 跟踪 `origin/main`，任务开始时工作树干净；
- `.obsidian` 与 `wiki-inbox.bib` 已由用户提交并推送；
- `137Nd` 两个双重带页及 signature-splitting 综合已记录为 `human-reviewed`；
- 自动 lint 只读检查科学页，不自动修改、合并或升级物理解读；
- `AGENTS.md`、`check.md`、LINT workflow 和 `USER_GUIDE.md` 已同步；
- GitHub Actions workflow 已建立，使用 Python 3.12 且不依赖第三方包。

## 警告

- 无本地 lint warning。

## 未执行

- GitHub Actions 首次远端运行：需在本次提交 push 后确认；
- qmd 语义检查：未安装，且当前规模不要求。

## 结论

自动 lint 已可作为提交前结构门和 GitHub 持续检查。科学解释、证据独立性、竞争解释及页面合并仍由人工清单和用户审阅决定。
