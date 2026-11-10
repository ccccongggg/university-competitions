# 大学竞赛资料总仓 · university-competitions

把 GitHub 账号 [`ccccongggg`](https://github.com/ccccongggg) 下散落的 6 个竞赛 / 学习仓库，收进一个统一入口。

> **这是什么**：一个「索引型大仓库」。6 个原仓库以 **Git 子模块（submodule）** 挂在这里，各自独立的提交历史、Git LFS 大文件、可见性全部保持不变；本仓库只负责导航、索引和说明。
>
> **为什么不直接把文件搬进来**：这些仓库里的 CAD、视频、PPT、PDF 全部由 **Git LFS** 托管，仓库中实际只有约 130 字节的 LFS 指针文件。直接复制文件到新仓库，LFS 对象不会跟着过来，所有大文件都会变成打不开的文本指针，还要再占一份 LFS 配额。用子模块引用是**不丢文件、不重复上传、保留历史**的唯一整理方式。
>
> 整理日期：2026-11-10 ｜ 原仓库状态：全部保留，未删除、未归档。

---

## 一、总览速查

| # | 本地目录 / 原仓库 | 对应比赛 | 届次 / 年份 / 赛区 | 作品 / 项目 | 获奖情况 | 文件数 |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | `national-smart-car-competition` | 全国大学生智能汽车竞赛 | 第二十一届 ·「飞檐走壁组」 | 主控板 + 车模底板 | 未记录 | 8 |
| 2 | `national-mechanical-innovation-competition` | 中国大学生机械工程创新创意大赛 · 过程装备实践与创新赛 | 2026 · 省赛/国赛材料 | 智巡澜工（污水处理巡检采样人形机器人） | 未在原 README 记录 | 662 |
| 3 | `national-electronic-design-competition` | TI 杯全国大学生电子设计竞赛 | 2026 · 山东赛区 | 管内小球平衡装置 / 平衡小车 / 搬运小车 | 未记录 | 169 |
| 4 | `national-electromechanical-product-design-competition` | 全国大学生机械创新设计大赛（山东赛区预赛）＋ 山东省大学生机电产品创新设计竞赛 | 第十二届 / 第二十三届 | 灵眸智行（智能家居服务机器人） | **二等奖** | 254 |
| 5 | `national-advanced-drawing-competition` | 全国大学生先进成图技术与产品信息建模创新大赛（山东省赛） | 2026 · 省赛 | 个人建模 / 轻量化设计 / 团体成图 | **省二等奖 + 省三等奖** | 147 |
| 6 | `robot` | 非比赛 · 大学期间机器人学习资料 | — | — | — | 0（空仓库） |

文件数按各仓库 `main` 分支的 Git 文件条目统计；`robot` 在 GitHub 上是 0 提交的空仓库。

---

## 二、目录结构

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

---

## 三、每个仓库里到底是什么

### ① national-smart-car-competition — 第二十一届全国大学生智能汽车竞赛

**比赛**：全国大学生智能汽车竞赛，第二十一届，「飞檐走壁组」。
**内容**：只归档了硬件与机械部分，**不含车辆控制固件、参数表、调试日志**。

| 目录 | 内容 |
| --- | --- |
| `hardware/pcb/` | 主控板嘉立创 EDA 专业版工程 2 版：`主控板-CM-2026-08-09.epro2`、`主控板-V4.0-2026-08-09.epro2` |
| `models/cad/` | 基于龙邱 Q 车模侧板设计的车模底板 SolidWorks 模型 `.SLDPRT` |
| `media/process/` | PCB 设计与调试现场照片 |
| `media/event/` | 第二十一届比赛现场照片 |

打开方式：`epro2` → 嘉立创 EDA 专业版；`SLDPRT` → SolidWorks。两个 PCB 工程代表不同设计迭代，打开后先检查封装库、规则与层叠设置。
原仓库：https://github.com/ccccongggg/national-smart-car-competition

---

### ② national-mechanical-innovation-competition — 2026 机械工程创新创意大赛（过程装备实践与创新赛）

**比赛**：中国大学生机械工程创新创意大赛「过程装备实践与创新赛」（2026）。
**作品**：**智巡澜工 — 污水处理厂生化池智能巡检与采样人形机器人**，面向污水厂生化池的智能巡检与采样任务。
**这是 6 个仓库里体量最大的一个**（662 个文件，主要是完整人形机器人 CAD）。

| 目录 | 内容 |
| --- | --- |
| `documents/` (15) | 设计方案、作品说明书、研究报告（评审版 / 存档版 docx + pdf）、总结报告、报名表、参赛人员信息表、无学术不端承诺书、团队资格审查表 |
| `models/cad/人形机器人完整CAD/` | 整机 SolidWorks 零件 / 装配体 / STEP / STL：主体板件、上下半身连接件、三指夹爪、R52 / R86 灵犀电机、360° 激光雷达、D435 相机、KeyShot 渲染材质等，含大量 `总装配5 - *.STL` 导出件 |
| `models/auxiliary/` | 机械腿（大腿 1.0 / 2.0）、肩关节固定法兰、部件图纸 PDF、装配体补充图纸 |
| `presentations/` (2) | 项目汇报 `智巡(1).pptx`、答辩演示 `答辩演示-智巡(1)(1)(1).pptx` |
| `media/demo/` (5) | 人形机器人装配与运行演示视频（mp4） |

打开方式：`SLDPRT`/`SLDASM` → SolidWorks（装配体依赖同目录零件，必须整仓下载后再打开）；`STEP`/`STL` 为通用交换格式。
> ⚠️ **隐私提醒**：原仓库 README 明确写「`documents/` 含参赛报名与团队审查材料，仓库默认设为私有，转公开前应检查姓名、联系方式、签名」。该仓库目前在 GitHub 上是 **Public**，建议尽快核对报名表 / 承诺书中的个人信息，或改回 Private。

原仓库：https://github.com/ccccongggg/national-mechanical-innovation-competition

---

### ③ national-electronic-design-competition — 2026 TI 杯全国大学生电子设计竞赛（山东赛区）

**比赛**：2026 TI 杯全国大学生电子设计竞赛，山东赛区（现场照片 `2026-TI杯山东赛区现场.jpg`、作品封箱记录）。
**赛题相关结构**：管内小球平衡装置、平衡小车（一号）、搬运小车（二号）、云台、MaixCAM 支架。
**技术栈**：TI **MSPM0G3507** + TI MSPM0 SDK + Code Composer Studio（CCS）+ 嘉立创 EDA 专业版 + SolidWorks。

| 目录 | 内容 |
| --- | --- |
| `software/competition-project/` (39) | `单转弯可用/` CCS 工程：BEEP、HWT101 陀螺仪、LED、MOTOR、MSPEED 测速、MYUART、OLED（含字库 + 软件 IIC）、PID、Steering_gear 舵机、TIMER、TRACE 循迹等驱动 `.c/.h`，`empty.syscfg`、`targetConfigs/MSPM0G3507.ccxml`；另有 `ProPrj_电赛天猛星_2026-05-01.epro` |
| `hardware/competition-hardware/` (125) | 25 电赛全能板 Plus 款（PCB 源文件 + 物料清单 + 问题说明 + 4 张截图）、`M0母板/`（TI M03507 母板 `.epro2` + ReuseBlock）、`STM母版/STM扩展板.epro2`、机械结构 SolidWorks（小球管内平衡装置整机、一号/二号小车、云台、520 电机、齿轮齿条、开源结构 STL） |
| `media/process/`、`media/event/` | 封箱记录、赛区现场照片 |

打开工程：安装 CCS + 匹配版本 MSPM0 SDK → 导入 `software/competition-project/m0拓展板资料/单转弯可用/` → 检查 SDK 路径 / 目标芯片 / 编译器 / 调试器配置 → 嘉立创 EDA 打开 PCB → SolidWorks 打开装配体时保留原目录结构。
**清理说明**：原始资料中的 IDE、烧录工具安装包、编译缓存、重复工程和通用厂商 SDK 未上传（TI MSPM0 SDK 含厂商测试私钥，应从 TI 官方渠道安装）。
原仓库：https://github.com/ccccongggg/national-electronic-design-competition

---

### ④ national-electromechanical-product-design-competition — 机电产品创新设计竞赛（二等奖）

**比赛**：第十二届全国大学生机械创新设计大赛 **山东赛区预赛** ＋ **第二十三届山东省大学生机电产品创新设计竞赛**。
**作品**：**灵眸智行 — 智能家居服务机器人**。
**获奖**：**二等奖**（证书 `awards/灵眸智行-智能家居服务机器人-二等奖.jpg`）。← 对应履历里的「机电创新省二等奖」。

| 目录 | 内容 |
| --- | --- |
| `awards/` | 获奖证书 |
| `documents/` (62) | 产品说明、采购清单、组装教程、官方参考资料 |
| `models/` (183) | `rebuilt-arm/` 重建的六轴舵机机械臂 SolidWorks 工程、`official-reference/` 六自由度机械臂官方三维模型与 3D 打印资料、`competition-models/` 第 11/12 届机械创新项目参考模型及麦轮车机械臂模型 |
| `software/` (4) | Arduino 烧录代码与源码解析资料 |
| `media/demo/` | 智能家居服务机器人演示视频 |

打开方式：Arduino IDE（烧录前确认舵机控制板型号、串口和依赖库）；`SLDPRT`/`SLDASM` → SolidWorks；`STEP`/`3MF` 用于跨 CAD 交换或 3D 打印。
**说明**：官方参考资料与历届参考模型仅供复现学习，版权归原作者或供应方；安装程序和重复压缩包未入库。
原仓库：https://github.com/ccccongggg/national-electromechanical-product-design-competition

---

### ⑤ national-advanced-drawing-competition — 全国大学生先进成图大赛（省二等奖 + 省三等奖）

**比赛**：全国大学生先进成图技术与产品信息建模创新大赛 / 山东省大学生先进成图技术与产品信息建模创新大赛（2026）。
**获奖**：**轻量化设计与 AI 应用赛道 省二等奖**、**机械成图技术团体赛道 省三等奖**（证书在 `awards/`）。← 对应履历里的「成图大赛省级奖」。

| 目录 | 内容 |
| --- | --- |
| `awards/` | 两张获奖证书：`轻量化设计与AI应用-省二等奖.jpg`、`机械成图技术团体-省三等奖.jpg` |
| `documents/` | 赛场安排 `.xlsx` |
| `media/event/`、`media/process/` | 参赛团队合影、参赛记录、过程截图 |
| `models/cad/` (76) | 个人参赛 CAD：`11110 - 副本/` 全套编号零件（SLDPRT / prt / stp）、机械提供件、装配体、二维图 `.dwg`、`.bak` |
| `models/drawings/` | 2026 山东成图大赛机械竞赛模板 `.dwg`、二维图、SLDDRW 工程图 |
| `models/practice/` | 建模练习文件（含两份 `30 - 副本`） |
| `reference-materials/` (58) | 历年练习题：第 12 届、2022 第十五届国赛机械类建模卷 A、校选拔题，以及 `成图大赛笔记.docx`、`成图大赛问题.docx` |
| `tools/` | 机械赛道提交工具（`机械提交工具.exe` + 7z 依赖 + 注意事项） |

打开方式：`SLDPRT`/`SLDASM`/`SLDDRW` → SolidWorks；`STEP`/`STP` 通用；`PRT` 可能需要 Siemens NX；`DWG` → AutoCAD。CAD 装配体依赖同目录零件，请勿单独移动零件。
原仓库：https://github.com/ccccongggg/national-advanced-drawing-competition

---

### ⑥ robot — 大学期间机器人学习资料（空仓库）

**不是比赛仓库**，GitHub 描述为「大学期间学习机器人相关资料」。当前在 GitHub 上是 **0 提交的空仓库**（`Git Repository is empty`），因此无法作为子模块登记（子模块必须指向一个真实 commit）。

本仓库用 `robot/README.md` 占位。等原仓库有第一次提交后，执行：

```bash
git submodule add --depth 1 https://github.com/ccccongggg/robot.git robot
```

原仓库：https://github.com/ccccongggg/robot

---

## 四、Git LFS 与本机使用说明（重要）

1. **子模块目录里看到的小文件是 LFS 指针，不是真的 CAD / 视频**。约 130 字节，内容形如 `version https://git-lfs.github.com/spec/v1 / oid sha256:... / size ...`。真实文件存在各原仓库的 GitHub LFS 存储里。
2. 本机目前**未安装 `git-lfs` 命令**，但全局 git 配置里挂了 LFS 过滤器，导致直接 `git clone` 会报 `git-lfs: command not found`。本仓库的 `scripts/init-submodules.sh` 已做局部覆盖（不改你的全局配置），可以正常 checkout 出指针文件。
3. 要拿真实大文件：先 `git lfs install`，再 `git submodule foreach --recursive git lfs pull`（或跑 `scripts/pull-lfs.sh`）。注意 LFS 下载量与配额。
4. **Windows 长路径**：`national-mechanical-innovation-competition` 里有若干 SolidWorks 导出的 STL 文件名超过 Windows 的 260 字符限制，checkout 会报 `Filename too long`。本仓库已为子模块设置 `core.longpaths=true` 并重新 checkout，当前本机 5 个子模块文件完整。换一台 Windows 机器克隆时若仍遇到，可跑 `bash scripts/init-submodules.sh` 兜底，或启用系统长路径（`LongPathsEnabled=1`）、把大仓库放到更短路径（如 `D:\uc\`）。这不影响 GitHub 上原仓库与大仓库的引用关系。

---

## 五、常用命令

```bash
# 克隆整个大仓库（含 5 个子模块）
git clone --recurse-submodules https://github.com/ccccongggg/university-competitions.git

# 已经 clone 了但子模块是空的 → 初始化（国内走 ghfast.top 镜像，跳过 LFS 大文件）
bash scripts/init-submodules.sh

# 更新全部子模块到各自 main 最新提交
git submodule update --remote --merge

# 拉取真实大文件（需先安装 git-lfs）
bash scripts/pull-lfs.sh

# 大仓库已上线；后续同步更新可重复运行（脚本会复用已存在的远程仓库）
bash scripts/push-to-github.sh
```

子模块 URL 写在 `.gitmodules` 里，全部使用官方 `https://github.com/...`，保证仓库可移植；国内加速只在脚本里用 `url.<mirror>.insteadOf` 临时映射，不写死进仓库。

远程仓库：**https://github.com/ccccongggg/university-competitions**（Public，`main`）

---

## 六、归档状态与待办

| 项目 | 状态 |
| --- | --- |
| 5 个有内容的仓库 | ✅ 已作为子模块登记，指向 2026-08-14 的 `Organize competition project materials` 提交 |
| `robot` 空仓库 | ⚠️ 占位说明，等首次提交后转子模块 |
| 原 6 个 GitHub 仓库 | ✅ 全部原样保留（未删除、未归档、未改可见性） |
| GitHub 上的大仓库 | ✅ 已创建并推送：[ccccongggg/university-competitions](https://github.com/ccccongggg/university-competitions)（Public，`main`） |
| 机械创新仓库隐私 | ⚠️ `documents/` 含报名表 / 承诺书，当前 Public，建议核查 |
| 机械创新仓库长文件名 | ✅ 已用 `core.longpaths=true` 修复，本机文件完整 |
| 本机 LFS 过滤器 | ✅ 子模块本地 filter 已置空，日常 `git` 命令不再报错；装好 `git-lfs` 后跑 `scripts/pull-lfs.sh` 会自动恢复 |
