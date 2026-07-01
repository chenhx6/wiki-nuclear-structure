---
type: system-workflow
graph-excluded: true
operation: lint
updated: 2026-07-01
---

# LINT：健康检查流程

## 检查层级

### P0：完整性

- raw 文件是否被修改；
- source 页哈希是否匹配；
- YAML 是否可解析；
- 核心字段是否缺失；
- Wikilink 是否断裂。

### P1：科学可靠性

- 关键结论是否有来源和 locator；
- 陈述类型是否混淆；
- `high` 是否有人工确认；
- 竞争解释是否被覆盖；
- 核素 A/Z/N、反应道、单位和不确定度是否自洽。

### P2：知识图谱健康

- slug 或 aliases 重复；
- 同一能带因不同解释而重复建页；
- 孤立页、空壳页和缺少反向链接的来源；
- index 遗漏；
- 长期未复核的高波动页面。

## 执行原则

- 检查可以自动化，科学修复不能默认自动化。
- 合并、重命名和物理解读变更必须先展示影响。
- qmd 未安装时应报告“未执行”，使用 `rg`、索引和直接读取降级，不得伪造 qmd 状态。
- 报告写入 `outputs/system-audit-YYYY-MM-DD.md`。
- 报告完成后更新 log 和 handoff。
