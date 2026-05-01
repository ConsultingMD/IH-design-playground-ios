# Design sandbox (Cursor)

Use this folder as the **single hub** for context the agent should load when your team explores ideas in this repository.

## What lives here

| Path | Purpose |
|------|---------|
| [`design.md`](design.md) | Design system spec: principles, foundations (color, type, spacing, elevation), Figma links, components, patterns, and agent rules. |
| [`app-visual-language.md`](app-visual-language.md) | How the product should look and behave: navigation, density, tone, motion, key patterns. |
| [`personas/`](personas/) | Who you are designing for; keep aligned with your org’s canonical persona docs. |

## How to work in Cursor

1. Open this repo in Cursor and ensure **Figma MCP** is connected if you need Anatomy content (`plugin-figma-figma`).
2. In chat, you can say things like: *“Using our personas and visual language, propose two signup variants that match Anatomy buttons and spacing.”*
3. To force file context, use **@** mentions: e.g. `@design-sandbox/design.md`, `@design-sandbox/app-visual-language.md`, `@design-sandbox/personas/OVERVIEW.md`.
4. For Figma-backed specs, mention **ih-figma-ds-visual-refs** or paste a Figma node URL.

## Onboarding checklist for new teammates

- [ ] Read `AGENTS.md` at the repo root (agent behavior defaults).
- [ ] Skim `design.md` for foundations/components relevant to your work; skim `app-visual-language.md` for product-specific feel notes.
- [ ] Confirm `personas/` matches your latest persona set.
- [ ] Authenticate Figma MCP if Anatomy access requires login.

## Optional next steps

When you are ready to move from chat to UI, add a minimal SwiftUI playground or prototype target in this repo and extend rules/skills to reference those file patterns.
