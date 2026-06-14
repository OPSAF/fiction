# 重构方案 v2.0（最终版）

> 2026-06-14 | 从零开始，按正确的方式重写全部24个episode。

---

## 一、当前状态

### 已就位（不动）
| 文件 | 用途 |
|------|------|
| `index.html` | 完整阅读器——CSS/JS/md2html解析器/终端渲染/分页/选项/百科弹窗 |
| `HIDE/00~07` | 7模块·1700+行·唯一权威设定 |
| `wiki/*.md` | 公开信息·432行 |
| `PROLOGUE/ep_00_zero.md` | **唯一保留的episode·格式样本** |
| `.claude/skills/write-novel.md` | 写作Skill |
| `reference/3734.txt` | 9万字密度参考 |

### 已清空（待重写）
- `PROLOGUE/` — ep_01~ep_09（9个文件）
- `chapter_01/part1/` — ep01~ep06（6个文件）
- `chapter_01/part2/` — ep07~ep10（4个文件）
- `chapter_01/part3/` — ep11~ep14（4个文件）

**共23个episode文件待写·目标约20万字**

---

## 二、格式规范（以 ep_00_zero.md 为准）

### 正文 = 纯中文
```
从帝都星京乘蒸汽火车约一小时。
车窗的景色从高层建筑与魔晶灯的闪耀，变为平缓的丘陵。
```

### 对话 = 日文原文 + 中文翻译紧跟
```
「——お兄ちゃん……だいじょうぶだから……」

"——哥哥……我没事的……"
```

### 终端块 = ````terminal` 代码块
````
```terminal
Terminal v1.0.7 — User: KAMISHIRO_REI
> status
[Observer #7 | Token: 990/1000 | Uptime: 13y]
> _
```
````

### 角色弹窗链接 = 保留HTML
```
<span class="ix person" data-ix="rei">神代零</span>
<span class="ix term" data-ix="mana_rank">F級</span>
<span class="ix place" data-ix="hoshinomiya">星ノ宮</span>
```

### 其他Markdown
- `## 标题` = episode标题
- `***` 或 `---` = 分隔线
- `**粗体**` = 粗体
- `` `代码` `` = 行内代码
- 空行 = 段落分隔

---

## 三、写作流程（每个episode）

### 写前必读（按顺序）
1. `PROLOGUE/ep_00_zero.md` — 格式样本
2. `HIDE/05_PLOT_OUTLINE.md` — 确认要写的episode
3. `HIDE/03_CHARACTERS.md` — 当前角色状态和萌点
4. `HIDE/01_WORLD_SETTING.md` — 世界观细节
5. `HIDE/06_WRITING_STYLE.md` — 风格规范

### 写作五步法
1. **日常** — 环境·人物状态·生活细节
2. **情感** — 角色互动·内心变化·关系推进
3. **装逼** — 反差展示·信息差利用·优雅智取（终端块在这里）
4. **智斗** — 规则反利用·预判·策略
5. **主线** — 推动剧情·埋下伏笔·连接前后

### 字数检查
每个episode文件 ≥ 3KB纯文本（参照 `reference/3734.txt` ≈ 240KB/9万字密度）

---

## 四、写作顺序（23个episode）

### Phase 1：序章（9个episode）

| # | 文件 | 标题 | 参考HIDE章节 |
|---|------|------|-------------|
| 01 | `PROLOGUE/ep_01_hoshinomiya.md` | 壱 星ノ宮 | 03_CHARACTERS（零·小雪·养父母）·01_WORLD_SETTING（星ノ宮·货币） |
| 02 | `PROLOGUE/ep_02_kakusei.md` | 弐 三歳の起動 | 04_TERMINAL_SYSTEM（首次启动）·03_CHARACTERS（小雪） |
| 03 | `PROLOGUE/ep_03_primary.md` | 参 初等部·冒険·副業 | 01_WORLD_SETTING（教育制度）·03_CHARACTERS（童年赚钱） |
| 04 | `PROLOGUE/ep_04_akane.md` | 肆 朱音 | 03_CHARACTERS（朱音·分家·废坑相遇·两张脸系统） |
| 05 | `PROLOGUE/ep_05_dungeon.md` | 伍 地下迷宮·観測者効果 | 04_TERMINAL_SYSTEM（观测者效应数据表） |
| 06 | `PROLOGUE/ep_06_middle.md` | 陸 中等部·変化 | 03_CHARACTERS（朱音渐变·试探期→认可期） |
| 07 | `PROLOGUE/ep_07_dream.md` | 漆 夢·小雪の才能 | 03_CHARACTERS（梦境·小雪天才·半天使血统伏笔） |
| 08 | `PROLOGUE/ep_08_exam.md` | 捌 受験 | 07_TRUTH_APPENDIX（入学操作·零不知情） |
| 09 | `PROLOGUE/ep_09_eve_end.md` | 玖+終 | 04_TERMINAL_SYSTEM（Eve激活）·03_CHARACTERS（护身符） |

