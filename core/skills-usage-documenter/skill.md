# Skills Usage Documenter

## Purpose
Maintain a lightweight, human-readable file that documents which skills were actually used in this project.
This is documentation-only. It must not affect skill activation or execution.

## Output File
- File name: `skills-usage-document.md`
- Location: project root
- If missing: create it using the Template section below.
- If present: update it without deleting history.

## Always-On Behavior
This skill is Core: it is always active and continuously observes project work.
Observation happens on every prompt/task/deliverable.

Important: Always active does NOT mean always writing.
- The skill should *observe every time*.
- The skill should *write/update the document only when new information exists* (new skill entry, count increment, new area, overview timestamps).
This keeps the document readable for humans.

## What to Document
A single table of skills used:
- Skill
- Usage Count
- What it does (short human description)
- Where it was used (areas / contexts)
- Evidence (Confirmed / Inferred)
- Notes (optional, short)

No category splits (no Core/On-Demand/Archived sections).
No trends.
No extra files.
No JSON.
No technical logs.

## Evidence Rules
- Confirmed:
  - Direct artifact evidence (e.g., pptx/xlsx/docx/pdf created/edited), or
  - Runtime tracing / explicit tool invocation signals if available.
- Inferred:
  - Based on prompts, file changes, and project type when tracing is unavailable.

## Usage Count Rules
Usage Count represents meaningful usage events that led to a real outcome, not internal steps.
- Increment when a skill materially contributed to an output or decision.
- Avoid inflating counts for repeated rephrases of the same request.
- If inference-only, keep counts conservative.

## Areas Rules (Where it was used)
Use short, human-friendly area labels. Preferred format:
`[Artifact] : [Purpose]`
Examples:
- `Docs : API handoff`
- `PDF : Final report`
- `Slides : Stakeholder demo`
- `Spreadsheet : KPI summary`

Areas should be deduplicated.

## Update Rules (Never Delete History)
When updating:
1) Update Project Overview dates:
   - Set First Recorded if empty
   - Always update Last Updated
2) Update the Skills Used table:
   - Add new rows for new skills
   - Increment usage counts conservatively
   - Merge/deduplicate areas
   - Upgrade Evidence to Confirmed if later confirmation appears
3) Append a new entry under Update History summarizing what changed.

Do not rewrite the entire history. Do not delete or reorder prior Update History entries.

---

## Template (create `skills-usage-document.md` if missing)

```md
# Skills Usage Documentation

This document provides a lightweight, human-readable overview of the skills
that were actually used during this project.

It is descriptive only and does not affect skill activation or execution.

---

## Project Overview

| Field | Value |
|---|---|
| Project Type | _TBD_ |
| First Recorded | _YYYY-MM-DD_ |
| Last Updated | _YYYY-MM-DD_ |
| Notes | _Optional short context_ |

---

## Skills Used

| Skill | Usage Count | What it does | Where it was used | Evidence | Notes |
|---|---:|---|---|---|---|
| _None yet_ | 0 | — | — | — | — |

---

## Notes on Accuracy

- **Confirmed**: Supported by direct artifact creation or runtime signals.
- **Inferred**: Based on prompts, file changes, or project context.
- Counts reflect meaningful usage events, not internal steps.

---

## Update History

### _YYYY-MM-DD_
- _Short summary of what changed (skills added, counts increased, areas updated)._
