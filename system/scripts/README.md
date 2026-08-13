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
5. 先复制到 staging，执行第一次 SHA-256 校验；
6. 调用火绒个人版“自定义查杀”，等待扫描返回并暂停更新；
7. 只有用户确认火绒显示“扫描完成、发现风险 0”后，才执行第二次 staging SHA-256 校验；
8. 两次校验一致后，才同步到 `C:\Users\你的用户名\.codex\skills`。

更新成功后请重启 Codex，使新的 skill 列表重新加载。脚本不会安装 Python、MCP、API key、Node 包或浏览器依赖，也不会自动修改 Wiki、commit 或 push。

## 什么时候停下来

出现上游删除或重命名技能、Git 历史异常、目录链接、子模块、可疑二进制、异常大文件、校验失败或复制失败时，脚本会停止并显示：

```text
UPDATE STOPPED SAFELY
The existing Nature Skills installation was not changed.
Please send this result to Codex for review.
```

这表示已安装的 Codex skills 保持原样。请把窗口中的完整提示复制给 Codex，让我先审核上游变化。不要手工删除旧目录，也不要反复点击运行。

如果没有找到火绒、火绒无法启动、扫描异常、扫描超时、用户输入 `N`、输入为空、无法取得输入，或用户没有明确输入 `Y/y`，更新都会安全停止并恢复原有安装。火绒发现风险、结果不明确、扫描窗口没有出现、扫描后 staging 内容发生变化，也都会显示同样的安全停止提示。

## 火绒安全门

更新器只使用固定安装位置：

`%ProgramFiles(x86)%\Huorong\Sysdiag\bin\HipsMain.exe`

它以等价于下面的参数启动火绒自定义查杀，并等待本次 `HipsMain.exe` 进程最多 12 小时：

```text
HipsMain.exe -s "<absolute staging path>"
```

火绒进程返回后，更新器不会根据 `HipsMain.exe` 的退出码判断安全。退出码只作为调用诊断；即使退出码为 `0`，也必须由用户查看火绒 GUI，并且只有明确输入 `Y` 才能继续。用户确认后，脚本重新计算 staging 中每个 skill 的 SHA-256；任何新增、删除或修改都会阻断激活并回滚。

这里的 12 小时只限制火绒进程迟迟不返回的情况。火绒进程返回后，脚本在 PowerShell/CMD 窗口中等待你的 `Y` 或 `N` 输入；这个人工确认提示没有 12 小时倒计时，直到你输入或关闭窗口为止。

本更新器不自动点击火绒界面，不读取火绒日志或内部数据库，不关闭实时防护，也不添加白名单。火绒扫描和人工确认不能证明上游 Markdown、Python、JavaScript 等文本或代码不存在恶意指令或隐藏逻辑；遇到安全阻断时，应把完整窗口提示和火绒风险信息交给 Codex 审核。

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

本更新器信任固定的 GitHub 上游，并通过快进更新、固定 remote、目录白名单、无链接/无子模块、危险文件阻断、临时目录、火绒自定义查杀、用户明确确认、两次 staging SHA-256、最终 SHA-256 和回退备份降低风险。它不会执行上游仓库中的 Python、MJS、Shell 或其他安装脚本。

这些措施不能证明开源发布方永远不会提交恶意的 Markdown 指令或正常脚本代码。遇到安全阻断时交给 Codex 审核，比强行继续更可靠；一键更新的便利性和“自动接受上游内容”之间仍然存在不可消除的信任关系。
