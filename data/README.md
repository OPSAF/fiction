# 📊 Data 目录 — JSON 数据库说明

> 本目录存放结构化 JSON 数据，供 HTML Wiki 页面读取渲染。
> 所有数据均为**公开情报层级**——不包含剧透。

---

## 文件索引

| 文件 | 内容 | 关键字段 |
|------|------|----------|
| `chapters.json` | 章节元数据索引 | `id`, `title`, `status`, `characters_appeared` |
| `characters.json` | 公开人物数据 | `id`, `name`, `profile`, `appearance`, `personality`, `image_prompts` |
| `world.json` | 世界设定·地点·物品 | `locations`, `society`, `items` |
| `magic_system.json` | 魔法体系结构化数据 | `ranks`, `affinities`, `energy_sources` |
| `terminology.json` | 术语辞典 | `terms`, `definitions`, `first_appearance` |
| `image_prompts.json` | 集中生图提示词索引 | 所有 `image_prompts` 的快捷汇总 |

---

## 生图提示词（Image Generation Prompts）

每个角色/场景/物品均附带 **`image_prompts`** 字段，包含：

```json
{
  "image_prompts": {
    "base": {
      "prompt": "基础提示词（英文，适用于大多数动漫模型）",
      "negative": "负面提示词",
      "recommended_models": ["模型推荐"],
      "resolution": "建议分辨率",
      "cfg_scale": 7,
      "sampler": "Euler a / DPM++ 2M Karras"
    },
    "variations": {
      "casual": { "prompt": "...", "negative": "..." },
      "action": { "prompt": "...", "negative": "..." },
      "close_up": { "prompt": "...", "negative": "..." }
    },
    "style_notes": "风格说明：可搭配 LoRA / Embedding 等"
  }
}
```

### 推荐的生图模型

| 模型 | 适用场景 | 备注 |
|------|----------|------|
| **NovelAI v3 / v4** | 日式轻小说插图风 | 付费，风格最适合本作 |
| **Anything V5 / V7** | 通用动漫风格 | 免费，SD 社区主流 |
| **Animagine XL** | SDXL 高分辨率 | 角色细节丰富 |
| **Niji Journey** | Midjourney 动漫模式 | 在线使用，出图质量高 |
| **AOMO / Counterfeit** | 日系轻小说/插画风 | 偏galgame风格 |

### ⚠️ 重要说明

- 所有 prompt 为**英文**（主流模型对英文理解最好）
- 读者可根据喜好**自行调整** prompt、换模型、加 LoRA
- 本作不提供"官方立绘"——每位读者都可以有自己心中的角色形象
- 欢迎将满意的生图结果分享至社区

---

> *「百聞は一見に如かず。でも、想像はどんな絵よりも自由だ。」*
> *（百聞不如一見。但想象力比任何画都更自由。）*
