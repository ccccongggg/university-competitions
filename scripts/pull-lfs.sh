#!/usr/bin/env bash
# 拉取子模块中由 Git LFS 托管的真实大文件（CAD / 视频 / PPT / PDF）。
# 注意会消耗 GitHub LFS 下载配额，先在原仓库确认需要哪些文件。
set -euo pipefail
cd "$(dirname "$0")/.."

if ! command -v git-lfs >/dev/null 2>&1; then
  echo "✗ 未找到 git-lfs，请先安装："
  echo "  Windows : winget install --id GitHub.git-lfs"
  echo "  macOS   : brew install git-lfs"
  echo "  其他    : https://git-lfs.com/"
  exit 1
fi

echo "==> 恢复各仓库的 LFS 过滤器配置"
git lfs install --local
git submodule foreach --recursive 'git lfs install --local && git lfs pull'

echo "✓ LFS 大文件拉取完成"
