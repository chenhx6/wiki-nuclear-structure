---
type: system-integration
graph-excluded: true
updated: 2026-07-01
---

# Zotero 轻量连接约定

## 职责

- Zotero：书目、Collection、附件关系和人工标注的主库。
- `raw/papers/`：当前准备摄入的精选 PDF。
- `knowledge/sources/`：经过核验并可被 Wiki 引用的来源页。

## 为什么不直接操作 zotero.sqlite

运行中的数据库会被 Zotero 锁定；SQLite 内部 schema 不是本项目的稳定接口。Agent 不解除锁、不写数据库，也不以数据库备份替代 Zotero 本身。

## 推荐设置

1. 在 Zotero 建立 `Wiki Inbox` Collection。
2. 使用 Better BibTeX 为该 Collection 自动导出。
3. 建议导出路径：`raw/zotero/wiki-inbox.bib` 或 `raw/zotero/wiki-inbox.json`。
4. 保持稳定 citation key，推荐 `auth.lower + year + shorttitle` 一类可读格式。
5. 摄入时用 DOI、题名和 Zotero item key 三重查重。

`raw/zotero/` 仍由用户和 Zotero/Better BibTeX 管理，Agent 只读。

## 来源页映射

| Zotero/Better BibTeX | Source frontmatter |
|---|---|
| item key | `zotero_item_key` |
| citation key | `citation_key` |
| select link | `zotero_uri` |
| attachment path | `library_file` |
| DOI | `doi` |

## 标注

第一版不自动同步 1260 条历史标注。后续先选一篇论文试验“Zotero 标注 → Markdown 摘录 → source 页定位”，验证不会丢页码、颜色语义和批注作者后再扩大。

