# Persona — caregiver with multiple dependents (complex household)

## Snapshot

- **Label:** Multi-dependent household manager
- **Goal:** Coordinate **several people’s** care—appointments, prescriptions, school/sports injuries, and **their own** health—without losing track of **who** each task belongs to.
- **Quote:** *“I’m not managing one patient—I’m managing a calendar full of humans. Don’t make me guess which kid this lab result is for.”*

## Context

- **Household snapshot (composite):** Multiple children/dependents with **different** needs—e.g. one with **asthma** (action plans, triggers, inhaler refills), one with a **recent sports injury** (ortho follow-up, imaging, PT); member **also** in **behavioral health** (privacy-sensitive, scheduling continuity).
- **Constraints:** Context-switching; guilt/stress; variable co-parent involvement; may manage consent/proxy access across dependents.

## Behaviors

- **How they navigate:** Relies on **profiles or household switching**, **per-person timelines**, and **task lists** filtered by dependent; strong need for **labels and avatars** to reinforce identity context.
- **What makes them bounce:** Ambiguous notifications (“Appointment tomorrow” **for whom?**); mixing records across dependents; burying **their own** care behind kids’ care everywhere.

## Implications for design

- **Do:** Make **active dependent** obvious on every critical screen; support **parallel threads** (pediatric vs adult BH) with privacy-aware defaults; surface **household-level** vs **individual** actions clearly.
- **Avoid:** Single undifferentiated inbox; sharing-sensitive BH context in shared-family surfaces without safeguards; one-size **avatar** or naming that obscures who the row refers to.

## Test scenarios (sandbox)

1. **Inbox clarity:** Push notification about a message or result → user opens app and immediately knows **which dependent** and **what type** of message (clinical vs admin).
2. **Asthma vs ortho:** Same week—refill for preventive inhaler + ortho follow-up for sibling → user completes both without wrong-profile errors.
3. **BH privacy:** User schedules or messages BH for themselves → flow avoids **accidental** exposure to other household viewers where inappropriate.
