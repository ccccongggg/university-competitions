#!/usr/bin/env bash
# 初始化 5 个子模块。
# - 国内网络走 ghfast.top 镜像（只在本脚本内临时映射，不写进 .gitmodules）
# - 跳过 Git LFS 大文件下载，只取指针文件，避免几 GB 的 CAD / 视频
# - 本机可能没装 git-lfs，局部覆盖 LFS 过滤器，不修改全局 git 配置
# - 规避 Windows 260 字符路径限制
set -euo pipefail
cd "$(dirname "$0")/.."

export GIT_LFS_SKIP_SMUDGE=1
MIRROR='https://ghfast.top/https://github.com/'
LFSOPT=(-c filter.lfs.smudge= -c filter.lfs.clean= -c filter.lfs.process= \
        -c filter.lfs.required=false -c lfs.fetchexclude='*')

echo "==> 初始化子模块（镜像加速 / 跳过 LFS）"
git "${LFSOPT[@]}" -c core.longpaths=true \
    -c url."$MIRROR".insteadOf="https://github.com/" \
    submodule update --init --recursive --depth 1 || true

echo "==> 长路径兜底 + 复核 checkout"
while IFS= read -r p; do
  [ -f "$p/.git" ] || [ -d "$p/.git" ] || continue
  git -C "$p" config core.longpaths true
  git -C "$p" "${LFSOPT[@]}" checkout -f HEAD 2>/dev/null || true
done < <(git config -f .gitmodules --get-regexp '^submodule\..*\.path$' | awk '{print $2}')

echo "==> 完成，当前子模块状态："
git submodule status
