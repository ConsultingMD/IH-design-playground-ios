# Agent context — IH design playground

This workspace is a **sandbox for design exploration** in Cursor. Treat it as the shared starting point for experiments that should still align with the Included Health design system, defined personas, and product visual language.

**Always-applied rule:** `.cursor/rules/ih-design-spec-always.mdc` pulls **`design-sandbox/DESIGN_AGENT_CORE.md`** into Agent context (compact DS identity). Open **`design-sandbox/design.md`** when you need full detail, tables, or component-specific prose.

## Ground truth (use in order)

1. **Written design spec (source of truth for this repo)** — **`design-sandbox/DESIGN_AGENT_CORE.md`** is always in context (compact identity + inventories). Use **`design-sandbox/design.md`** for **full** principles, foundations tables, per-component and messaging rules, patterns, and curated Anatomy links whenever the task needs that depth—per the “When to open” section in **`DESIGN_AGENT_CORE.md`**.

2. **Design system (Figma / Anatomy)** — Visual fidelity, undiscovered nodes, Code Connect, and screenshots come from the canonical **Anatomy – IH Design System** file via the **ih-figma-ds-visual-refs** skill (`.cursor/skills/ih-figma-ds-visual-refs/SKILL.md`) and official Figma MCP. Use Figma when **`design.md`** does not cover the detail, or when you need pixels, variants, or named tokens from the file. Do not invent tokens when Figma or Code Connect provides names.

3. **Personas** — Human-readable summaries live under `design-sandbox/personas/`. Read these before judging flows, copy tone, or accessibility tradeoffs.

4. **App look and feel** — `design-sandbox/app-visual-language.md` layers product-specific navigation, density, motion, and voice notes on top of the DS spec. Content-strategy detail lives in Confluence (linked there); do not treat this file as a duplicate of **`design.md`**.

5. **Exploratory work** — For open-ended “what if” tasks, follow  
   `.cursor/skills/ih-design-sandbox-context/SKILL.md` so outputs stay comparable and reviewable (grounded in **`DESIGN_AGENT_CORE.md`**, then **`design.md`** when deep DS detail is needed).

## What designers typically do here

- Pull DS references from Anatomy via chat (skill: **ih-figma-ds-visual-refs**).
- Draft flows, copy variants, or component ideas grounded in **personas + visual language**.
- Iterate with the agent without requiring an Xcode build for every idea (until you add prototype code).

## Maintainer checklist

- Keep `design-sandbox/personas/` in sync with your team’s canonical persona source (Notion, Confluence, etc.).
- Refresh `app-visual-language.md` when navigation or branding shifts.
- Ensure teammates complete **Figma MCP authentication** if Anatomy is not fully public.
