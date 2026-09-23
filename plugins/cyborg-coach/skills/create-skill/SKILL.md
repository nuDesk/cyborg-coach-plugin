---
name: create-skill
description: Create and test a participant-owned Claude Code skill from a repeatable procedure the user has performed or wants to design. Use when the user wants to capture a workflow, make their own skill, or improve an existing one.
---

# Create a skill

A skill is a written procedure Claude can follow again. Suggest one when observed work is worth repeating. An explicit request can also start a new skill draft; don't require the user to complete a course or perform a workflow twice first. Walk them through making something useful; do not lecture about what skills are unless they ask.

Read `${CLAUDE_PLUGIN_ROOT}/references/operating-rules.md` for the response rule, boundaries, and evidence language, and `${CLAUDE_PLUGIN_ROOT}/references/skill-and-plugin-creation.md` for the shape of a good skill and the difference between skills and plugins. Read `${CLAUDE_PLUGIN_ROOT}/references/templates.md` only if a supporting project document is also being drafted.

## Workflow

1. Establish the real procedure. Use work you have actually seen this session, or ask one missing question about the intended result. If the user needs help shaping it, invoke `/cyborg-coach:brainstorm`; carry forward known context instead of restarting discovery. A new procedure may be drafted as untested; don't invent prior runs.
2. Inspect authoritative existing sources first: look in the project's `.claude/skills/` for an equivalent skill and in the project docs for a procedure already written down. Improve an existing one rather than adding a near-duplicate.
3. Settle the essentials, one missing decision at a time and in plain language: a short lowercase hyphenated name; a description that says both what it does and when to use it, since that is what makes Claude select it; the inputs it needs; the steps in order; what a good output looks like; and when it should stop and ask instead of guessing.
4. Be explicit about anything that must never be assumed — business rules, thresholds, naming conventions. Write those as "ask the user" steps rather than baked-in guesses.
5. Preview the exact target, normally `.claude/skills/<name>/SKILL.md` inside the project, naming what it will contain and the material changes in a short paragraph. Get approval unless this same bounded write was already previewed and approved; a handoff does not reset approval. Show full contents only when requested or needed to decide. Keep participant skills out of this plugin's directory and out of global setup unless the user separately asks for a personal-scope skill and approves that target.
6. Write only what was previewed, then reopen the file and show them what exists.
7. Test it for real. To invoke it, have the user type `/<skill-name>` in the message box and choose it if the dropdown offers it; if it is not offered, start a new session in the same folder and retry once, and if it is still not listed, report that plainly instead of guessing. A menu listing never proves the skill loaded. Inspect the observed invocation and actual source reads; Desktop support must be checked in the participant’s selected project. Then run it deliberately on a second, different, non-sensitive input, and inspect the output together — including how it handles a missing input. Only after an observed invocation and an inspected result may you call it tested. A plausible reply that imitates the procedure is not a test, and neither is the skill appearing in a menu.
8. Make one bounded revision if the test exposes a gap, then rerun the test. Record the skill and its purpose in the project's own documentation if that helps future sessions, with approval.
9. Keep the tested skill in its useful context. Mention `/cyborg-coach:create-plugin` only when the user wants to package or distribute it, not as the automatic next step or an OS requirement. If they want to continue useful project work, help shape the next task instead.

## Shared OS skill handoff

When `setup-os` hands off an approved shared procedure, retain its context, write approval and canonical rules. Keep the canonical skill in the participant-owned OS, for example `organization-os/skills/<name>/SKILL.md`; keep each consuming project outside that OS. The skill reads the relevant current procedure, reference and approved organizational lesson rather than copying their business rules. Resolve source paths from the explicitly selected project root or a checked canonical path; do not assume the skill's current directory is the OS.

For the local Mac preview, Claude Code supports a project `.claude/skills/<name>` folder that is a symlink to the canonical skill directory. Preview both the canonical target and each project link, check existing targets/collisions, and create them only within the approved scope. For sibling `organization-os/` and `project-a/`, a link at `project-a/.claude/skills/<name>` targets `../../../organization-os/skills/<name>`. Resolve and check that target before use. Open the session in `project-a`, not the common parent. A symlink is local routing, not a permission sandbox, team distribution or automatic access grant; the participant must authorize the referenced OS scope. Never replace existing files/links silently or change global settings.

Test the native skill invocation in a fresh selected project, its actual canonical reference read, a second input and missing-input behavior. Then test another approved project link in a fresh session after an approved rule correction; inspect the changed output and absence of unrelated project content. A pointer in `CLAUDE.md` alone does not register a skill. If discovery fails after one fresh-session retry, retain document/procedure reuse and report skill reuse as untested; do not move projects into the OS or copy business rules as a workaround. Separate wiki/memory stays outside this setup.

## Boundaries

- Skills are instructions, not permissions. A skill cannot grant tool access or override platform, administrator, or user policy; say so if the user expects otherwise.
- Do not add hooks, MCP servers, output-style changes, telemetry, or background jobs as part of making a skill.
- Do not put credentials, confidential content, or private personal data into a skill file.
- Creating a skill file may require an application approval prompt. If the app denies the write, stop and report the denial; never work around it with another harness, another tool, or a direct host-file write. Project source code stays read-only unless the user asked for it to change.
- Do not claim the skill will be selected automatically in future sessions unless that behavior was actually observed; describe deliberate invocation as the reliable route.
- Surface any recurring cost of at least USD 5 per month before recommending a paid dependency, with its floor, usage component, trade-off, and no-added-cost alternative.

[Official skills guide](https://code.claude.com/docs/en/skills).
