# Literature acquisition manifests

每次 Nature-first 文献检索与下载使用独立 `run_id`，并把去除凭据后的精简记录保存为 `<run-id>.json`。这里记录的是获取链路，不是科学证据页，也不表示论文已经摄入或结论可信。

最低字段：

- `run_id`、`created_at`、`query`
- `candidate_title`、`doi`、`discovery_source`、`download_url`
- `sha256`、`pdf_verification`、`final_path`
- `bibtex_key`、`duplicate_status`、`failure_status`
- `workflow_status.download`、`workflow_status.verification`、`workflow_status.bibtex`、`workflow_status.ingest`

从 `nature-downloader` manifest 转录时必须删除 API key、密码、Cookie、token、机构会话、个人邮箱和其他认证信息。失败候选可保留状态与来源记录；无效候选文件在 Wiki 内删除，不写入 `gpt.bib`，也不进入 ingest。
