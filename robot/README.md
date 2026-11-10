# robot — 大学期间机器人学习资料（占位目录）

- 原仓库：https://github.com/ccccongggg/robot
- GitHub 描述：大学期间学习机器人相关资料
- 归类：**非比赛仓库**，属于大学期间的机器人学习资料归档位

> ⚠️ 该仓库目前在 GitHub 上是 **0 提交的空仓库**（`Git Repository is empty`），没有任何 commit，因此无法作为 Git 子模块登记（子模块必须指向一个真实提交）。本目录仅作占位，等原仓库产生第一次提交后再转正式子模块。

## 转换为子模块的步骤

在大仓库根目录执行：

```bash
rm -rf robot
git submodule add --depth 1 https://github.com/ccccongggg/robot.git robot
git add .gitmodules robot
git commit -m "Add robot learning materials as submodule"
```

同时记得更新根目录 `README.md`：把第六节的状态改为已归档，并补充仓库内容说明。
