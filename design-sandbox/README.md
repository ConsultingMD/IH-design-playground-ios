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

## Onboarding checklist for new teammates

- [ ] Read `AGENTS.md` at the repo root (agent behavior defaults).
- [ ] Skim `DESIGN_AGENT_CORE.md` (always on for the Agent); open `design.md` when you need full foundations/component detail; skim `app-visual-language.md` for product-specific notes.
- [ ] Confirm `personas/` matches your latest persona set.
- [ ] Authenticate Figma MCP if Anatomy access requires login.

## Optional next steps

When you are ready to move from chat to UI, add a minimal SwiftUI playground or prototype target in this repo and extend rules/skills to reference those file patterns.
