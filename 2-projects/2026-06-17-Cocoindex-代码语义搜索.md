---
tags: [project, code-search, AST, coding-agent, cocoindex]
date: 2026-06-17
source: GitHub cocoindex-io/cocoindex-code
status: inbox
---

# Cocoindex-code — 轻量级 AST 语义代码搜索引擎

## 项目简介
基于 AST 的语义代码搜索 CLI 工具，1 分钟零配置安装，可节省 **70% token** 并提升 coding agent 速度。基于 Rust 的 CocoIndex 数据转换引擎构建。

## 核心能力
- **AST 语义搜索**：理解代码结构而非纯文本匹配
- **节省 70% token**：大幅减少 agent 检索代码时的 token 消耗
- **1 分钟安装，零配置**
- **多 agent 集成**：CLI / Skill / MCP Server 三种模式
  - Skill 模式（推荐）：`npx skills add cocoindex-io/cocoindex-code`
  - MCP 模式：`ccc mcp` 作为 MCP Server
  - 手工 CLI 模式

## 技术栈
- 底层引擎：CocoIndex（Rust 高性能数据转换引擎）
- 安装方式：pipx / uv tool install
- 本地嵌入模型：Snowflake/snowflake-arctic-embed-xs（无需 API key）
- 支持 Claude Code、Codex、OpenCode、Cursor 等

## 版本
- `cocoindex-code[full]`：全功能版（含本地嵌入模型，~1GB torch+transformers）
- `cocoindex-code`：精简版（需云端 embedding API）

## 链接
- GitHub: https://github.com/cocoindex-io/cocoindex-code
