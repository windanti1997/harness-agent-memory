#!/bin/bash
# Hermes 全量备份脚本
# 用法: ./backup.sh [daily|weekly]
#   daily  — git commit vault（轻量、每次内容变更）
#   weekly — tar 全量快照（config + skills + vault + state.db）

set -euo pipefail

MODE="${1:-daily}"
BACKUP_ROOT="/opt/data/backups"
VAULT_PATH="/opt/data/obsidian-vault"
KEEP_COUNT=5

case "$MODE" in
  daily)
    echo "=== 每日 Git 备份 $(date '+%Y-%m-%d %H:%M') ==="
    cd "$VAULT_PATH"

    # 同步 Hermes 配置到仓库（不包含密钥）
    cp /opt/data/config.yaml hermes-config/
    cp -r /opt/data/home/.hermes/scripts/* hermes-config/scripts/ 2>/dev/null || true
    echo "✓ 配置已同步"

    if [[ -n $(git status --porcelain) ]]; then
      git add -A
      git commit -m "auto: $(date '+%Y-%m-%d %H:%M')"
      git push origin master 2>&1 || echo "⚠ push 失败（可能网络断开或 token 过期）"
      echo "✓ 已提交并推送"
    else
      echo "○ 无变更，跳过"
    fi
    ;;

  weekly)
    TS=$(date '+%Y%m%d_%H%M%S')
    DST="$BACKUP_ROOT/hermes-backup-$TS.tar.gz"
    mkdir -p "$BACKUP_ROOT"

    echo "=== 全量快照 $(date '+%Y-%m-%d %H:%M') ==="
    echo "打包中..."

    tar -czf "$DST" \
      -C /opt/data \
      config.yaml \
      .env \
      obsidian-vault/ \
      state.db \
      skills/productivity/knowledge-management/ \
      2>/dev/null

    echo "✓ 快照: $(du -h "$DST" | cut -f1)"

    # 清理旧快照
    ls -1t "$BACKUP_ROOT"/hermes-backup-*.tar.gz 2>/dev/null | tail -n +$((KEEP_COUNT+1)) | while read -r old; do
      echo "  清理旧快照: $(basename "$old")"
      rm -f "$old"
    done

    echo "✓ 保留最近 $KEEP_COUNT 份快照"
    ;;

  *)
    echo "用法: $0 [daily|weekly]"
    exit 1
    ;;
esac
