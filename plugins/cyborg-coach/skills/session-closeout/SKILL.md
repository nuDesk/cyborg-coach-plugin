---
name: session-closeout
description: Close out a Claude Code work session with real evidence, scoped documentation updates, unresolved work, and a resumable next step. Use when the user wants to save progress, pause, or prepare a clean handoff to a future session.
---

# Session closeout

Create a truthful, resumable record of this session. Closeout saves the state of this work; it is not the same as creating a reusable skill.

Use this when the user is stopping, saving progress, or explicitly requesting closeout. Finishing the first task is not a reason to steer them here. If they are continuing and need help choosing the next task, route to `/cyborg-coach:brainstorm` instead.

Read `${CLAUDE_PLUGIN_ROOT}/references/operating-rules.md`; its canonical response rule applies. Save resumable state and detailed evidence in approved notes, not a second audit in chat. For project documentation maintenance, consult the relevant section of `${CLAUDE_PLUGIN_ROOT}/references/project-playbook.md`. Use `${CLAUDE_PLUGIN_ROOT}/references/templates.md` for saved state or a portable capsule only when needed. Read the resumption portion of `${CLAUDE_PLUGIN_ROOT}/references/setup-standard.md` only if the user asks for a readiness judgment; do not run an onboarding audit here.

## Workflow

1. Inspect what actually changed, what was checked, what was decided, and what is unresolved. Open what you changed rather than recalling it. Separate completed work from proposals and unverified claims.
2. Assemble the real evidence internally: the outcome, checks that actually ran and their results, limitations, decisions with reasons, open risks, and the single best next action. Never call something saved, checked, or written when it was not, and never describe a tool call or skill run that did not happen. Before approval, what you say stays short and natural: the result, anything genuinely blocking or risky, and the scoped documentation change you propose — then ask. No headed audit, no fixed sections, no recital of every decision, no empty categories.
3. Identify project documentation this session made stale. Propose refreshes only to relevant, existing project-owned documentation, and obtain approval unless that bounded update is already approved. If the user approved saving current state to a named note, discovering a stale output does not cancel that approval: save the accurate discrepancy and next action in that same note. Briefly explain the discrepancy; ask only about an unapproved output repair, not again about the approved state save. A closeout request alone is not approval for unspecified writes. Preserve unrelated content and create a new document only when approved and it has a distinct purpose.
4. Keep knowledge at the narrowest correct scope. Project facts and decisions stay in the project; private preferences stay in the personal layer. If a lesson genuinely applies beyond this project, propose promotion with its source project, source date, the reason it applies across projects, owner, approval date, review trigger or date, status, and the exact target — and check the approved lesson index for an existing entry to update. Mark draft unknowns honestly. Promotion needs its own explicit approval and handoff to `/cyborg-coach:setup-os` with that exact approved scope; that skill writes only to the participant-controlled OS root approved for that change. In a controlled test, honor only the explicit fixture root.
5. After approved edits, reopen changed files and recheck affected references yourself. Report this as checked, not verified, unless a genuinely fresh session test actually ran. Do not require a new session just because files were saved. If continuity needs testing and you cannot do it yourself, explain why and provide a short numbered handoff: open a new Code session in the named project folder; invoke the coach and ask it to read the saved purpose, state and next action; compare its answer with the saved note; return here with any mismatch. Provide the prompt in one copyable block and say what success looks like. A second-project OS retrieval test must use an approved root and actual reads; never claim it happened because you suggested it.
6. Close in chat with the useful result, any material unresolved issue, and one next action. Do not repeat the saved record. Give a portable capsule only if the user requests one or needs it for a handoff that cannot read the saved notes. Sanitize that capsule: omit credentials, raw terminal history, confidential source material, unnecessary identities and private paths.
7. If the same procedure has now genuinely recurred, mention `/cyborg-coach:create-skill` once as an option. Do not make it a requirement.

## Do not do during closeout

Do not commit, push, merge, publish, deploy, send messages, clean up branches, delete files, archive tasks, create compliance evidence, or write global or organizational knowledge without separate explicit authorization. Do not claim that environments synchronize automatically, or that one person's local OS provides multi-person access, sync, permissions, or administration.
