# Cyborg Coach glossary

Owner: Cyborg Coach reference library. Purpose: short definitions shared by the plugin and companion guide. Checked: 2026-09-22. Consult a relevant entry when a term becomes useful; do not recite this as onboarding.

The block below is the canonical learner copy. Publish it with the same anchors in the guide and include it in the whole-guide Markdown. Keep additional coaching instructions outside the block.

<!-- GLOSSARY-CONTENT:START -->

<a id="glossary-skills"></a>
## What is a skill?

A skill is a saved procedure Claude can use again—for example, preparing a meeting brief. It contains instructions and can include supporting references. A skill can be requested by name or selected when relevant; it is not a guarantee of a correct result. [Skills documentation](https://code.claude.com/docs/en/skills).

<a id="glossary-commands"></a>
## What is a command?

A slash command is a shortcut you invoke in Claude Code. For example, `/cyborg-coach:session-closeout` calls the coach's closeout skill. Asking in ordinary language is another way to request help. Not every slash command is a skill: some are built-in app actions. Claude's older custom-command format now works alongside skills. [Skills and commands](https://code.claude.com/docs/en/skills).

<a id="glossary-hooks"></a>
## What is a hook?

A hook runs at a defined Claude Code event. This coach's packaged startup hook supplies a small, fixed piece of coaching guidance; it does not watch your activity in the background. It does not read participant files, change them or send data itself. Automatic startup has been observed on macOS Desktop but is not guaranteed; use Start when activation has not been confirmed. [Hook documentation](https://code.claude.com/docs/en/hooks).

<a id="glossary-claude-md"></a>
## What is CLAUDE.md?

It is a text file of instructions Claude Code can load: what the work is, where relevant material lives and how to approach it. Keep it useful and concise. It guides behavior; it does not enforce permissions or guarantee that Claude follows every rule. [Instruction documentation](https://code.claude.com/docs/en/memory).

<a id="glossary-scopes"></a>
## Which instruction file belongs where?

- **User-level:** `~/.claude/CLAUDE.md` holds guidance relevant across your projects.
- **Project-level:** `CLAUDE.md` or `.claude/CLAUDE.md` holds this project's shared guidance.
- **Nested:** a subfolder can have guidance for work in that area.
- **Local personal:** `CLAUDE.local.md` can hold unshared project preferences; exclude it from version control if used.
- **Managed:** an organization may provide centrally managed guidance.

Several instruction files can load together; keep them consistent rather than assuming one automatically cancels another. You do not need all these files. Start with the project's actual needs. [Scopes and loading](https://code.claude.com/docs/en/memory).

<a id="glossary-faq"></a>
## Quick questions

**Do I need to know how to code?** No. Start with a useful result you can describe and judge. The coach helps with the steps; you still review the work.

**Task, project or skill?** A task is one piece of work. A project holds shared context across related work. A skill saves a reusable procedure, such as meeting preparation within a client project.

**Do I need GitHub, connectors or my own plugin?** Not for a first local task. Add one when it solves a real need. Your own plugin is optional packaging, not the organizational OS itself.

**Does Start monitor everything?** No. It starts coaching in this conversation. The packaged hook supplies static guidance on supported session events; neither is a separate observer of other sessions. Say “stop coaching” to stop optional suggestions here; disabling the plugin is a separate app action.

**Can nuDesk see my session?** Cyborg Coach does not provide nuDesk with session access or telemetry. Relevant conversation and tool context is processed by Anthropic; any services you connect have their own controls. Only use information you are authorized to share. [Claude Code data usage](https://code.claude.com/docs/en/data-usage).

**Where can I go next?** Use the [four-lane guide](https://nudesk.github.io/cyborg-coach-guide/#lanes) or ask the coach. For examples and further reading, visit the [Claude blog](https://claude.com/blog).

<!-- GLOSSARY-CONTENT:END -->

For situation-specific answers consult `${CLAUDE_PLUGIN_ROOT}/references/faq.md`. Product instructions change: look up current official guidance when the question depends on a version or interface. Hook activation statements must be updated only against the recorded release tests, not inferred from this definition.