### Phase 2：Ch01 Part 1（6个episode·日常铺垫·青梅竹马+妹妹）

| # | 文件 | 标题 | 核心 |
|---|------|------|------|
| 10 | `chapter_01/part1/ep01.md` | 一 帝都到着 | 1920s帝都·零和小雪·家族寮·小雪互动 |
| 11 | `chapter_01/part1/ep02.md` | 二 星見坂と朱音 | 开学日·朱音(黑丝)·蝴蝶结纠正·六年关系 |
| 12 | `chapter_01/part1/ep03.md` | 三 入学式とエルナ | 艾露娜(过膝袜)·世界观融入·上层委托伏笔 |
| 13 | `chapter_01/part1/ep04.md` | 四 特待科と橘教授 | 橘教授"コード"发言 |
| 14 | `chapter_01/part1/ep05.md` | 五 風の庭 ★選択肢① | 艾露娜讨论·"地球"线索·选择肢 |
| 15 | `chapter_01/part1/ep06.md` | 六 日常と小雪 | 宿舍日常·文書館·Eve分析 |

### Phase 3：Ch01 Part 2（4个episode·精灵+赚钱）

| # | 文件 | 标题 | 核心 |
|---|------|------|------|
| 16 | `chapter_01/part2/ep07.md` | 七 魔力測定 | 单独抽题·学校操作·合格 |
| 17 | `chapter_01/part2/ep08.md` | 八 エルナの調査 | 地下B5·魔導基層論·Observer #4 |
| 18 | `chapter_01/part2/ep09.md` | 九 帝都市場とアリス ★選択肢② | Alice登场·合作·选择肢 |
| 19 | `chapter_01/part2/ep10.md` | 十 工場地帯とサラ | 工業地帯·サラ(黑工)·零的决心 |

### Phase 4：Ch01 Part 3（4个episode·暗杀+学妹）

| # | 文件 | 标题 | 核心 |
|---|------|------|------|
| 20 | `chapter_01/part3/ep11.md` | 十一 小雪の日曜日 | 小雪重点回·白丝·草莓大福 |
| 21 | `chapter_01/part3/ep12.md` | 十二 做空と暗殺——真夜第一戦 | 期货做空·真夜暗杀·假死逃脱 |
| 22 | `chapter_01/part3/ep13.md` | 十三 トラップと感化——真夜第二戦 | 陷阱·嘴炮·放生·好感拉满 |
| 23 | `chapter_01/part3/ep14.md` | 十四 特別試験の予告 ★最終選択肢 | 宣布考试·Ch01 END |

---

## 五、写完后的集成

每个Phase完成后，更新 `index.html` 中的 `panelDefs` 对象（约第98行），确保 `files` 数组指向正确的episode文件路径。

```javascript
var panelDefs = {
  prologue: {files: ['PROLOGUE/ep_00_zero.md', 'PROLOGUE/ep_01_hoshinomiya.md', ...], pgs: [0,3,6]},
  ch01p1:   {files: ['chapter_01/part1/ep01.md', ...], pgs: [0,3]},
  ch01p2:   {files: ['chapter_01/part2/ep07.md', ...], pgs: [0,2]},
  ch01p3:   {files: ['chapter_01/part3/ep11.md', ...], pgs: [0,2]}
};
```

---

## 六、快速参考

### 终端块模板
````
```terminal
Terminal v1.0.7 — User: KAMISHIRO_REI
> command
[output line]
[WARNING: warning line]
> _
```
````

### 选择肢模板（在episode .md中直接写HTML）
```html
<div class="chc" id="UNIQUE_ID"><div class="cl">⚡ 選択肢</div>
<button class="cb a" data-c="CHOICE_ID" data-o="0"><span class="lt">A</span>选项A描述</button>
<button class="cb b" data-c="CHOICE_ID" data-o="1"><span class="lt">B</span>选项B描述</button>
<div class="ch">（選択後に取り消し可能）</div></div>
```

### 角色弹窗数据ID速查
`rei` `akane` `koyuki` `eruna` `maya` `sara` `alice` `shiori` `eve` `kenichiro`
`hoshinomiya` `seido` `terminal` `observer` `mana_rank` `ril` `voidborn`
