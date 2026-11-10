#!/usr/bin/env bash
# 在 GitHub 账号 ccccongggg 下创建 university-competitions 并推送。
# 使用前请确认：这会新建一个 Public 仓库；原来的 6 个仓库不会被动到。
set -euo pipefail
cd "$(dirname "$0")/.."

OWNER="ccccongggg"
REPO_NAME="university-competitions"
DESC="大学学科竞赛资料总仓：智能汽车 / 机械创新 / 电子设计 / 机电产品 / 先进成图 五个子仓库的索引与说明"

TOKEN=$(printf "protocol=https\nhost=github.com\n\n" | git credential fill 2>/dev/null | sed -n 's/^password=//p')
if [ -z "$TOKEN" ]; then
  echo "✗ 未找到 GitHub 凭证，请先登录 GitHub（git credential manager）"
  exit 1
fi

echo "==> 创建远程仓库 $OWNER/$REPO_NAME（Public）"
CODE=$(curl -sS -o /tmp/gh_create_repo.json -w '%{http_code}' -X POST \
  -H "Authorization: Bearer $TOKEN" \
  -H "Accept: application/vnd.github+json" \
  -H "Content-Type: application/json; charset=utf-8" \
  https://api.github.com/user/repos \
  --data-binary "{\"name\":\"$REPO_NAME\",\"description\":\"$DESC\",\"private\":false,\"has_issues\":true}")

case "$CODE" in
  201) echo "  远程仓库已创建" ;;
  422) echo "  远程仓库已存在，继续推送" ;;
  *)   echo "✗ 创建失败 HTTP $CODE"; cat /tmp/gh_create_repo.json; exit 1 ;;
esac

git remote remove origin 2>/dev/null || true
git remote add origin "https://github.com/$OWNER/$REPO_NAME.git"
git push -u origin main

echo "✓ 完成：https://github.com/$OWNER/$REPO_NAME"
echo "  提示：若要让 GitHub 仓库列表变干净，还需手动归档或删除原来的 6 个仓库（危险操作，本脚本不代劳）。"
