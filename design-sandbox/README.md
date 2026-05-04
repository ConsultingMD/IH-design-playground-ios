# Design sandbox (Cursor)

Use this folder as the **single hub** for context the agent should load when your team explores ideas in this repository.

**Canonical written source of truth:** [`design.md`](design.md) — full principles, foundations, components, messaging, patterns, Figma links.

**Always-on Agent context (compact):** [`DESIGN_AGENT_CORE.md`](DESIGN_AGENT_CORE.md) — what the DS *is*, inventories, and when to open **`design.md`** / Figma so designers don’t restate basics every chat.

**Future split (optional):** [`design-split-plan.md`](design-split-plan.md).

## What lives here

| Path | Purpose |
|------|---------|
| [`DESIGN_AGENT_CORE.md`](DESIGN_AGENT_CORE.md) | **Compact DS brain for the Agent** (always loaded via Cursor rule); not a duplicate of the full spec. |
| [`design.md`](design.md) | **Full written spec:** foundations tables, per-component guidance, messaging, patterns, Anatomy URLs. |
| [`app-visual-language.md`](app-visual-language.md) | How the product should look and behave: navigation, density, tone, motion, key patterns. |
| [`personas/`](personas/) | Who you are designing for; keep aligned with your org’s canonical persona docs. |

## How to work in Cursor

1. Open this repo in Cursor. The Agent always gets **`DESIGN_AGENT_CORE.md`**; it should open **`design.md`** when a task needs deep rules, hex/spacing tables, or long component sections. Use **Figma MCP** for Anatomy fidelity.
2. In chat, you can say things like: *“Using our DS (design.md for spacing tokens), personas, and visual language, propose two signup variants.”*
3. To force file context, use **@** mentions: e.g. `@design-sandbox/design.md`, `@design-sandbox/app-visual-language.md`, `@design-sandbox/personas/OVERVIEW.md`.
4. For Figma-backed specs, mention **ih-figma-ds-visual-refs** or paste a Figma node URL.

---

## Calling on the design system (designer playbook)

You do **not** need to paste the whole design system into every chat. The Agent already loads **`DESIGN_AGENT_CORE.md`**. Your job is to **signal depth** when you need it.

### What you get for free (no extra typing)

- IH **intent** (AI-first, trustworthy, clinically grounded).
- **Principles** in compressed form (care, clarity, system-first).
- **Token model** basics (semantic vs core; where full tables live).
- **Component and messaging inventories** (names the Agent should recognize).
- **Source order:** written spec → Figma → product overlay.

### When to add what

| You need… | Do this |
|-----------|---------|
| **Rough UX / flow / copy** that should “feel like IH” | Plain language is enough. Optionally **@** [`app-visual-language.md`](app-visual-language.md) + [`personas/OVERVIEW.md`](personas/OVERVIEW.md). |
| **Specific rules** (spacing scale, color token names, form validation, component “when to use”) | **@** [`design.md`](design.md) *or* say *“use the spacing / Forms section in design.md”*. The Agent should read that file for detail. |
| **One component’s guidance + Figma link** | Say the **component name** (matches inventory in **`DESIGN_AGENT_CORE.md`**). For the curated link, the Agent can find it under that component in **`design.md`**. |
| **Pixels, variants, layout, Code Connect** | Paste an **Anatomy Figma URL** *or* ask to use **ih-figma-ds-visual-refs** / “pull this frame from Anatomy.” |
| **Messaging patterns** (Disclaimer, quick reply, cards, etc.) | Say the **pattern name** and **@** [`design.md`](design.md) (messaging section) if you need exact rules. |
| **Product-specific** nav, density, voice | **@** [`app-visual-language.md`](app-visual-language.md). Long **content strategy** lives in Confluence (linked from that file). |

### Prompt patterns that work well

- **Component choice:** *“For [screen/goal], which IH components from our inventory fit? If unsure, check `design.md` for Button vs Link and cite the section.”*
- **Tokens:** *“Use semantic color/spacing from `design.md`—don’t invent hex. @design-sandbox/design.md for the Foundations sections.”*
- **Figma fidelity:** *“Match Anatomy for [X]. Here’s the Figma link: …”* or *“Use ih-figma-ds-visual-refs to screenshot the [component] spec.”*
- **Exploration:** *“Sandbox brainstorm: 2 options for [flow], grounded in DESIGN_AGENT_CORE + @personas/OVERVIEW.md. Flag DS gaps.”*

### @ mentions (force context)

Use **`@`** when the Agent might otherwise miss a file:

- **`@design-sandbox/design.md`** — deep spec, tables, long component/messaging sections.
- **`@design-sandbox/DESIGN_AGENT_CORE.md`** — rarely needed; already always on, but useful to remind *“stay within CORE defaults.”*
- **`@design-sandbox/app-visual-language.md`** — product feel.
- **`@design-sandbox/personas/...`** — who you’re designing for.

### Figma MCP

- **Authenticate** Figma in Cursor if Anatomy prompts fail.
- **Paste links** from Anatomy whenever you care about **exact** structure or visuals.
- Say **ih-figma-ds-visual-refs** if you want the Agent to follow the full pull workflow (metadata → context → screenshot).

### If the Agent drifts

- *“Cite `design.md` section for that”* or **@design.md** and repeat the question.
- *“Pull Anatomy for [node] before answering.”*

---

## Onboarding checklist for new teammates

- [ ] Read `AGENTS.md` at the repo root (agent behavior defaults).
- [ ] Skim `DESIGN_AGENT_CORE.md` (always on for the Agent); open `design.md` when you need full foundations/component detail; skim `app-visual-language.md` for product-specific notes.
- [ ] Confirm `personas/` matches your latest persona set.
- [ ] Authenticate Figma MCP if Anatomy access requires login.

## Optional next steps

When you are ready to move from chat to UI, add a minimal SwiftUI playground or prototype target in this repo and extend rules/skills to reference those file patterns.
