# Hermes Agent — Configuration Backup
# 自动同步到本仓库，由 backup.sh daily 模式更新

这个目录包含 Hermes Agent 的可恢复配置：

| 文件/目录 | 说明 | 含密钥？|
|-----------|------|---------|
| `config.yaml` | Hermes 主配置文件 | ❌ 无内嵌密钥（引用环境变量） |
| `env.template` | 环境变量模板（结构参考） | ❌ 密钥值已清空 |
| `scripts/` | 备份脚本（backup.sh 等） | ❌ 无密钥 |

> ⚠️ **实际密钥文件** `/opt/data/.env` **不推送到 Git**
> 恢复时需手动填写密钥，或从本地 `.env` 恢复。

---

Created by hermes-agent on $(date '+%Y-%m-%d')
