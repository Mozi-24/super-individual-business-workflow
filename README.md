# Super Individual Business Workflow / 超级个体商业工作流

> **四阶段端到端 Claude 商业化 Skill** — 市场验证 → 产品开发 → 营销管线 → 客户提案，**自动化、可交互、一人运转完整商业链路**
>
> A 4-phase end-to-end Claude skill that automates: Market Validation → Product Dev → Marketing Pipeline → Client Proposals. **Interactive, autonomous, single-person business workflow.**

---

## 📋 Overview / 概述

This Skill transforms a **project sheet** (CSV / Excel / text) into a step-by-step execution pipeline. You feed it your project, and it:

1. **Scans the market** — competitors, trends, Reddit pain points
2. **Generates marketing copy** — hooks, CTA, pain-point narratives
3. **Builds the product** — UI prototype → runnable code
4. **Creates content** — tweets, articles, video scripts, visuals
5. **Drafts proposals** — structured, visual, ready to send

**Key design philosophy:** The Skill asks before it acts. Any branch, any missing info, any unclear choice — it stops and asks.

本 Skill 将你的**项目表**自动转化为可执行工作流。输入项目信息 → 自动填充所有参数 → 逐步执行 → 遇到选择就问你。

---

## ✨ Features / 核心能力

| Capability | Description |
|:-----------|:------------|
| **Project Sheet Parsing** | Auto-read CSV / Excel / Notion / pasted text |
| **Variable Auto-fill** | Replaces `[your_product]`, `[core_features]` etc. from project data |
| **4-Phase Pipeline** | Market Research → Dev → Marketing → Proposal |
| **Interactive Execution** | Asks before branching, choosing, or when info is missing |
| **File-based Outputs** | Every deliverable saved to disk (prototypes, code, docs) |
| **Bilingual Ready** | Works in Chinese & English |

---

## 🚀 Quick Install / 快速安装

### Option A — Claude Code Plugin Marketplace (Recommended)

```bash
claude plugin marketplace add Mozi-24/super-individual-business-workflow
```

### Option B — Install via Skills CLI

```bash
npx skills@latest add Mozi-24/super-individual-business-workflow
```

### Option C — Manual Install / 手动安装

```bash
git clone https://github.com/Mozi-24/super-individual-business-workflow.git
mkdir -p ~/.claude/skills
cp -r super-individual-business-workflow/.claude/skills/super-individual-business-workflow ~/.claude/skills/
```

---

## 🎮 Usage / 使用方法

Start the skill:

```bash
/super-individual-business-workflow
```

Then provide your project sheet. The skill will parse it, ask you to confirm or fill gaps, execute phase-by-phase, and deliver files.

### Example Project Sheet

```csv
project_name,project_type,target_audience,core_features,brand_style,platform,tech_stack,service_type
AI Meeting Notes,SaaS Web App,remote teams,record-transcribe-summary-share,minimalist,Twitter,React+Node.js,subscription SaaS
```

---

## 📦 Deliverables / 交付物

| Phase | Deliverable |
|:------|:------------|
| 1 — Market Research | Competitive analysis, pain points, 3 marketing copy versions |
| 2 — Product Dev | Interactive HTML prototype, MVP code, DB schema |
| 3 — Marketing | 3 social posts, 1 article, 1 video script, visual specs |
| 4 — Proposal | Structured proposal draft, visual proposal HTML |

---

## 🧠 Architecture

```
.claude/skills/super-individual-business-workflow/
├── SKILL.md                  # Core workflow
└── references/
```

---

## 📄 License

MIT — See [LICENSE](LICENSE).

---

**Made for solo builders. Ship faster. Ship smarter. 🚀**
