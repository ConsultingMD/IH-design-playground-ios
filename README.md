# IH-design-playground-ios

Design playground and reference work for the Included Health Design System on iOS.

**Home:** [ConsultingMD/IH-design-playground-ios](https://github.com/ConsultingMD/IH-design-playground-ios) on GitHub.

```bash
git clone https://github.com/ConsultingMD/IH-design-playground-ios.git
```

---

## Design team sandbox (Cursor)

This repo is set up so designers can **experiment in Cursor** with consistent context:

| Resource | Location |
|----------|----------|
| **Agent defaults** (what the AI should assume) | [`AGENTS.md`](AGENTS.md) |
| **Always-on guidance** | [`.cursor/rules/design-team-sandbox.mdc`](.cursor/rules/design-team-sandbox.mdc) |
| **Design system spec** (written source of truth for this repo; read first) | [`design-sandbox/design.md`](design-sandbox/design.md) |
| **Personas + visual language hub** | [`design-sandbox/README.md`](design-sandbox/README.md) |
| **App look & feel** (fill in for your product) | [`design-sandbox/app-visual-language.md`](design-sandbox/app-visual-language.md) |
| **Exploration playbook skill** | [`.cursor/skills/ih-design-sandbox-context/SKILL.md`](.cursor/skills/ih-design-sandbox-context/SKILL.md) |

**Setup for your team:** (1) Keep `design-sandbox/design.md` aligned with Anatomy and your working norms. (2) Replace placeholders in `design-sandbox/app-visual-language.md` and `design-sandbox/personas/` with real IH content as needed. (3) Grant repo access and ensure **Figma MCP** is authenticated for Anatomy. (4) Optional: add SwiftUI or other prototype code later and extend rules with file globs.

---

## Cursor skill: IH Figma visual references

This repo includes a **[Cursor Agent Skill](https://cursor.com/docs/context/skills)** at `.cursor/skills/ih-figma-ds-visual-refs/` that tells the agent how to pull **visual references** from our canonical Figma design system file via the **official Figma MCP** (`plugin-figma-figma`).

### Canonical Figma file

| | |
|--|--|
| **Name** | Anatomy – IH Design System |
| **fileKey** | `VT79VSlhYlpl0g2JS9vLKt` |
| **Open in browser** | [Figma – Anatomy – IH Design System](https://www.figma.com/design/VT79VSlhYlpl0g2JS9vLKt/Anatomy--IH-Design-System?node-id=36992-15162) |

### URL ↔ MCP node ids

- In Figma URLs, `node-id` uses **hyphens** (e.g. `36992-15162`).
- Figma MCP calls expect **colons** (e.g. `36992:15162`).
- Branch URLs (`/design/…/branch/:branchKey/`): use **branchKey as fileKey** when calling MCP.

### Deep link template

```
https://www.figma.com/design/VT79VSlhYlpl0g2JS9vLKt/Anatomy--IH-Design-System?node-id=<HYPHENATED-NODE-ID>
```

Replace `<HYPHENATED-NODE-ID>` by turning each `:` in the node id into `-` (e.g. `123:456` → `123-456`).

### Tools (read-only)

| Tool | Use |
|------|-----|
| **`get_metadata`** | Discover pages/frames and node ids when you only have a section name (“colors”, “spacing”) |
| **`get_design_context`** | Primary pull: layout, annotations, Code Connect hints, visuals for a node |
| **`get_screenshot`** | Pixel-accurate screenshot for a specific frame or component |

Canvas write flows (`use_figma`) are **not** needed for pulling references; use those only when editing Figma.

### Agent workflow (summary)

1. Read the JSON schema for each Figma MCP tool under `mcps/plugin-figma-figma/tools/` before calling it.
2. If the user passes a Figma link: parse `fileKey` and `node-id`, then call `get_design_context`; use `get_metadata` if the node is an empty wrapper.
3. If scope is vague: ask which area (foundations vs components), then batch **5–15 nodes** per turn via metadata + screenshots/context.
4. Return: scope (node names + ids), visuals, token/Code Connect hints, and deep links with hyphenated `node-id`s.

### Full skill source

- [`SKILL.md`](.cursor/skills/ih-figma-ds-visual-refs/SKILL.md) — full agent instructions  
- [`reference.md`](.cursor/skills/ih-figma-ds-visual-refs/reference.md) — ids and navigation tips  

To use it in chat, mention **ih-figma-ds-visual-refs** or ask for Anatomy / IH DS visuals from Figma.
