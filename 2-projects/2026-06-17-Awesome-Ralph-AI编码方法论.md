---
tags: [project, awesome-list, AI-coding, ralph, methodology]
date: 2026-06-17
source: GitHub snwfdhmp/awesome-ralph
status: inbox
---

# Awesome Ralph — Ralph AI 编码方法论资源大全

## 项目简介
Ralph（全名 Ralph Wiggum）是一种 AI 编码技术：将 AI coding agent 放在自动循环中不断运行，直到满足规格。由 Geoffrey Huntley 创造。

## 核心原理
```bash
while :; do cat PROMPT.md | claude-code ; done
```

**关键原则：**
- 反复运行 AI agent 直到 PRD/规格完成
- 进展保存在文件和 git history 中，而非上下文里
- 每次迭代从头开始，上下文纯净
- 用"反向压力"（tests/lints/type-checks）验证工作
- 哲学：**"Sit on the loop, not in it"**

## 标准工作流
1. **Phase 1: 定义需求** — 人+LLM 对话产生 JTBD 规格
2. **Phase 2: 规划模式** — Gap 分析生成 TODO 列表（不实现）
3. **Phase 3: 构建模式** — 按计划实现 → 运行测试 → 提交 → 重复

## 链接
- GitHub: https://github.com/snwfdhmp/awesome-ralph
- 创始文章: https://ghuntley.com/ralph/
- "Everything is a Ralph Loop": https://ghuntley.com/loop/
