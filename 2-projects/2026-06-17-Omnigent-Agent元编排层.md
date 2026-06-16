---
tags: [project, AI-agent, meta-harness, orchestrator, sandbox]
date: 2026-06-17
source: GitHub omnigent-ai/omnigent
status: inbox
---

# Omnigent — AI Agent 元编排层（Meta-Harness）

## 项目简介
一个统一的元层，覆盖 Claude Code、Codex、Cursor、Pi 以及自定义 Agent。可互换/组合不同 harness、用策略和沙箱管控 agent，实时协作共享会话。

## 核心能力
- **多设备跟随**：终端启动 → 浏览器继续 → 手机接盘，消息/子 agent/终端/文件实时同步
- **多 Agent 编排**：同一会话中使用 Claude Code、Codex、Pi 和自定义 agent（YAML 定义），互相审查工作
- **任意模型**：支持自有 API key、Claude/ChatGPT 订阅或兼容网关
- **实时协作**：共享会话，队友可观看/协同操作/ Fork 会话
- **云端沙箱**：支持 Modal、Daytona、Islo 云沙箱
- **策略治理**：敏感操作暂停审批、费用上限、工具访问限制

## 安装
```bash
curl -fsSL https://raw.githubusercontent.com/omnigent-ai/omnigent/main/scripts/install_oss.sh | sh
# 或
uv tool install omnigent
```

## 状态
- **Alpha 阶段**
- 需要 Python 3.12+

## 链接
- GitHub: https://github.com/omnigent-ai/omnigent
- 官网: https://omnigent.ai
