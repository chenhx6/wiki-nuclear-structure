---
type: system-guide
graph-excluded: true
---

# Nature Skills 更新器

## 日常使用

日常更新只需要双击：

`system\scripts\update_nature_skills.cmd`

脚本会自动完成以下工作：

1. 检查或创建 `C:\Users\你的用户名\ai-skills\nature-skills`；
2. 从固定上游 `https://github.com/Yuan1z0825/nature-skills.git` 获取最新版本；
3. 检查 Git 历史、技能目录、链接、子模块、危险二进制文件和异常大文件；
4. 在 `%LOCALAPPDATA%\NatureSkillsUpdater` 保存上一版回退备份；
5. 先复制到临时目录，再做 SHA-256 校验和 Microsoft Defender 扫描；
6. 校验通过后同步到 `C:\Users\你的用户名\.codex\skills`。

更新成功后请重启 Codex，使新的 skill 列表重新加载。脚本不会安装 Python、MCP、API key、Node 包或浏览器依赖，也不会自动修改 Wiki、commit 或 push。

## 什么时候停下来

出现上游删除或重命名技能、Git 历史异常、目录链接、子模块、可疑二进制、异常大文件、校验失败或复制失败时，脚本会停止并显示：

```text
UPDATE STOPPED SAFELY
The existing Nature Skills installation was not changed.
Please send this result to Codex for review.
```

这表示已安装的 Codex skills 保持原样。请把窗口中的完整提示复制给 Codex，让我先审核上游变化。不要手工删除旧目录，也不要反复点击运行。

如果电脑没有 Microsoft Defender 命令，脚本会给出黄色警告并继续使用结构检查、SHA-256 校验和回退机制。它不能识别所有恶意提示词或隐藏在正常 Python/JavaScript 中的恶意逻辑，因此杀毒扫描不是人工审核的替代品。

## 高级操作

一般不需要使用下面的命令。它们用于 Codex 排错或恢复：

```powershell
# 只检查当前 clone 与 Codex 安装，不联网、不复制、不删除
& 'E:\imp\wiki\system\scripts\update_nature_skills.ps1' -CheckOnly

# 使用当前 clone 的版本修复安装，不访问上游
& 'E:\imp\wiki\system\scripts\update_nature_skills.ps1' -NoPull

# 恢复上一次成功更新前的版本
& 'E:\imp\wiki\system\scripts\update_nature_skills.ps1' -Rollback
```

测试或迁移时可以覆盖路径：

```powershell
& 'E:\imp\wiki\system\scripts\update_nature_skills.ps1' `
    -RepoPath 'D:\test\nature-skills' `
    -DestinationPath 'D:\test\codex-skills' `
    -BackupRoot 'D:\test\nature-skills-backup'
```

`-NoPull`、`-CheckOnly` 和 `-Rollback` 不能同时使用。脚本使用命令级 `safe.directory`，不会修改全局 Git 配置；它只触碰 Nature Skills 自己的目录，不会覆盖其他 Codex skills。

## 回退备份

上一版备份保存在：

`%LOCALAPPDATA%\NatureSkillsUpdater\previous`

正常更新成功后，这里保存更新前实际存在的 Nature Skills。执行 `-Rollback` 后，当前版本会被保存为下一次可回退版本，因此可以在两个版本之间切换。

## 安全边界

本更新器信任固定的 GitHub 上游，并通过快进更新、固定 remote、目录白名单、无链接/无子模块、危险文件阻断、临时目录、Defender、SHA-256 和回退备份降低风险。它不会执行上游仓库中的 Python、MJS、Shell 或其他安装脚本。

这些措施不能证明开源发布方永远不会提交恶意的 Markdown 指令或正常脚本代码。遇到安全阻断时交给 Codex 审核，比强行继续更可靠；一键更新的便利性和“自动接受上游内容”之间仍然存在不可消除的信任关系。
