#!/bin/bash
# Hermes 知识库备份脚本
# daily — git commit + push
# weekly — tar 全量快照

set -euo pipefail

MODE="${1:-daily}"
VAULT_PATH="$HOME/projects/harness-agent-memory"
BACKUP_ROOT="$HOME/projects/backups"
KEEP_COUNT=5

case "$MODE" in
  daily)
    echo "=== 每日 Git 备份 $(date '+%Y-%m-%d %H:%M') ==="
    cd "$VAULT_PATH"
    if [[ -n $(git status --porcelain) ]]; then
      git add -A
      git commit -m "auto: $(date '+%Y-%m-%d %H:%M')"
      git push origin master 2>&1 || echo "W push failed (network/token)"
      echo "OK committed and pushed"
    else
      echo "-- no changes, skipped"
    fi
    ;;

  weekly)
    TS=$(date '+%Y%m%d_%H%M%S')
    DST="$BACKUP_ROOT/harness-agent-memory-$TS.tar.gz"
    mkdir -p "$BACKUP_ROOT"
    echo "=== Weekly snapshot $(date '+%Y-%m-%d %H:%M') ==="
    tar -czf "$DST" -C "$(dirname "$VAULT_PATH")" "$(basename "$VAULT_PATH")"
    echo "OK snapshot: $(du -h "$DST" | cut -f1)"
    ls -1t "$BACKUP_ROOT"/harness-agent-memory-*.tar.gz 2>/dev/null | tail -n +$((KEEP_COUNT+1)) | while read -r old; do
      echo "  clean old: $(basename "$old")"
      rm -f "$old"
    done
    echo "OK kept last $KEEP_COUNT snapshots"
    ;;

  *)
    echo "Usage: $0 [daily|weekly]"
    exit 1
    ;;
esac
