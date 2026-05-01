# Plan: splitting `design.md`

Today **`design-sandbox/design.md`** is the single full IH design-system write‑up (~2.6k lines). That’s good for **one URL** and printing; it’s heavy for **always‑on Agent context**.

## Target state

1. **`DESIGN_AGENT_CORE.md`** — small “what the system is” layer (**always** in Agent context via `.cursor/rules/ih-design-spec-always.mdc`).
2. **`design.md`** — remains the **authoritative full spec** until you migrate; optional later: shrink it into an **index** only.
3. **`design/partials/*.md`** — optional chunks you edit over time; easier PRs and scoped `@` mentions.

## Suggested partial files

| File | Contents |
|------|-----------|
| `design/partials/00-overview-principles.md` | `# Overview`, `# Principles` |
| `design/partials/10-foundations.md` | `# Foundations` through Motion/Layering |
| `design/partials/20-components.md` | `# Components` through last component before Messaging |
| `design/partials/25-messaging.md` | `# Messaging components` |
| `design/partials/30-patterns.md` | `# Patterns` through end |

## Migration steps (manual or scripted)

1. Copy each section verbatim into the matching partial (no wording changes in pass 1).
2. Replace **`design.md`** body with links:

   ```markdown
   # Included Health — DESIGN

   **Full spec is split for editing.** Read in order:

   - [Overview & principles](design/partials/00-overview-principles.md)
   - [Foundations](design/partials/10-foundations.md)
   - [Components](design/partials/20-components.md)
   - [Messaging](design/partials/25-messaging.md)
   - [Patterns](design/partials/30-patterns.md)
   ```

3. Update repo references that pointed only at `design.md` (README, AGENTS, skills) to mention partials if you want Agent to open **one** chunk for a task.
4. Optional: add a script or CI check that **concatenates** partials into `design.md` for teams that require a single exported file.

## Agent behavior after split

- **Always:** `DESIGN_AGENT_CORE.md` (system identity).
- **On demand:** `@design/partials/25-messaging.md` etc., or **`design.md`** index + follow link.

No change to **Anatomy** ownership: Figma stays visual source; **`design.md`** (or partials) stay written source.
