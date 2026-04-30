# Persona — chronic condition (medications & visit history)

## Snapshot

- **Label:** Long-term condition manager
- **Goal:** Keep treatment on track—refills, follow-ups, specialist coordination—and **see their own story** (meds, visits, instructions) in one trustworthy place.
- **Quote:** *“I live with this every day. I need the app to remember what I usually forget—not give me another puzzle.”*

## Context

- **Typical situation:** Juggling **multiple medications** (doses, pharmacies, renewals), past visits across **primary + specialty care**, labs/imaging, and occasional flare-ups or side-effect questions.
- **Constraints:** Cognitive load from symptoms or fatigue; intermittent gaps in connectivity; may share account visibility with a partner or adult child in crisis moments.

## Behaviors

- **How they navigate:** Looks for **timeline or care summary**, medication lists, **upcoming actions**, and quick paths to **message care team** or schedule. Search may be secondary if IA is strong.
- **What makes them bounce:** Conflicting or stale info (old med list vs reality); burying **renewals** or **prep for visit**; forcing phone-only paths for routine questions.

## Implications for design

- **Do:** Prioritize **accuracy and recency** cues (“last updated,” source); support **scanning** (group by condition or provider where helpful); surface **next best actions** (refill due, appointment prep).
- **Avoid:** Treating them like a one-off acute user; hiding clinical detail behind vague summaries; ambiguous ownership when something is **informational** vs **action required**.

## Test scenarios (sandbox)

1. **Med friction:** Two meds due different weeks → user finds **renewal or pharmacy** path without dead ends.
2. **Visit prep:** Upcoming specialist visit → user can review **recent visits + open questions** to bring without exporting PDFs manually.
