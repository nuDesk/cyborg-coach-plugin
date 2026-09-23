# Four lanes — go where the work is

This is routing guidance, not a curriculum. Read the relevant entry only. Follow `${CLAUDE_PLUGIN_ROOT}/references/operating-rules.md`: useful work, brief explanations, one question when needed, and short bullets for user actions. Inspect available evidence yourself. Handle detours without restarting onboarding.

## Choosing where to start

Exactly four independent lanes: **Get Started on Claude Code Desktop**, **Claude Code Help Desk**, **Create a Project-Based Agent**, **Build Your OS**. Route from intent; explicit bare Start uses its defined welcome. Do not inspect participant folders to choose a lane. A task needs no project; an OS request needs no prior project, skill, or plugin.

A task is one piece of work. A skill captures a reusable procedure. A project is an engagement, initiative, or ongoing area whose different tasks benefit from shared context and accumulated decisions. Repetition alone is not a reason for a project. An organizational OS holds approved knowledge and procedures across projects. Teach the distinction only when it helps the next decision.

## Get Started on Claude Code Desktop

Help with one useful task in the chosen folder. If requested, give a quick 101: describe a result, Claude works with relevant files and tools, then review the result together. Inspect the folder and use the user's goal; offer a realistic example only if they have none. Do not default to dummy files, project scaffolding, a controls lecture, or an installation interview. Preview the bounded change and carry approval through doing and checking it.

## Claude Code Help Desk

Answer the immediate question using `${CLAUDE_PLUGIN_ROOT}/references/faq.md` and current official documentation for product mechanics. Then return to the work. Use `/cyborg-coach:check-setup` for a requested read-only setup diagnosis, and `/cyborg-coach:check-for-updates` for a separate read-only version check. Neither silently repairs, refreshes, or updates.

## Create a Project-Based Agent

Ask about the engagement or initiative and the context its different tasks should share, not simply a recurring task. Inspect existing material before asking for facts it already contains. Use `/cyborg-coach:setup-project` to reuse or establish scoped project instructions and enough durable context to continue later. No fixed file quota. Honor setup-only requests.

### Kick off your first project

Brainstorm the first useful task if needed with `/cyborg-coach:brainstorm`; it can also help shape an unclear engagement before setup. Ask one question at a time, explore alternatives only when helpful, and agree on a short plan and useful result. If intent is clear, skip discovery. Setup and a clear first task can be proposed together. Do not require a second kickoff prompt or repeat approval at skill handoffs. Actual application Plan mode is distinct from discussing a plan.

Do the approved work, open the result, check available evidence, and ask only for judgment or UI actions you cannot supply. A first task demonstrates the broader project; it does not define its entire scope. Keep results local unless a remote action was separately approved.

### While you work

When the user continues, help shape the next task or follow their stated next action; do not default to closeout. Ground occasional suggestions in observed work. A stable repeated procedure may merit `/cyborg-coach:create-skill`; a draft is not tested until actually invoked on a different input. Saving a shared lesson requires approval. No background listening or mandatory insight boxes.

### When you stop

Use `/cyborg-coach:session-closeout` when stopping or requested. Save only approved affected context, state what was checked, and give the next action. On an explicit return request for the selected project, read saved notes and current relevant sources, not just an old completion claim. A fresh-session check is optional unless its specific continuity claim is being tested; it is not a prerequisite to useful work. See `${CLAUDE_PLUGIN_ROOT}/references/modules/06-closeout-and-reuse.md` for a simple handoff.

## Build Your OS

Route creation or maintenance through `/cyborg-coach:setup-os`; route assessment through `/cyborg-coach:audit-os`. Both use `${CLAUDE_PLUGIN_ROOT}/references/os-framework.md`. Inside this lane, offer “Help me build my organization's OS.” or “Help me build a fictional OS so I can learn.” when intent is unknown; honor explicit intent without another menu. Undocumented real work can start from conversation. If there is no real scenario, proactively offer a clearly fictional example.

Build a useful approved foundation: concise entrypoint, substantive organizational context, procedures, relevant references, and core decisions and organizational lessons, reusing existing equivalents. A blueprint explains design rather than replacing context. Empty initial decision/lesson records are honest when nothing has been agreed or learned; never invent entries. Preserve source, ownership, applicability, approval and review traceability. Apply approved lessons through the canonical guidance used by future projects.

Keep OS and projects separate; open work sessions in the individual project. Foundation plus one saved procedure output is a useful stopping point. If wanted, continue through an edge case, correction, optional skill and fresh-project reuse. Test actual reference reads and effects; a pointer is not proof of skill discovery or invocation. Keep wiki/unified memory separate and optional. A parent folder does not automatically create memory, team sharing, synchronization or access controls. GitHub and plugin packaging are not prerequisites.

## Optional extensions

Connect one relevant tool when its context helps the task; use the supported Desktop route and a bounded read-only check after user-controlled authentication. Consider GitHub after useful work when history or collaboration matters. Creating your own plugin with `/cyborg-coach:create-plugin` is optional packaging, not the next required lesson. None adds a fifth lane. See `${CLAUDE_PLUGIN_ROOT}/references/faq.md` and `${CLAUDE_PLUGIN_ROOT}/references/skill-and-plugin-creation.md`.

## Older numbered requests

Route older requests without restoring a course: Session 1 → Get Started on Claude Code Desktop; Session 2 → quick 101 in Get Started on Claude Code Desktop; Session 3 → project setup; Session 4 → first project task; Session 5 → skill creation; Session 6 → closeout when stopping; Session 7 → Build Your OS. Retired names are explained in `${CLAUDE_PLUGIN_ROOT}/references/install-and-update.md`; they are not alias skills.

## Further reading

For exploratory next steps, use the [companion guide's four lanes](https://nudesk.github.io/cyborg-coach-guide/#lanes) and [Claude blog](https://claude.com/blog). During private development, the public guide may describe the released version rather than the candidate. For specific mechanics use the relevant official page, checked when lookup is available. Do not append links to every answer.
