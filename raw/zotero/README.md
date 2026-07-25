# Zotero and Agent BibTeX stores

本目录包含两个所有权不同的书目入口：

- `wiki-inbox.bib` 由用户与 Zotero/Better BibTeX 管理。Agent 只读，不得重写、暂存或提交。
- `gpt.bib` 由 Agent 管理，只保存 `raw/papers/gpt/` 中已通过文件级与元数据校验的文献条目。

不要把 `zotero.sqlite`、登录凭据、Cookie、token 或个人联系信息复制到这里。

向 `gpt.bib` 追加条目前必须核对 author、title、journal、year、volume、pages/article number 与 DOI，并检查 `gpt.bib`、`wiki-inbox.bib` 和现有 source `citation_key`。相同 DOI 复用已有 key；不同 DOI 的 key 冲突依次添加 `a`、`b`。PDF 尚在 `_incoming`、首页或 DOI 不一致、文件签名无效、重复判断未完成时，不得写入。
