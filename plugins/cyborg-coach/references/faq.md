# Cyborg Coach help desk

Owner: Cyborg Coach help desk. Purpose: concise situation-specific answers and routing. Checked: 2026-09-22. `${CLAUDE_PLUGIN_ROOT}/references/glossary.md` owns shared definitions; the working-in-Claude-Code module, project playbook and OS framework supply deeper methods. Consult only the relevant entry before answering.

Answer only the question being asked; this is a lookup reference, not a lesson to recite. Adapt the answer to the current task and return to it afterwards. More detail is available on request.

## What can Claude Code help me do?

It can work with files and tools to help you build software, analyze information, and carry out repeatable work. Describe the result you want in ordinary language; the coach helps you do the work and check the result. A simple task needs no project setup. You direct it — you do not need to start by learning commands. [Claude Code overview](https://code.claude.com/docs/en/overview).

## I have the app and plugin. How do I begin?

Use a local Code session and the folder where you want to work. Invoke `/cyborg-coach:start` through the skill picker for the four-lane welcome, or describe a clear coaching request directly. We check only what your task needs; you do not need to redo installation. See the [Cyborg Coach guide](https://nudesk.github.io/cyborg-coach-guide/#lanes). Automatic bootstrap activation is not assumed unless confirmed for your release and surface.

## Do I need to know how to code?

You can start by describing a practical outcome. Claude can help with the implementation, but you still decide what a good result looks like and review its work. For a first attempt, choose a small part of a real task rather than an entire business system.

## What does setting up a project involve?

Choose an engagement or initiative whose different tasks benefit from shared context—such as a client engagement with research, meeting preparation and follow-ups. Save the minimum useful instructions and source material, then choose a first task. The project holds context and outputs; it is not the model itself, and it need not be a repeating task.

For the actual method, consult `${CLAUDE_PLUGIN_ROOT}/references/project-playbook.md`. One useful instruction file can be enough; do not impose a document set, GitHub repository or OS setup.

## Why are you proposing a CLAUDE.md file?

It gives Claude persistent guidance for this project: the job, relevant material and how to check the work. Where the file sits affects which sessions can load it; linked documents are not proof that their contents were read. A project-level file belongs with the project; your global file is for guidance needed across projects. Neither is a security control. [Instruction guidance](https://code.claude.com/docs/en/memory).

## Will you ask before changing my files?

Cyborg Coach is instructed to show the target files and proposed changes and get your approval for that work. Whether Claude Code also shows an application permission prompt depends on its settings; those are separate controls. Do not infer the active setting from whether a prompt appeared. [Desktop permissions](https://code.claude.com/docs/en/desktop#choose-a-permission-mode).

## What is the difference between instructions and permissions?

Instructions describe how you want the work done. Permissions determine what the application allows Claude to do. Your approval in conversation guides the work; it does not itself change those technical controls. We can look at the relevant setting if it affects what you are trying to do. [Permissions](https://code.claude.com/docs/en/permissions).

## Can Claude see files outside this folder, and is everything local?

Access depends on the session's tools, permissions and connections; choosing a folder is not a universal access boundary. Relevant content is sent to Anthropic for processing, and connected services may receive data when used. The coach should use only what the task needs, and must not claim to have inspected access it has not checked. Use inputs you are authorized to share. [Data usage](https://code.claude.com/docs/en/data-usage) and [permissions](https://code.claude.com/docs/en/permissions).

## How do I pick up where I stopped?

When stopping, ask for closeout to save the result, unresolved work and next action within approved scope. Next time, open that project or name it and ask to resume. If you open only a parent practice folder, the coach should ask which project you mean—not select a child for you. A fresh-session test can check continuity when needed; it is not a mandatory interruption after each task.

## When would I make a skill or an organizational OS?

A skill saves a repeatable procedure; test it on another input before trusting its reuse. An organizational OS holds context, procedures and approved lessons that can serve multiple projects, separate from project-specific facts and private preferences. Either can be requested directly. Neither is a requirement for finishing your first task, and a local OS foundation does not automatically provide team sharing. [Skills documentation](https://code.claude.com/docs/en/skills).

## Further reading and maintenance

For choosing what to try next, use the [Cyborg Coach guide's four lanes](https://nudesk.github.io/cyborg-coach-guide/#lanes) and [Claude blog](https://claude.com/blog). Use official Desktop documentation for a specific technical question, not as the default next-step guide. The [Steering Claude Code article](https://claude.com/blog/steering-claude-code-skills-hooks-rules-subagents-and-more) explains instructions and reusable skills. When lookup is available, check current documentation before giving version-sensitive interface or setup instructions. Otherwise use the maintained reference and say freshness was not checked; do not invent labels or replace an answer with a list of links.

Technical references checked September 22, 2026. Product behavior can change. Coach promises describe intended behavior, not an enforced security guarantee.

## Task, skill, project—what is the difference?

A task is one piece of work. A skill is a reusable way to do it. A project keeps context across different related tasks. For example, meeting preparation can be a skill within a broader client-engagement project. You do not need to build a project for every task.

## Can you help me think through what to do?

Yes. Ask to brainstorm. The coach uses what it already knows and asks one useful question at a time, then helps turn the idea into a short plan. If you already know what to do, it skips that discovery. Discussing a plan does not change the application's Plan mode.

## Does Start keep listening?

Start activates coaching in this conversation and shows the four lanes when no specific request accompanies it. The packaged startup hook adds fixed coaching guidance on supported session events; it does not observe other sessions or read participant files. Coaching should stay quiet for unrelated work. Automatic activation must be checked for the actual release and surface; Windows end-to-end testing is pending. Invoke Start when activation has not been confirmed.

## Can I stop coaching?

Say “stop coaching” to stop optional suggestions in this conversation; that does not remove the packaged hook. Disabling the plugin is the app-level control for turning off its skills and bootstrap. Consult `${CLAUDE_PLUGIN_ROOT}/references/install-and-update.md` for supported controls and any fresh-session requirements. Do not claim the plugin is disabled because a conversation request was honored.

## What information does the startup hook use?

It reads one fixed packaged coaching text file and supplies that context to Claude. It ignores event input; it does not inspect your files, conversation transcript or other sessions, persist data, or make network calls. The resulting guidance—and any resolved package path it includes—becomes model context processed by Anthropic. Other session tools and connectors have their own access and data controls. This is not a promise that the entire Claude session stays local.

## Can I connect email, calendar or other tools?

Yes, when a supported connection helps your task. Pick one service first. The coach checks the supported Code route, explains the requested access, and asks you to complete sign-in yourself. Then it checks one small, non-sensitive read before relying on that connection. A Chat connection alone is not proof the active Code session can use it. [Desktop connectors](https://code.claude.com/docs/en/desktop#connect-external-tools).

## Do I need GitHub?

No. Start with your local project. GitHub becomes useful when you want version history or collaboration. A project folder is the workspace; a repository tracks selected files and revisions. Remote saving and synchronization need deliberate setup, and a repository is not a complete backup. Before sharing, check sensitive files and agree on the destination and access. Publishing is a separate approval.

## Does an OS require a plugin?

No. Build Your OS starts with approved shared knowledge and procedures, an index, and a way for projects to find them. Maintain that knowledge as it changes. Creating your own plugin is an optional way to package reusable procedures later; it is not required for your OS or a first project.

## How do we build or improve our OS?

Use `/cyborg-coach:setup-os` with either “Help me build my organization's OS.” or “Help me build a fictional OS so I can learn.” Real work can start from a conversation without existing documents. A fictional exercise uses clearly labeled example facts and gives you something useful to try before adapting it to your organization. Both paths review the design, build an approved foundation and work through one procedure with a saved output.

`/cyborg-coach:audit-os` assesses an existing OS against the same framework without changing it. Approved improvements return to setup-os with the agreed scope, not a new intake. Read `${CLAUDE_PLUGIN_ROOT}/references/os-framework.md` for the method; do not improvise an organizational audit from the project checklist.

## What belongs in the OS, and what stays in projects?

The starter OS has a concise `CLAUDE.md` entrypoint, organizational `CONTEXT.md`, useful `PROCEDURES.md`, relevant `references/`, and core `DECISIONS.md` and `LESSONS.md` records. Existing equivalents are fine. Context explains the organization; procedures explain the work; references supply guidance used while doing it. The blueprint explains why the design was chosen. Decision and lesson records can honestly start with no entries; the coach must not invent learned experience.

Projects stay in separate folders and hold their own inputs, work and outputs. Open the individual project for work and point it to relevant canonical OS material. An approved organizational lesson should inform future projects through that shared guidance, with clear applicability and evidence. A separate wiki or wider memory system can coexist with the OS; it is not required or automatically integrated.

## How do I know the OS is useful?

Begin with one saved output made using its context, procedure and relevant reference. That is a useful stopping point. If you want to go further, try an edge case, agree on a correction and record what was learned. Then check that a new project reads the shared guidance and applies the correction. Skill creation is optional; a skill needs supported loading and actual invocation on another input before its reuse is established. These checks reduce drift; they do not guarantee automatic sharing or perfect consistency.

## Can you check for Cyborg Coach updates?

Use `/cyborg-coach:check-for-updates`. It reports what this session loaded, what is installed if visible, and the latest release it can access. Those can differ or be unknown. It does not update anything. Setup diagnosis is separate: `/cyborg-coach:check-setup`.

## Why do some skill names differ from my installation?

An older installation can expose older names or lack newer skills. A missing command alone does not establish which version loaded. Use check-for-updates and `${CLAUDE_PLUGIN_ROOT}/references/install-and-update.md` to compare the actual session, installed package and accessible release; do not assume this reference describes the user's current installation.

## Which coach skill fits my request?

Use this routing internally, not as a ten-item menu in an ordinary reply:

| Request | Skill |
| --- | --- |
| Choose a lane or begin coaching | `start` |
| Organize related work around a client or initiative | `setup-project` |
| Think through an unclear next task | `brainstorm` |
| Diagnose project/environment readiness | `check-setup` |
| Compare Cyborg Coach versions | `check-for-updates` |
| Save context when stopping | `session-closeout` |
| Capture a reusable procedure | `create-skill` |
| Optionally package reusable skills | `create-plugin` |
| Build or implement approved OS improvements | `setup-os` |
| Assess an OS and recommend improvements | `audit-os` |

Plain-language requests work too. Invoking one skill does not grant permission for a broader task. For general product help, Start routes to this FAQ or the relevant fundamentals reference without requiring another skill.
