# Persona — multiple claims issues

## Snapshot

- **Label:** Benefits / billing navigator (claims stress)
- **Goal:** Resolve **several overlapping claims problems**—denials, unexpected balances, coordination of benefits, slow responses—and leave with a **clear status** and **paper trail**.
- **Quote:** *“I don’t want empathy—I want a timeline: what’s wrong, what you need from me, and what happens next.”*

## Context

- **Typical situation:** Multiple EOBs or portal notices; possible **duplicate charges**, **out-of-network surprises**, or **prior auth** disputes across episodes of care; may be appealing or uploading documents repeatedly.
- **Constraints:** Limited financial buffer; distrust of payer/provider blame-shifting; may need employer/benefits context explained plainly.

## Behaviors

- **How they navigate:** Hunts for **claim IDs**, **dates of service**, **amounts**, **payer responses**; wants **download/share** and **status tracking**; may escalate to phone/chat after self-serve stalls.
- **What makes them bounce:** Dead-end FAQs; **opaque** statuses (“processing” forever); forcing separate channels per issue without linking cases; jargon-heavy denial letters with no translation.

## Implications for design

- **Do:** Present **issue-centric** views (one claim/problem per thread); show **required member actions** as checklists; provide **definitions** inline (deductible, allowed amount, denial reason codes high-level).
- **Avoid:** Assuming a single happy path; hiding **timelines** or **appeal windows**; mixing clinical care tasks and billing tasks without clear IA.

## Test scenarios (sandbox)

1. **Three open issues:** User lands with denial + balance bill + pending appeal → dashboard shows **prioritized list**, **next step** each, and **single** path to upload missing doc.
2. **Handoff:** User starts in app, needs human case support → sees **reference/case ID**, what was sent, and **expected follow-up** timeframe.
