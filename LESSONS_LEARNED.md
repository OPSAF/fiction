# 项目重构 — 经验总结 v0.9

> 2026-06-14 | 在多次agent协作写小说失败后，总结可复用经验与避坑指南。

---

## 一、致命问题（不要再犯）

### 1. 字数永远不达标
- **原因**：agent倾向于"概括"而非"展开"。每个episode被压缩成2-3段，实际只有500-1000字。
- **对策**：
  - 每个episode必须拆成独立文件（`ep_XX.md`），强迫agent专注写满一个episode
  - 给出明确的"参考密度"：`reference/3734.txt` = 240KB GBK ≈ 9万字
  - 明确要求：每个episode文件至少3KB纯文本（不含HTML标签）
  - 用"写日常→写情感→写装逼→写智斗→写主线"五步法填满每个episode

### 2. 风格不统一
- **原因**：agent每次理解不同，有时传统叙事有时LN风格，有时第三人称有时第一人称。
- **对策**：
  - Skill文件 `.claude/skills/write-novel.md` 必须作为system prompt前置
  - 已完成episode (`PROLOGUE/ep_00_zero.md`, `ep_01_hoshinomiya.md`) 作为风格样本
  - 每个任务开头强制写："请参考ep_00和ep_01的风格，第一人称(僕/俺)，短句，CG感，禁用网文腔"

### 3. 前后矛盾
- **原因**：多次修改后，旧设定残留。比如零的父母有时已故有时健在，朱音有时本家有时分家。
- **对策**：
  - `HIDE/outline.md` 附录A"真相设定"作为唯一权威
  - 每次写完必须对照 `TASK_LIST.md` 底部的"关键设定速查表"
  - 写作前先读 `data/outline.json` 确认当前状态

### 4. 选项和赚钱元素丢失
- **原因**：重写时只关注叙事，忘了插入选项框和赚钱剧情。
- **对策**：
  - `TASK_LIST.md` 中明确标注每个选项的位置（★選択肢①/②/③）
  - 选项格式模板在 `TASK_LIST.md` 顶部

---

## 二、可复用资产

### 已就位的基础设施（不要重做）
| 组件 | 位置 | 状态 |
|------|------|------|
| CSS主题 + 分页系统 | `index.html` L1-72 | ✅ 完整 |
| JS分页函数 `PG()` | `index.html` L456 | ✅ 自动分页 |
| 选项系统 (CC对象) | `index.html` L460+ | ✅ 中日双语 |
| 角色弹窗 (IX对象) | `index.html` L451 | ✅ v0.8数据 |
| 终端界面样式 | `.tm` CSS类 | ✅ 完美 |
| `<!-- PG -->` 分页机制 | HTML注释 | ✅ 自动3页分割 |

### 已完成的episode（风格样本）
- `PROLOGUE/ep_00_zero.md` — 零（ゼロ）开场
- `PROLOGUE/ep_01_hoshinomiya.md` — 壱 星ノ宮·家族

### 已完善的大纲
- `HIDE/outline.md` — 主大纲 + 附录A"真相设定"
- `HIDE/chapter_01_outline.md` — Ch01三Part详细结构

---

## 三、重构方案

### 文件结构（不动）
```
PROLOGUE/          → 10个episode .md
chapter_01/
  part1/           → 6个episode .md
  part2/           → 4个episode .md  
  part3/           → 4个episode .md
index.html         → 集成所有.md + CSS/JS
HIDE/              → 大纲/角色/设定（不上传GitHub）
data/              → 结构化数据
reference/         → 字数校准样本
TASK_LIST.md       → 任务清单
LESSONS_LEARNED.md → 本文件
.claude/skills/    → 写作Skill
```

### 执行原则
1. **一次只写一个episode** — 每个episode独立文件，写完检查字数
2. **写完立即Git commit** — 防止丢失
3. **对照速查表** — 每次写前读 `TASK_LIST.md` 底部
4. **参考风格样本** — 每次写前读 `ep_00` 和 `ep_01`
5. **五步法填充** — 日常→情感→装逼→智斗→主线
