---
type: output
title: "Automation failure review 2026-07-02"
aliases: []
created: 2026-07-02
updated: 2026-07-02
status: active
review_status: human-reviewed
output_type: postmortem
scope: scheduled-continuation
sources: []
tags: [automation, postmortem, governance]
---

# 03:35 定时续跑故障复盘

## 结论

03:35 没有“续跑后输出丢失”，而是任务根本没有进入运行态。直接执行原因是到期时 Codex 本地调度进程不活跃。现有证据不能进一步区分应用退出、后台进程挂起或非标准休眠，因此不把其中任何一种写成已证实事实。

lint 实现和 GitHub Actions workflow 与这次唤醒失败是两条独立链路；本次没有证据表明 lint 脚本在 03:35 被调用过。

## 证据

- 原任务为 `kind = heartbeat`，预定北京时间 2026-07-02 03:35；
- 规则编码含 `FREQ=DAILY;COUNT=1`：语义上只出现一次，但界面突出显示为“每天”；
- 自动任务运行表中没有该任务的运行记录；
- Codex 本地日志在 01:12:56 至 08:56:43 之间没有活动，覆盖 03:35；
- Windows System 日志在 00:00 至 09:30 未发现标准关机、启动或睡眠/唤醒事件。这排除了部分情形，但不足以证明应用为何不活跃；
- 任务后来已删除，不会再次触发。

## 根因分层

### 直接执行原因

到期时本地调度进程不活跃，因此没有创建 run、没有调用 lint，也没有界面输出。

### 设计原因

- 对约 3 小时的等待使用了更适合短时同线程续跑的 heartbeat；
- 把本地尽力调度表述成了“无需你操作”的完成保证；
- 没有把应用、调度服务和电脑保持可用列为前提；
- 没有设置“运行回执 + 产物核验”作为完成门。

### 表达原因

一次任务使用 `FREQ=DAILY;COUNT=1` 编码。虽然 `COUNT=1` 限制为一次，但界面显示“每天”，造成了与用户意图冲突的可见表达。

## 修复

- 超过 1 小时禁止使用 heartbeat；
- 跨额度窗口默认使用 `system/handoff.md` + 用户刷新后发送“继续”；
- 只有在确认常驻执行环境时，才使用较长时间的独立调度；
- 一次性任务必须在界面中无歧义地显示为一次；
- 没有运行回执时只能报告“未触发/未验证”；
- 只有核验实际产物后才能报告完成；
- 规则已同步到 `AGENTS.md`、`check.md`、`USER_GUIDE.md`、`system/memory.md` 和独立工作流。

## 本次处置

原定任务已由后续会话人工恢复并完成，过期任务不重新创建。GitHub Actions 私有页面当前因浏览器未登录而无法读取；这不改变本次本地调度未触发的结论。
