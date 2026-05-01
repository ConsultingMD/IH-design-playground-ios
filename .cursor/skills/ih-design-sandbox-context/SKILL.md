---
name: ih-design-sandbox-context
description: >-
  Ground exploratory design work in the IH design playground. Always anchor on
  design-sandbox/design.md first, then personas, app visual language, and
  Anatomy Figma references. Use when the user wants to brainstorm flows, compare
  variants, prototype UX copy, or test ideas in this repo’s sandbox without
  drifting from DS constraints.
---

# IH design sandbox — exploration playbook

## Goal

Keep **open-ended** design work reviewable and on-brand by chaining:

1. **Written DS spec** (`design-sandbox/design.md`) — **start here:** principles, foundations, components, patterns, agent rules, curated Anatomy links (repo source of truth for written guidance).
2. **Personas** (`design-sandbox/personas/`)
3. **Visual language** (`design-sandbox/app-visual-language.md`)
4. **Figma / Anatomy** (skill **ih-figma-ds-visual-refs** + official Figma MCP) — visuals, variants, nodes not spelled out in **`design.md`**, Code Connect.

## Before proposing solutions

1. Read **`design-sandbox/design.md`** whenever the task touches IH foundations, components, patterns, or DS rules documented there (default: skim relevant sections even for “brainstorm” prompts).
2. Read `design-sandbox/personas/OVERVIEW.md` and any persona files the user names (or all primary personas if scope is broad).
3. Read `design-sandbox/app-visual-language.md`. If sections are still placeholders, **say what is missing** and offer to draft concrete bullets for the user to approve — do not invent product facts silently.
4. For visual or token fidelity beyond **`design.md`**, use **ih-figma-ds-visual-refs**: metadata → targeted `get_design_context` / `get_screenshot` batches (avoid dumping huge trees).

## How to structure outputs

For each exploration deliverable:

1. **Scenario** — Persona + situation + success criterion.
2. **Options** — 2–3 variants max unless asked for more; label tradeoffs (clarity, trust, effort, accessibility).
3. **DS alignment** — Reference **`design.md`** sections and Anatomy deep links when applicable; add Figma nodes or token names when pulled via MCP; otherwise flag gaps (“needs component X from Figma”).
4. **Next step** — What to validate (research, usability, eng sizing).

## Anti-patterns

- Designing **without** checking whether personas or visual language contradict the idea.
- Hard-coding visual specs when Figma MCP can return **named** tokens or Code Connect mappings.
- Scope creep: huge redesigns when the user asked for a **sandbox** experiment.

## Related paths

- Repo agent defaults: `AGENTS.md`
- Always-on rule: `.cursor/rules/design-team-sandbox.mdc`
