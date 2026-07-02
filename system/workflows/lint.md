---
type: system-workflow
graph-excluded: true
operation: lint
updated: 2026-07-02
---

# LINT：健康检查流程

## 自动入口

默认从仓库根目录运行：

```powershell
python system/scripts/wiki_lint.py --fail-on error
```

规则由 `system/lint-config.json` 声明，实现位于 `system/scripts/wiki_lint.py`。脚本只依赖 Python 标准库。

常用变体：

```powershell
python system/scripts/wiki_lint.py --fail-on warning
python system/scripts/wiki_lint.py --format json --output outputs/lint-report.json
python -m unittest discover -s system/tests -p "test_*.py" -v
```

退出码只表示是否达到 `--fail-on` 阈值。默认 error 阻止提交，warning/info 保留给人工判断。

## 检查层级

### P0：完整性

- raw 文件是否被修改；
- source 页哈希是否匹配；
- YAML 是否可解析；
- 核心字段是否缺失；
- Wikilink 是否断裂。

自动覆盖：必需目录、frontmatter 可解析性、字段与枚举、type/目录对应、slug、断链、index 覆盖、source 路径与 SHA-256、未经确认的 `confidence: high`。

### P1：科学可靠性

- 关键结论是否有来源和 locator；
- 陈述类型是否混淆；
- `high` 是否有人工确认；
- 竞争解释是否被覆盖；
- 核素 A/Z/N、反应道、单位和不确定度是否自洽。

自动覆盖其中可机械判断的 A/Z/N、元素 Z 和标准 `(beam,xn)` 反应道守恒；主张类型、证据强度、单位语境和物理解读仍需人工审阅。

### P2：知识图谱健康

- slug 或 aliases 重复；
- 同一能带因不同解释而重复建页；
- 孤立页、空壳页和缺少反向链接的来源；
- index 遗漏；
- 长期未复核的高波动页面。

自动覆盖 slug/alias 冲突、孤立页提示和 index 遗漏；“两页是否物理等价”不得自动决定。

## 执行原则

- 检查可以自动化，科学修复不能默认自动化。
- 合并、重命名和物理解读变更必须先展示影响。
- qmd 未安装时应报告“未执行”，使用 `rg`、索引和直接读取降级，不得伪造 qmd 状态。
- 本地存在 PDF 时执行 source SHA-256；GitHub Actions 因 PDF 不入 Git，会把缺失 PDF 报为 warning 而不是伪装成已校验。
- 日常 lint 可只输出到终端；正式阶段审计写入 `outputs/system-audit-YYYY-MM-DD.md`。
- 正式报告完成后更新 log 和 handoff。

## GitHub Actions

`.github/workflows/wiki-lint.yml` 在相关 push、pull request 和手动触发时执行测试和 lint。CI 失败表示结构性 error；科学待审状态不会自动改写，也不会仅因 `needs-human-review` 使 CI 失败。
