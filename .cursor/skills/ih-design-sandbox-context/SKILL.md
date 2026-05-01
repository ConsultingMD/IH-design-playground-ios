---
name: ih-design-sandbox-context
description: >-
  Ground exploratory design work in the IH design playground: personas,
  app visual language, and Anatomy Figma references. Use when the user wants to
  brainstorm flows, compare variants, prototype UX copy, or test ideas in this
  repo’s sandbox without drifting from DS constraints.
---

# IH design sandbox — exploration playbook

## Goal

Keep **open-ended** design work reviewable and on-brand by chaining:

1. **Personas** (`design-sandbox/personas/`)
2. **Written DS spec** (`design-sandbox/design.md`) — tokens, components, patterns, curated Anatomy links
3. **Visual language** (`design-sandbox/app-visual-language.md`)
4. **Design system** (skill **ih-figma-ds-visual-refs** + official Figma MCP)

## Before proposing solutions

1. Read `design-sandbox/personas/OVERVIEW.md` and any persona files the user names (or all primary personas if scope is broad).
2. Read `design-sandbox/design.md` when the task touches foundations, components, or patterns documented there.
3. Read `design-sandbox/app-visual-language.md`. If sections are still placeholders, **say what is missing** and offer to draft concrete bullets for the user to approve — do not invent product facts silently.
4. For visual or token fidelity beyond the written spec, use **ih-figma-ds-visual-refs**: metadata → targeted `get_design_context` / `get_screenshot` batches (avoid dumping huge trees).

## How to structure outputs

For each exploration deliverable:

1. **Scenario** — Persona + situation + success criterion.
2. **Options** — 2–3 variants max unless asked for more; label tradeoffs (clarity, trust, effort, accessibility).
3. **DS alignment** — Reference Anatomy nodes or token names when known; otherwise flag gaps (“needs component X from Figma”).
4. **Next step** — What to validate (research, usability, eng sizing).

## Anti-patterns

- Designing **without** checking whether personas or visual language contradict the idea.
- Hard-coding visual specs when Figma MCP can return **named** tokens or Code Connect mappings.
- Scope creep: huge redesigns when the user asked for a **sandbox** experiment.

## Related paths

- Repo agent defaults: `AGENTS.md`
- Always-on rule: `.cursor/rules/design-team-sandbox.mdc`
