# Codex 宠物：椎名真白（Mashiro）

一个以椎名真白为灵感制作的 Codex 桌面动画宠物。她抱着画本安静地陪你写代码，并会根据 Codex 的状态做出待机、移动、挥手、跳跃、等待、工作和检查结果等动作。

> 这是非官方同人项目，与《樱花庄的宠物女孩》版权方及 OpenAI 均无隶属或授权关系，仅供个人学习与非商业使用。

## 动画展示

| 待机 | 挥手 | 跳跃 |
| --- | --- | --- |
| ![待机](assets/previews/idle.gif) | ![挥手](assets/previews/waving.gif) | ![跳跃](assets/previews/jumping.gif) |

| 向右移动 | 向左移动 | 失落 |
| --- | --- | --- |
| ![向右移动](assets/previews/running-right.gif) | ![向左移动](assets/previews/running-left.gif) | ![失落](assets/previews/failed.gif) |

| 等待输入 | 专注工作 | 查看结果 |
| --- | --- | --- |
| ![等待输入](assets/previews/waiting.gif) | ![专注工作](assets/previews/running.gif) | ![查看结果](assets/previews/review.gif) |

[查看完整动作表](assets/qa/contact-sheet.png)

## 关于椎名真白

椎名真白（しいな ましろ，Shiina Mashiro）是轻小说及动画《樱花庄的宠物女孩》中的主要角色。她拥有浅色长发，是一位极具绘画天赋、性格安静而率真的少女。真白对艺术非常专注，但在日常生活方面常需要身边人的帮助。她天然、寡言又执着的性格，让她成为很适合陪伴创作与编程的桌面角色。

本宠物保留了浅金长发、蓝色背心、紫色百褶裙和画本等辨识度较高的视觉特征。为了适配较小的宠物显示区域，动作采用清楚的全身轮廓，并去除了文字、背景和多余特效。

## 功能与状态

图集采用 Codex 自定义宠物 v1 格式，尺寸为 `1536 × 1872`，每格 `192 × 208`，包含 9 种状态：

| 状态 | 帧数 | 用途 |
| --- | ---: | --- |
| `idle` | 6 | 平静待机、呼吸和眨眼 |
| `running-right` | 8 | 向右拖动或移动 |
| `running-left` | 8 | 向左拖动或移动 |
| `waving` | 4 | 挥手问候 |
| `jumping` | 5 | 起跳、腾空与落地 |
| `failed` | 8 | 任务失败或取消时的失落反应 |
| `waiting` | 6 | 等待用户批准、帮助或输入 |
| `running` | 6 | Codex 正在执行任务 |
| `review` | 6 | 查看与检查任务结果 |

## 安装方法

### 方法一：使用安装脚本

在 Windows PowerShell 中进入仓库目录，然后运行：

```powershell
.\install.ps1
```

脚本会把 `pet/pet.json` 和 `pet/spritesheet.webp` 安装到：

```text
%USERPROFILE%\.codex\pets\mashiro\
```

### 方法二：手动安装

1. 下载仓库，或下载 [`release/mashiro-pet.zip`](release/mashiro-pet.zip)。
2. 解压后确认同一目录内包含 `pet.json` 和 `spritesheet.webp`。
3. 将该目录复制到 `%USERPROFILE%\.codex\pets\mashiro\`。
4. 重新打开 Codex，进入宠物设置并选择「真白」。

如果宠物已经显示，但更换文件后没有刷新，可以先隐藏宠物，再重新显示；仍未刷新时重启 Codex。

## 使用说明

安装并选中真白后，她会以悬浮窗口显示在桌面上。使用鼠标左键按住角色身体可以拖动位置；右键角色可以打开宠物菜单。不同 Codex 状态会自动切换对应动画，无需手动选择动作。


## 项目结构

```text
codex-pet-mashiro/
├─ pet/
│  ├─ pet.json
│  └─ spritesheet.webp
├─ assets/
│  ├─ previews/        # 9 个状态的 GIF 预览
│  └─ qa/              # 完整动作检查图
├─ release/
│  └─ mashiro-pet.zip  # 可直接下载的安装包
├─ install.ps1
└─ README.md
```

## 制作说明

角色动作由图像生成工具制作，再通过固定尺寸的精灵图流程完成拆帧、透明背景处理、动作图集组装和视觉检查。最终图集通过了尺寸、帧数、透明像素和空白单元格检查，并人工检查了角色一致性、移动方向和跳跃轨迹。

## 版权说明

- 《樱花庄的宠物女孩》及椎名真白相关角色权利归原作者、出版社与其他权利方所有。
- Codex 与 OpenAI 名称及相关权利归 OpenAI 所有。
- 本仓库为非官方粉丝创作，未附加开源许可证，不授予角色形象或素材的商业使用权。
- 如权利方认为内容不适合公开，请提交 Issue 联系移除。

