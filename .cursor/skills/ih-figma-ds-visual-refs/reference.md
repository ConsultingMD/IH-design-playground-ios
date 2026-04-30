# Reference — Figma ids and links

## Anatomy – IH Design System

- **fileKey:** `VT79VSlhYlpl0g2JS9vLKt`
- **Example node from product URL:** `36992:15162` (URL form: `36992-15162`)

## Link template

```
https://www.figma.com/design/VT79VSlhYlpl0g2JS9vLKt/Anatomy--IH-Design-System?node-id=<HYPHENATED-NODE-ID>
```

Replace `<HYPHENATED-NODE-ID>` by turning each `:` in the node id into `-` (e.g. `123:456` → `123-456`).

## Metadata navigation tip

When `get_design_context` returns a container with little detail:

1. Run `get_metadata` on that node.
2. Identify child `FRAME`, `COMPONENT_SET`, or `SECTION` nodes.
3. Re-run `get_design_context` or `get_screenshot` on the child that matches the user’s intent.
