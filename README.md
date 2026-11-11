# 大学竞赛资料总仓 · university-competitions

> 把 GitHub 账号 [`ccccongggg`](https://github.com/ccccongggg) 下散落的竞赛 / 学习仓库收进一个统一入口。
>
> **索引型大仓库**：6 个原仓库以 **Git 子模块（submodule）** 挂在这里，各自独立的提交历史、Git LFS 大文件、可见性全部保持不变；本仓库只负责导航、索引和说明。
>
> 整理日期：2026-11-10 ｜ 原仓库状态：全部保留，未删除、未归档。

## 🗂 总览速查

| # | 仓库 | 对应比赛 | 作品 / 项目 | 获奖情况 |
| --- | --- | --- | --- | --- |
| 1 | [national-smart-car-competition](https://github.com/ccccongggg/national-smart-car-competition) | 第二十一届全国大学生智能汽车竞赛 ·「飞檐走壁组」 | 主控板 + 车模底板 | 未记录 |
| 2 | [national-mechanical-innovation-competition](https://github.com/ccccongggg/national-mechanical-innovation-competition) | 2026 机械工程创新创意大赛 · 过程装备实践与创新赛 | 智巡澜工（污水处理巡检采样人形机器人） | 未在原 README 记录 |
| 3 | [national-electronic-design-competition](https://github.com/ccccongggg/national-electronic-design-competition) | 2026 TI 杯全国大学生电子设计竞赛 · 山东赛区 | 管内小球平衡装置 / 平衡小车 / 搬运小车 | 未记录 |
| 4 | [national-electromechanical-product-design-competition](https://github.com/ccccongggg/national-electromechanical-product-design-competition) | 第十二届全国大学生机械创新设计大赛山东预赛 ＋ 第二十三届山东省机电产品创新设计竞赛 | 灵眸智行（智能家居服务机器人） | **二等奖** |
| 5 | [national-advanced-drawing-competition](https://github.com/ccccongggg/national-advanced-drawing-competition) | 全国大学生先进成图技术与产品信息建模创新大赛（山东省赛） | 个人建模 / 轻量化设计 / 团体成图 | **省二等奖 + 省三等奖** |
| 6 | [robot](https://github.com/ccccongggg/robot) | 非比赛 · 大学期间机器人学习资料 | — | 0 提交空仓库，占位 |

## 📦 目录结构

```
university-competitions/
├── README.md                 ← 你正在看的这份总索引
├── .gitmodules               ← 5 个子模块的登记（原仓库 URL + 锁定 commit）
├── scripts/                  ← 一键初始化 / 拉 LFS / 推 GitHub 的脚本
│   ├── init-submodules.sh
│   ├── pull-lfs.sh
│   └── push-to-github.sh
├── national-smart-car-competition/                    ← 子模块 ①
├── national-mechanical-innovation-competition/        ← 子模块 ②
├── national-electronic-design-competition/            ← 子模块 ③
├── national-electromechanical-product-design-competition/ ← 子模块 ④
├── national-advanced-drawing-competition/             ← 子模块 ⑤
└── robot/                                            ← 占位说明（原仓库为空，非子模块）
```

在 GitHub 网页上，5 个子模块目录显示为可点击的仓库链接，点进去即跳到原仓库查看真实文件。

## 🏁 各仓库内容

### ① 智能汽车竞赛 · national-smart-car-competition

第二十一届全国大学生智能汽车竞赛「飞檐走壁组」。只归档硬件与机械部分，**不含车辆控制固件、参数表、调试日志**。

| 目录 | 内容 |
| --- | --- |
| `hardware/pcb/` | 主控板嘉立创 EDA 专业版工程 2 版（`.epro2`） |
| `models/cad/` | 基于龙邱 Q 车模侧板设计的车模底板 SolidWorks 模型 `.SLDPRT` |
| `media/process/` | [PCB 设计与调试现场照片](https://github.com/ccccongggg/national-smart-car-competition/tree/main/media/process) |
| `media/event/` | [比赛现场照片](https://github.com/ccccongggg/national-smart-car-competition/tree/main/media/event) |

### ② 机械创新大赛 · national-mechanical-innovation-competition

作品：**智巡澜工 — 污水处理厂生化池智能巡检与采样人形机器人**。6 个仓库里体量最大（662 个文件，主要是完整人形机器人 CAD）。

| 目录 | 内容 |
| --- | --- |
| `documents/` | 设计方案、作品说明书、研究报告、总结报告、报名表与资格审查材料 |
| `models/cad/人形机器人完整CAD/` | 整机 SolidWorks 零件 / 装配体 / STEP / STL：主体板件、连接件、三指夹爪、灵犀电机、360° 激光雷达、D435 相机、KeyShot 渲染材质 |
| `models/auxiliary/` | 机械腿、肩关节固定法兰、部件图纸 PDF、装配体补充图纸 |
| `presentations/` | 项目汇报与答辩演示 PPTX |
| `media/demo/` | [人形机器人装配与运行演示视频（5 段 mp4）](https://github.com/ccccongggg/national-mechanical-innovation-competition/tree/main/media/demo) |

> ⚠️ **隐私提醒**：`documents/` 含参赛报名与团队审查材料，该仓库当前为 Public，建议尽快核对姓名、联系方式、签名，或改回 Private。

### ③ 电子设计竞赛 · national-electronic-design-competition

2026 TI 杯全国大学生电子设计竞赛山东赛区。赛题相关结构：管内小球平衡装置、平衡小车（一号）、搬运小车（二号）、云台、MaixCAM 支架。

- **技术栈**：TI MSPM0G3507 + MSPM0 SDK + CCS + 嘉立创 EDA 专业版 + SolidWorks。
- `software/competition-project/`：CCS 工程（陀螺仪 / LED / 电机 / 测速 / OLED / PID / 舵机 / 循迹等驱动 `.c/.h`）。
- `hardware/competition-hardware/`：25 电赛全能板、M0 母板、STM 扩展板、机械结构 SolidWorks。
- `media/event/`：[赛区现场照片](https://github.com/ccccongggg/national-electronic-design-competition/tree/main/media/event)；`media/process/`：封箱记录。

### ④ 机电产品创新设计竞赛 · national-electromechanical-product-design-competition 🏅

作品：**灵眸智行 — 智能家居服务机器人**，**二等奖**（证书见 `awards/`），对应履历里的「机电创新省二等奖」。

| 目录 | 内容 |
| --- | --- |
| `awards/` | [获奖证书](https://github.com/ccccongggg/national-electromechanical-product-design-competition/tree/main/awards) |
| `documents/` | 产品说明、采购清单、组装教程、官方参考资料 |
| `models/` | 重建的六轴舵机机械臂工程、官方六自由度机械臂模型与 3D 打印资料、历届参考模型 |
| `software/` | Arduino 烧录代码与源码解析资料 |
| `media/demo/` | [智能家居服务机器人演示视频](https://github.com/ccccongggg/national-electromechanical-product-design-competition/tree/main/media/demo) |

### ⑤ 先进成图大赛 · national-advanced-drawing-competition 🏅

**轻量化设计与 AI 应用赛道 省二等奖**、**机械成图技术团体赛道 省三等奖**（证书在 `awards/`）。

| 目录 | 内容 |
| --- | --- |
| `awards/` | [两张获奖证书](https://github.com/ccccongggg/national-advanced-drawing-competition/tree/main/awards) |
| `models/cad/` | 个人参赛 CAD：全套编号零件（SLDPRT / prt / stp）、装配体、二维图 `.dwg` |
| `models/drawings/` | 竞赛模板 `.dwg`、二维图、SLDDRW 工程图 |
| `models/practice/` | 建模练习文件 |
| `reference-materials/` | 历年练习题、成图大赛笔记与问题记录 |
| `tools/` | 机械赛道提交工具与依赖 |

### ⑥ robot · 机器人学习资料（空仓库）

非比赛仓库，当前 0 提交（`Git Repository is empty`），无法作为子模块登记。等首次提交后执行：

```bash
git submodule add --depth 1 https://github.com/ccccongggg/robot.git robot
```

## ⚙️ Git LFS 与本机使用说明

1. **子模块目录里看到的小文件是 LFS 指针**（约 130 字节），不是真的 CAD / 视频；真实大文件存在各原仓库的 GitHub LFS 存储里。
2. 本机全局 git 配置挂了 LFS 过滤器但未安装 `git-lfs` 命令；`scripts/init-submodules.sh` 已做局部覆盖，可正常 checkout 指针文件。
3. 拿真实大文件：先 `git lfs install`，再 `git submodule foreach --recursive git lfs pull`（或跑 `scripts/pull-lfs.sh`），注意 LFS 下载量与配额。
4. **Windows 长路径**：机械创新仓库部分 STL 文件名超过 260 字符；本仓库已为子模块设置 `core.longpaths=true`，换机器若仍报错，跑 `scripts/init-submodules.sh` 兜底，或启用系统长路径、把大仓库放到更短路径。

## 📜 常用命令

```bash
# 克隆整个大仓库（含 5 个子模块）
git clone --recurse-submodules https://github.com/ccccongggg/university-competitions.git

# 已经 clone 了但子模块是空的 → 初始化（国内走 ghfast.top 镜像，跳过 LFS 大文件）
bash scripts/init-submodules.sh

# 更新全部子模块到各自 main 最新提交
git submodule update --remote --merge

# 拉取真实大文件（需先安装 git-lfs）
bash scripts/pull-lfs.sh
```

## 📌 归档状态

| 项目 | 状态 |
| --- | --- |
| 5 个有内容的仓库 | ✅ 已作为子模块登记，指向 2026-08-14 的整理提交 |
| `robot` 空仓库 | ⚠️ 占位说明，等首次提交后转子模块 |
| 原 6 个 GitHub 仓库 | ✅ 全部原样保留（未删除、未归档、未改可见性） |
| 机械创新仓库隐私 | ⚠️ `documents/` 含报名表 / 承诺书，当前 Public，建议核查 |
| 机械创新仓库长文件名 | ✅ 已用 `core.longpaths=true` 修复 |
