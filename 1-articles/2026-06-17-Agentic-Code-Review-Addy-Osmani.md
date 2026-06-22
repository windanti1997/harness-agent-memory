---
tags: [article, code-review, AI-agent, engineering, addyosmani]
date: 2026-06-17
source: Twitter @addyosmani
status: inbox
---

# Agentic Code Review — Addy Osmani

## 一句话总结
Coding agent 变得极强之后，工程的核心难点从"写代码"转移到了"决定是否信任代码"，Code Review 成为当前软件工程中最具杠杆作用的技能。

## 核心要点

### 2026 年数据揭示的矛盾
- AI 用户产出约 **4x 原始代码量**，但真实生产力提升仅 **12%**
- **Code churn 上升 861%**，缺陷率从 9% 升至 54%
- **Review 时长暴增 441.5%**
- **零审查合并的 PR 增加 31.3%**——不是有意跳过，而是审查者根本跟不上

### 为什么 Review 变难了
- 以前：人类写代码慢 → 审查者读代码快 → review 自然跟上
- 现在：agent 写 1000 行比人读一段还快 → 瓶颈转移到"人确信代码是正确的"
- Agent 的推理过程通常被丢弃，reviewer 成了"第一个看到这段代码的人"

### 三种不同处境
1. **个人项目/零用户**：可轻 review，靠测试兜底（但不能跳过验证）
2. **有了用户**：bug 开始伤人，review 的知识共享功能开启
3. **大团队/老代码库**：每个数据都全力冲击，review 在做多件事

### 解决方案方向
- Agent 写代码时应附上决策日志（推理了什么、排除了什么）
- AI 审 AI 能抓到真实 bug，但不能替代人类的"这个功能该不该做"判断
- Review 的最有趣部分就是人的判断——这是最值得保留的工作

## 与我相关的启发
- 做 AI 出海工具时，Review 能力（AI Code Review）可能是刚需
- 个人项目可以轻 review 但必须重测试

## 原文链接
- https://x.com/addyosmani/status/2066595308629594363
- https://addyosmani.com/blog/agentic-code-review/
