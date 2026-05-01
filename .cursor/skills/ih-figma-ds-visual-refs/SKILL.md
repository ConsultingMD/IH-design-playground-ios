---
name: ih-figma-ds-visual-refs
description: >-
  Pulls visual references from the Included Health “Anatomy – IH Design System”
  Figma file via the official Figma MCP (metadata, screenshots, design context).
  Use when the user asks for Figma visuals, design-system screenshots, Anatomy
  file references, VT79VSlhYlpl0g2JS9vLKt, or IH DS frames/tokens from Figma.
---

# IH Design System — Figma visual references

## Goal

Gather **relevant** visual references from the canonical IH Design System file so implementation or docs match Anatomy.

## Relationship to written specs

**`design-sandbox/DESIGN_AGENT_CORE.md`** is always in Agent context (compact DS identity). **`design-sandbox/design.md`** is the **full** written source for tables, long guidance, and curated Anatomy URLs. Use **this skill + Figma MCP** when you need **visual** proof, screenshots, layout detail, Code Connect, or nodes **not** spelled out in prose. If **`design.md`** specifies a rule or token name, align with it; use Figma to validate or extend—not to override documented prose without calling out a conflict.

## Canonical file (do not guess)

| Field | Value |
|--------|--------|
| **fileKey** | `VT79VSlhYlpl0g2JS9vLKt` |
| **Human name** | Anatomy – IH Design System |
| **Default URL** | [Open in Figma](https://www.figma.com/design/VT79VSlhYlpl0g2JS9vLKt/Anatomy--IH-Design-System?node-id=36992-15162) |

**URL → API ids**

- `node-id` in URLs uses **hyphens** (e.g. `36992-15162`).
- Figma MCP calls expect **colons** (e.g. `36992:15162`).
- Branch URLs: if the link is `/design/:fileKey/branch/:branchKey/`, use **branchKey as fileKey** for MCP calls.

## Prerequisites

1. **Inspect MCP tools first**: Before calling any Figma tool, read that tool’s JSON schema under the workspace `mcps/plugin-figma-figma/tools/` folder so parameters (`fileKey`, `nodeId`, etc.) match the server.
2. **Authentication**: If the Figma MCP exposes `mcp_auth` or equivalent, complete auth before calls that return private file content.

## Which tools to use (read-only)

Prefer the **official Figma MCP** (`plugin-figma-figma`):

1. **`get_metadata`** — Fast tree of pages/frames/groups. Use first to **discover** node ids and names when the user names a section (“colors”, “buttons”, “spacing”) without an id.
2. **`get_design_context`** — Primary pull: structure, annotations, Code Connect hints, and contextual visuals for a node. Use for **frames or components** the user cares about.
3. **`get_screenshot`** — Pixel-accurate image for a specific node when you need a **clean visual reference** without regenerating layout discussion.

Do **not** use canvas-write / `use_figma` flows unless the user asks to **edit** Figma; that path requires the separate **figma-use** skill.

## Workflow

### A — User gave a Figma link (including this repo’s default)

1. Parse `fileKey` and `node-id`; normalize `node-id` to `nodeId` with colons.
2. Call **`get_design_context`** with that `fileKey` + `nodeId`.
3. If the response is too shallow (e.g. single empty wrapper), call **`get_metadata`** on the same or parent node to find children, then repeat on the **child frame** that holds the actual spec.

### B — User asks for “the design system” without a node

1. Call **`get_metadata`** starting from the **page or section** that matches scope (foundations vs components). If unsure, ask one clarifying question: *Which area? (e.g. color & type, core components, patterns.)*
2. From metadata, pick **5–15 nodes max** per turn (token cost): typically top-level section frames, not every variant.
3. For each selected node: **`get_screenshot`** and/or **`get_design_context`** depending on whether you need **pure visuals** vs **structure + annotations**.

### C — “Everything relevant” (bounded)

Treat “relevant” as:

- Foundations: **color, typography, spacing, elevation/grid, iconography** (as present in the file).
- Components: **library overview** frames or component sets the team uses for product work—not every micro-variant.

If the file is large, **stage** the work: Foundations pass → Components pass → Patterns pass, using metadata between passes.

## What to return to the user

Produce a short, structured deliverable:

1. **Scope** — Which nodes were pulled (`name` + `nodeId`).
2. **Visual references** — Screenshots or exported previews returned by MCP (preserve captions).
3. **Implementation hints** — Summarize **semantic tokens**, measurements, and Code Connect mappings from `get_design_context` without dumping raw JSON.
4. **Deep links** — For each node, a browser link:

   `https://www.figma.com/design/<fileKey>/<slug>?node-id=<nodeId-with-hyphens>`

   Replace `<slug>` with the file slug from the user’s URL or `Anatomy--IH-Design-System`; hyphenate `node-id` for the query param.

## Anti-patterns

- Calling write APIs or plugin JS when the user only asked for **references**.
- Pulling **hundreds** of nodes in one shot—use metadata + targeted batches.
- Hard-coding **hex values** from screenshots when the same token exists in **`get_design_context`** or Code Connect—prefer named tokens from the response.

## Optional detail

For long node lists or naming conventions in this file, see [reference.md](reference.md).
