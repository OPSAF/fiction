# 重构方案 v2.1

> 2026-06-14 | v0.9大改 | 序章10集重写

---

## 一、当前状态

### 就位（不动）
| 文件 | 用途 |
|------|------|
| `index.html` | 完整阅读器——CSS/JS/md2html/终端渲染/分页/选项/百科弹窗 |
| `HIDE/01~07` | 唯一权威设定 |
| `HIDE/outline.md` | 主大纲 v0.9 |
| `HIDE/writing_briefs.md` | **每集详细写作brief（Agent以此为准）** |
| `HIDE/agent_prompts.md` | 每集启动prompt |
| `HIDE/06_WRITING_STYLE.md` | 写作规范（风格铁则+禁止项） |
| `PROLOGUE/ep_00_zero.md` | 格式样本1 |
| `PROLOGUE/ep_01_hoshinomiya.md` | 格式样本2 |

### 待重写
- `PROLOGUE/ep_00_zero.md` — 重写（v0.9修正）
- `PROLOGUE/ep_01_hoshinomiya.md` — 重写（致命修正：小雪是亲生的）
- `PROLOGUE/ep_02~ep_09` — 8集新写

**共10集待写**

---

## 二、格式规范

**照抄现版 ep_00 和 ep_01 的 .md 写法即可。** 以下是快速参考：

### 正文 = 纯中文段落
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

### 角色弹窗链接 = HTML span
```
<span class="ix person" data-ix="rei">神代零</span>
<span class="ix term" data-ix="mana_rank">F級</span>
<span class="ix place" data-ix="hoshinomiya">星ノ宮</span>
```

### 场景切换
- `***` = 分隔线
- `——` = 画面切换
- `## 标题` = episode标题

---

## 三、写作顺序（10个episode）

| # | 文件 | 标题 | 核心 | 字数 |
|---|------|------|------|------|
| 00 | `PROLOGUE/ep_00_zero.md` | 零 夢の残骸【重写】 | 出发前夜·梦境(博士·Phantasm·七人)·F级+理论满分vs实践为零·小雪亲妹妹·终端十三年 | 2500-3500 |
| 01 | `PROLOGUE/ep_01_hoshinomiya.md` | 壱 星ノ宮【重写】 | **致命修正：小雪是静亲生的**·星ノ宮日常·废坑异常·#4记录 | 5000-7000 |
| 02 | `PROLOGUE/ep_02_kakusei.md` | 弐 三歳の起動 | 零独自发烧→终端激活→Eve对话→探索限制→观测者效应 | 5000-6000 |
| 03 | `PROLOGUE/ep_03_primary.md` | 参 陨落の天才 | 小雪兄控·F级判定·理论满分vs实践旁听·废坑狩猎·床下收藏品 | 6000-8000 |
| 04 | `PROLOGUE/ep_04_akane.md` | 肆 朱音 | 同班·女仆存在·地牢组队(中计→救→不服→嘴炮·零摇头)·私下全败·朱音破防 | 7000-9000 |
| 05 | `PROLOGUE/ep_05_dungeon.md` | 伍 地下迷宮与倒卖 | ★選択肢①(A=手套/B=礼物→小木箱)·自行车·集市约会·叫名字 | 7000-9000 |
| 06 | `PROLOGUE/ep_06_middle.md` | 陸 問題児と風紀委員 | 普通科=问题儿童·★選択肢②(A=忍耐/B=嘴炮)·朱音风纪委员·调魔導科·匿名论文·女仆揭晓 | 8000-10000 |
| 07 | `PROLOGUE/ep_07_dream.md` | 漆 夢·小雪の才能 | 梦境加深·白羽栞批注·小雪保送(极稀有)·★選択肢③·约定去帝都 | 6000-8000 |
| 08 | `PROLOGUE/ep_08_exam.md` | 捌 受験 | 和小雪一起出发·偶遇保送朱音+女仆·三阶段考试(内部操作)·合格 | 6000-8000 |
| 09 | `PROLOGUE/ep_09_eve_end.md` | 玖 星へ | Eve正式介绍·小雪少年班报道·入学宿舍·帝都第一夜·序章END | 5000-7000 |

---

## 四、v0.9 关键设定（Agent必须知道）

- **零**：理论始终满分（不控分）·实践课全程旁听·初中匿名发表论文（波粒二象性·双缝干涉）
- **小雪**：神代家**亲生**女儿（零两岁时静怀孕生下）·仅有静知道天使血统·保送极其稀有（连朱音都没有）
- **朱音**：双亲健在·风纪委员·完美主义·保送星導学園·女仆陪读（初中零才揭晓）·没有护身符
- **静**：隐藏天使族——怕冷·喜欢月光——极度正常化叙述·不能有"这里可疑"的笔触
- **博士**：梦中的称呼不带姓氏——就是「博士」
- **女仆**：天宮家女仆=朱音同班同学·从小学就在·安静·什么都看在眼里

---

## 五、写作流程

### 写前
1. 通读 `PROLOGUE/ep_00_zero.md` 和 `ep_01_hoshinomiya.md` 看格式
2. 打开 `HIDE/writing_briefs.md` 找到对应episode的brief
3. 按brief中场景顺序和伏笔checklist来写

### 断点续写
写不动了在文件末尾加 `<!-- CHECKPOINT: 场景N完成 -->`，下次从这继续。

### 写后
1. 更新 `data/outline.json` 中该集status
2. Git commit

---

## 六、快速参考

### 弹窗ID速查
`rei` `akane` `koyuki` `eruna` `maya` `sara` `alice` `shiori` `eve` `kenichiro`
`hoshinomiya` `seido` `terminal` `observer` `mana_rank` `ril` `voidborn`

### 选择肢模板
```html
<div class="chc" id="CHOICE_ID"><div class="cl">⚡ 選択肢</div>
<button class="cb a" data-c="CHOICE_ID" data-o="0"><span class="lt">A</span>日文选项 <span class="cs">中文后果</span></button>
<button class="cb b" data-c="CHOICE_ID" data-o="1"><span class="lt">B</span>日文选项 <span class="cs">中文后果</span></button>
<div class="ch">（選択後に取り消し可能）</div></div>
```
