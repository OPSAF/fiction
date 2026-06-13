# 终端之梦 ~ Terminal Phantasm ~

## 项目概述
日式轻小说+Galgame融合风格的互动小说。HTML单文件SPA阅读器，双语（日文+中文），带选项分支系统。

## 写作技能系统
续写小说时，必须调用 skill `write-novel`。该 skill 包含：
1. **大纲管理**：写前回顾 `data/outline.json`，写后订正
2. **Galgame视听转换器**：立绘感/CG感/BGM感/环境音的精细化描写
3. **轻小说智斗装逼器**：规则流（信息差+规则反利用），禁用战力碾压
4. **对白润色器**：各角色有独特萌点（傲娇渐近/小动物系/知性天然/小恶魔高攻低防）
5. **ACGN轻量化叙事**：短句、第一人称吐槽、画面转场、禁用网文腔

## 语言规则
- 叙述/描写：日文 + 中文翻译（`<p class="cn">`）
- 对话：日文 + 中文翻译
- 终端界面：英文
- 中文翻译紧跟在日文原文之后

## 关键文件
- `index.html` — 完整的互动小说阅读器（517行）
- `data/outline.json` — 大纲与剧情追踪
- `data/characters.json` — 人物设定数据库
- `data/terminology.json` — 术语辞典
- `.claude/skills/write-novel.md` — 写作技能系统

## 写作流程
1. 读 `data/outline.json` 回顾剧情
2. 调用 `write-novel` skill
3. 写完后更新 `data/outline.json`
