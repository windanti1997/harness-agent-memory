---
tags: [project, AI-agent, tool, open-source]
date: 2026-06-17
source: GitHub
status: curated
---

# Agent-Reach

## 项目简介
给 AI Agent 装上互联网能力 —— 一个 CLI 工具，能从命令行读/搜 Twitter、Reddit、YouTube、GitHub、B站、小红书等多个平台，**零 API 费用**。

## 核心能力
- 网页阅读（Jina Reader）
- YouTube 字幕提取（yt-dlp）
- 全网语义搜索（Exa MCP，免费无需 Key）
- GitHub 仓库操作（gh CLI）
- B站搜索+详情（bili-cli）
- RSS 订阅（feedparser）
- Twitter、Reddit、小红书等（需 Cookie 登录）

## 技术栈
- Python CLI（agent-reach）
- gh CLI、yt-dlp、mcporter、Jina Reader、feedparser
- 多后端路由设计：每个渠道 = 首选 + 备选有序后端列表

## 为什么值得关注
- 完全开源 MIT，**31.9k star**
- 零 API 费用，解决 Agent 无法访问互联网的痛点
- 多后端自动切换（如 B站 yt-dlp 被封 → 自动切 bili-cli）
- 自带 `doctor` 诊断命令

## 链接
- GitHub: https://github.com/Panniantong/agent-reach
