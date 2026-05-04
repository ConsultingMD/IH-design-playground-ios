# IH Design System — agent core (compact)

**Purpose:** Give the Agent a **stable mental model** of the Included Health design system so designers don’t have to re‑explain basics every chat. This file is **small by design**. Authoritative detail, tables, hex values, per‑component guidance, and Figma URLs live in **`design.md`** (and Anatomy in Figma).

---

## Canonical sources (use in order)

| Layer | Where | When |
|--------|--------|------|
| **This file** | `design-sandbox/DESIGN_AGENT_CORE.md` | Defaults, naming, inventory, “what exists.” |
| **Full written spec** | `design-sandbox/design.md` | Deep rules, token tables, component/messaging/pattern prose, curated Anatomy links. |
| **Anatomy (Figma)** | fileKey `VT79VSlhYlpl0g2JS9vLKt`, skill **ih-figma-ds-visual-refs** | Layout, variants, screenshots, Code Connect—when fidelity or structure isn’t in prose. |
| **Product overlay** | `app-visual-language.md`, `personas/` | How *this* app behaves and who it’s for. |

If **`design.md`** and Figma disagree on something **documented in prose** in **`design.md`**, flag it and default to **`design.md`** unless the user says otherwise.

---

## Product experience intent (one paragraph)

Included Health is an **AI‑first, human‑supported** clinical front door: **warm, trustworthy, clinically grounded**, consumer‑grade clarity—never gimmicky or “bot‑ish.” Prioritize **emotional safety and medical accuracy**, then efficiency.

---

## Principles → agent rules (compressed)

**Design with care:** Reduce cognitive/emotional load; one primary action where possible; plain language; no surprise dead ends; fail calmly with a safe next step.

**Clear by design:** Obvious hierarchy; decoration only when it communicates; progressive disclosure; every element earns its place.

**Confident, not rigid:** Start from system patterns; extend tokens/patterns instead of one‑offs; adapt layout safely while keeping semantics and accessibility.

---

## Foundations (what to remember)

- **Color:** Three tiers—**core** (atoms, not used directly in product), **semantic** (what ships—meaning-based e.g. surface/text/border), **component** (rare exceptions). Semantic categories include **surface**, **text**, **border**; prominence steps include **weakest → strongest**. Full palettes and rules → **`design.md` → Foundations → Colors**.
- **Typography:** **Figtree** (weights documented in **`design.md`**). Scale names (Display, Title, Body, Caption, etc.) → **`design.md`**.
- **Spacing / elevation / icons / motion:** Follow **`design.md`** Foundations; use **Figma** for exact specs when implementing UI.
- **Dark mode:** Treat as **not fully specified** here unless **`design.md`** explicitly adds it—don’t invent dark palettes.

---

## Components (inventory)

**Do not maintain a duplicate list here**—it will drift from **`design.md`**.

- **Canonical list:** **`design.md` → `# Components` → `### Component inventory`** (bullet list). Use that section whenever you need exact names or to check whether something is a first-class component.
- **Behavior:** Prefer existing IH component names from that list; per-component guidance and Figma deep links live in the **`## [Name]`** sections under Components.

---

## Messaging (inventory)

Thread‑level patterns live under **`design.md` → Messaging components** (each with guidance + Figma links): Disclaimer, Timestamp & new indicator, Issue/topic input, System message, Jump to latest, Responses (Dot / Care Team / Member), Quick reply, Multi‑select chips, Service cards, Option cards, Preview cards, Load more, Visit confirmation, Sheet (messaging), etc.

---

## Patterns (inventory)

**`design.md` → Patterns:** Forms (structure, validation philosophy), Empty / Success / Error states, Do’s and Don’ts, etc.

---

## When to open the full spec (`design.md`)

Open or grep **`design.md`** when the user (or task) needs any of:

- Specific **hex/token** values, spacing scale numbers, or elevation recipes  
- **Per‑component** anatomy, variants, or “when to use” tables  
- **Messaging** copy/behavior rules for a named pattern  
- **Forms** validation and error‑handling rules  
- Exact **Figma deep links** already curated there  

Do **not** paste the entire **`design.md`** into replies—cite sections or quote the minimum.

---

## Figma MCP (short)

- URLs use `node-id=123-456`; MCP calls use `123:456`.  
- Prefer **`get_design_context`**; use **`get_metadata`** to find nodes; **`get_screenshot`** for pixels.  
- Full workflow → `.cursor/skills/ih-figma-ds-visual-refs/SKILL.md`.

---

## Splitting the full spec (for humans / future refactor)

The monolith **`design.md`** can be broken into smaller files **without changing meaning**, e.g.:

| Suggested file | Current `#` section |
|----------------|----------------------|
| `design/partials/overview-principles.md` | Overview, Principles |
| `design/partials/foundations.md` | Foundations |
| `design/partials/components.md` | Components |
| `design/partials/messaging.md` | Messaging components |
| `design/partials/patterns.md` | Patterns |

Then **`design.md`** becomes a short **index** that links to those files (or concatenates in CI). See **`design-sandbox/design-split-plan.md`** for migration steps.
