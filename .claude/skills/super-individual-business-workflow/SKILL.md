# 超级个体商业工作流 / Super Individual Business Workflow

## Overview

When you need to go from a project idea (or project sheet) through an end-to-end pipeline of "Market Validation → Product Development → Marketing Pipeline → Client Proposal", use this skill.

Core capabilities:
1. **Read project sheet** — Parses CSV/Excel/structured text for project info
2. **Auto-fill variables** — Replaces all `[xxx]` placeholders from project data
3. **Step-by-step execution** — Executes the 4-phase workflow sequentially
4. **Interactive decision making** — Asks user for input at branches, missing info, or unclear choices

---

## Input Phase: Read Project Sheet

### Step 1.1 — Get Project Source
- If the user already uploaded/pasted a project table → parse it
- If not provided → ask: "Please provide a project sheet (paste text, upload CSV/Excel, or describe project info)"

### Step 1.2 — Parse Project Table
Extract these fields (if present):
- `project_name` — Project/product name
- `project_type` — Product type (Web App / Mobile App / Consulting / Content / E-commerce / SaaS / Other)
- `target_audience` — Target users
- `core_features` — Core feature modules (comma-separated)
- `brand_style` — Brand style (tech / minimalist / business / trendy / other)
- `platform` — Publishing platforms
- `tech_stack` — Tech stack preference (React / Vue / Python / none)
- `service_type` — Service type (for proposal phase)

If **multiple projects** exist → ask: "Which project should we work on first?"

If **required fields are missing** → ask user to fill them.

---

## Execution Phase: 4-Stage Workflow

### Stage 1: Market Research & Marketing Copy

#### Task 1.1 — Market Scan & Competitive Analysis
- Use `WebSearch` to search trends in `[project_type]` and competitive landscape
- Search queries: `"[project_type] trends 2026"`, `"[project_type] business opportunities"`
- Output: Trend analysis report + competitor list with differentiation points

#### Task 1.2 — User Pain Point Mining
- Search Reddit / social media for `[target_audience]` pain points
- Extract 3-5 real user quotes or high-frequency complaints
- Output: Core pain points and needs document

#### Task 1.3 — Marketing Copy Generation
Generate 3 versions of marketing copy, each with:
- **Hook** (attention grabber)
- **Pain point** (relatable problem)
- **Solution** (how `[project_name]` solves it)
- **CTA** (call to action)

> Ask user: "3 versions with different angles: A-pain driven / B-benefit driven / C-suspense driven. Which ones do you need?"

Save to `outputs/marketing_copy.md`

---

### Stage 2: Product/Service Rapid Development

#### Task 2.1 — UI Prototype (digital products only)
> If `[project_type]` is consulting/content/etc. → skip and ask if user wants a service flow diagram instead

- Design `[project_name]` interface prototype
- Include core features: `[core_features]`
- Style: `[brand_style]`
- Create interactive HTML prototype
- Save as `outputs/prototype.html`

#### Task 2.2 — Tech Stack Confirmation
> Ask: "Frontend using `[tech_stack]`, backend [recommended], database [recommended]. OK or other preferences?"

#### Task 2.3 — Code Generation
- Generate MVP code for `[project_name]`
- Includes: frontend core pages, backend API framework, DB schema
- Using `[tech_stack]`
- Save to `outputs/[project_name]/`

#### Task 2.4 — Complex Project Split (optional)
> If >3 core features, ask: "Need parallel dev mode? I can run frontend/backend/DB in parallel."

---

### Stage 3: Automated Marketing Pipeline

#### Task 3.1 — Corpus Building
- Ask user for past viral content or reference materials
- If provided, extract style patterns (tone,句式, structure)
- Save style guide to `outputs/corpus_style_guide.md`

#### Task 3.2 — Content Batch Generation
Generate:
1. **3 social media posts** (adapted to `[platform]`, 100-200 chars each)
2. **1 long-form article** (1000-1500 words)
3. **1 video script** (60-90 seconds)

> Ask: "Content draft done. Need adjustments on tone/length/focus?"

Save to `outputs/content_plan.md`

#### Task 3.3 — Visual Specs
- Visual design descriptions for each piece of content

#### Task 3.4 — Publishing Schedule
> Ask: "Set up scheduled publishing reminders?"

---

### Stage 4: Client Proposal Conversion

#### Task 4.1 — Requirements Extraction
> Ask: "Have client communication records? I can extract requirements. If not, I'll build from research."

Output: `outputs/requirements.md`

#### Task 4.2 — Proposal Drafting
- Draft as "AI Sales Director" for `[service_type]`
- Structure: Cover → Pain Points → Solution → Value → Timeline → Pricing → Case Studies → Next Steps
- Save: `outputs/proposal_draft.md`

#### Task 4.3 — Visual Optimization
- Convert to styled HTML (consulting-firm style)
- Save: `outputs/proposal.html`
> Ask: "Export to PDF or other format?"

---

## Completion Phase

### Summary Report
Generate project summary with:
- Deliverable checklist (all outputs)
- Next-step suggestions
- Possible recurring tasks

### Ask Next Step
"Workflow complete. Want to: A) Modify deliverables B) Start next project C) Set up recurring tasks D) Export all files"

---

## Design Principles

1. **Don't skip confirmation** — Explain before each phase, use `AskUserQuestion` for choices
2. **File persistence** — Every deliverable saved to `outputs/`
3. **Sequential execution** — No skipping; each step's output is next step's input
4. **Graceful fallback** — If a tool is unavailable, offer alternatives
5. **Context management** — Periodically show progress (done / upcoming)
