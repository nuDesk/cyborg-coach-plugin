---
name: check-setup
description: Check a participant-owned Claude Code project or environment for readiness, scope, and continuity without making changes. Use when asked to check setup; organization-wide OS assessment belongs to audit-os.
---

# Check my setup

Run this only when the user asks for it. Ordinary coaching does not include a readiness assessment.

Plugin version checks belong to `/cyborg-coach:check-for-updates`, not this assessment. Do not refresh or update a plugin while diagnosing setup.

Perform a read-only assessment. Do not create, edit, move, or delete files; install tools; authenticate connectors; or change settings. This skill reports; it never repairs. Reporting means saying the result in conversation: do not write an assessment, receipt, or log to any file while running this skill. A later request to save a report is a separate scoped write requiring an approved exact path and preview. If a harmless check would still need new access, mark it `Blocked` and name the observation you need.

Read `${CLAUDE_PLUGIN_ROOT}/references/operating-rules.md` for authorization, privacy, evidence language, and the canonical response rule, and apply `${CLAUDE_PLUGIN_ROOT}/references/setup-standard.md` exactly. Read `${CLAUDE_PLUGIN_ROOT}/references/setup-and-recovery.md` only when describing a proposed repair path.

## Procedure

1. Resolve the selected project or environment from the request and opened workspace. A parent folder does not select a child project. Ask one question if the intended project is ambiguous; do not recursively search for a presumed return visit. Organization-wide governance and shared-memory assessment route to `/cyborg-coach:audit-os`, carrying known context.
2. Inspect relevant setup in that selected scope through existing read access. For an OS-integrated project, check only its approved links to existing shared context, not the whole OS. A standalone project needs no OS or global pointer. Honor explicit test roots exactly; never fall back outside them or read global files merely to complete a checklist. Use the project playbook when interpreting documentation or continuity gaps.
3. Evaluate every applicable check as `Pass`, `Gap`, `Not applicable`, or `Blocked`, citing concrete evidence: a file and its relevant section, a harmless read result, or an explicit user report. A path existing is never evidence of substantive or loaded context. Accept equivalent combined documents; do not fail a setup for lacking a particular filename.
4. Inspect with this session's granted tools yourself rather than asking a non-technical user to run commands or read paths back to you. Keep observed, reported, inferred, and unchecked strictly distinct.
5. Identify findings and the smallest repair before proposing edits. Compare current sources to outputs; if they differ from a saved earlier check, call the result stale against current inputs. Do not call the historical check false or say it never ran without evidence about that earlier run. Keep the per-check evidence and repair options available for follow-up, not an automatic audit transcript.
6. End with exactly one formal result: `Ready` (every applicable check passes) or `Not ready — <short reason>`.
7. Report `Task status: <completed | in progress | blocked | not started> — <evidence or reason>` separately. This means the participant's work, never completion of this assessment. A stale output is not a completed current task just because the assessment finished. A safe task can succeed while setup is not ready.
8. Default response: at most three short bullets, normally under 80 words. Include the readiness result, participant task status, the primary finding and smallest next action, then say "No files changed." Keep the full checklist and successful checks internal. Do not add headings, a report, optional menus, or repeated caveats. If another material blocker changes the next action, name it briefly too. Give the detailed assessment only when requested; never hide a material risk to meet the word target.

This is a setup assessment, not a security audit, compliance certification, correctness guarantee, deployment verification, or authorization to apply the proposed fixes. If the user asks you to fix findings, route through `/cyborg-coach:setup-project`; carry forward any already-approved exact write scope instead of asking twice.
