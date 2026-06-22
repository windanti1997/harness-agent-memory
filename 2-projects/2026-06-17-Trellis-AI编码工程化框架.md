---
tags: [project, AI-coding, engineering-framework, tree-of-thought]
date: 2026-06-17
source: GitHub mindfold-ai/Trellis
status: inbox
---

# Trellis — 开箱即用的 AI 编码工程化框架

## 项目简介
AI 每次会话从零理解项目，记不住规范和记忆。Trellis 把规范、任务、记忆沉淀进仓库，让任意 Coding Agent 按统一工程标准实践。支持 14 个 AI coding 平台。

## 核心能力
- **自动注入规范**：规范沉淀到 `.trellis/spec/`，每次会话按任务自动注入相关上下文
- **任务驱动工作流**：PRD、实现上下文、审查上下文统一存放 `.trellis/tasks/`
- **项目记忆**：`.trellis/workspace/` 工作日志保留会话脉络
- **团队共享标准**：Spec 随仓库版本化，个人规则变团队基础设施
- **多平台复用**：支持 Claude Code、Cursor、OpenCode、Codex 等 14 个平台

## 工作流（4阶段循环）
1. **Plan** — `trellis-brainstorm` 逐题梳理需求写 PRD，子代理调研资料
2. **Implement** — `trellis-implement` 按 PRD 写代码
3. **Verify** — `trellis-check` 对照 Spec 逐项核查 + lint/type-check/test
4. **Finish** — `trellis-update-spec` 沉淀新认知回 `.trellis/spec/`

## 安装
```bash
npm install -g @mindfoldhq/trellis@latest
trellis init -u your-name
```

## 链接
- GitHub: https://github.com/mindfold-ai/Trellis
- 文档: https://docs.trytrellis.app/zh
