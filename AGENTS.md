# Agent context — IH design playground

This workspace is a **sandbox for design exploration** in Cursor. Treat it as the shared starting point for experiments that should still align with the Included Health design system, defined personas, and product visual language.

## Ground truth (use in order)

1. **Design system (Figma)** — Canonical file and MCP workflow live in  
   `.cursor/skills/ih-figma-ds-visual-refs/SKILL.md`. Use the official Figma MCP for metadata, design context, and screenshots; do not invent tokens when Figma or Code Connect provides names.

2. **Personas** — Human-readable summaries live under `design-sandbox/personas/`. Read these before judging flows, copy tone, or accessibility tradeoffs.

3. **App look and feel** — `design-sandbox/app-visual-language.md` describes navigation patterns, density, motion, and how the live app should *feel*. Update that file as the product evolves so the sandbox stays accurate.

4. **Exploratory work** — For open-ended “what if” tasks, follow  
   `.cursor/skills/ih-design-sandbox-context/SKILL.md` so outputs stay comparable and reviewable.

## What designers typically do here

- Pull DS references from Anatomy via chat (skill: **ih-figma-ds-visual-refs**).
- Draft flows, copy variants, or component ideas grounded in **personas + visual language**.
- Iterate with the agent without requiring an Xcode build for every idea (until you add prototype code).

## Maintainer checklist

- Keep `design-sandbox/personas/` in sync with your team’s canonical persona source (Notion, Confluence, etc.).
- Refresh `app-visual-language.md` when navigation or branding shifts.
- Ensure teammates complete **Figma MCP authentication** if Anatomy is not fully public.
