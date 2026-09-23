# Skills and plugins

Use this reference when helping a participant build their own skill or package one. Boundaries, evidence language, and the response rule stay in `${CLAUDE_PLUGIN_ROOT}/references/operating-rules.md`.

## The distinction that matters

A **project** keeps context across different related tasks in an engagement or initiative. A **skill** is a procedure: a written set of steps Claude can follow again, stored as a `SKILL.md`. A **plugin** is packaging and distribution: a folder with a manifest that bundles skills so they can be installed and reused across projects or by other people. Making a skill is useful on its own; packaging belongs in optional extensions when distribution beyond one project is useful. Neither GitHub nor plugin creation is required to Build Your OS.

Neither grants permission. Both are instructions. What Claude is allowed to do is controlled by the application, not by anything a skill or plugin says.

## What makes a skill worth writing

- It has actually recurred, or the participant is confident it will.
- The steps are stable even when the inputs change.
- The variable parts can be named as inputs rather than guessed.
- There is an observable way to tell a good output from a bad one.

If those are not true yet, do not proactively manufacture a skill. If explicitly asked to design one, clarify its purpose, label the draft untested, and arrange a real test.

An explicit request may also start a plugin scaffold before its skills are tested. Build only the requested local structure, label the scaffold and skills untested and unloaded, and do not imply they work until a packaged skill actually invokes in a fresh session and its output is inspected.

## Shape the work without a second approval loop

If the purpose is unclear, use `/cyborg-coach:brainstorm` for one useful question at a time and an agreed short plan. Reuse context already established. Carry the approved bounded preview through creation and testing; do not re-ask merely because one skill hands off to another. Ask again for a changed scope, a separate global target, or a remote action. Do not require Superpowers or a formal spec.

## Shape of a good SKILL.md

- **Frontmatter:** a short lowercase hyphenated `name`, and a `description` that states both what the skill does and when to use it. The description is what makes the skill discoverable, so write it for selection, not for style.
- **Purpose:** one or two lines on the result the skill produces.
- **Inputs:** what it needs before it can run, and what to do when something is missing — ask, not assume.
- **Steps:** ordered, concrete, and written for the work rather than for a reader. Include the inspection step: read the real source before producing anything.
- **Output checks:** what a correct result looks like, so the participant can judge it.
- **Stop conditions:** the points where it should stop and ask — material business rules, irreversible actions, anything outside the approved scope.

Keep credentials, confidential material, and private personal data out of the file. Keep business rules that must be confirmed as questions rather than defaults.

## Where a skill lives

A project skill belongs at `.claude/skills/<name>/SKILL.md` inside the participant's project. A personal-scope skill is possible but is a separate decision with its own approved target. Never place a participant's skill inside this plugin's directory or in global setup without a specific request and approval. [Official skills guide](https://code.claude.com/docs/en/skills).

## Testing a skill honestly

A skill counts as tested only when it was deliberately invoked and the result was inspected — on a second, different input from the one it was written from. Check how it behaves when an input is missing. A skill appearing in a menu, a manifest that parses, or a plausible reply that imitates the procedure is not evidence that it ran. Say what you observed, and report an unavailable test as untested rather than assumed.

## Packaging structure

A minimal participant plugin is a folder they own, outside this plugin's cache, containing:

- a plugin manifest at `.claude-plugin/plugin.json` with `name`, `version`, and `description`;
- `skills/<name>/SKILL.md` for each packaged skill;
- a short `README.md` saying what the plugin is for and what each skill does.

Organizational context, approved lessons, project facts, and private preferences do not belong in the package. A plugin cache is package content that updates can replace; durable participant knowledge lives at the approved OS root and in projects.

Do not add hooks, MCP servers, telemetry, background jobs, output-style changes, updaters, or checkpoint mechanisms to a participant plugin. Keep versioning simple and manual.

## Validation and distribution

Check current official guidance for the actual surface. Validate the manifest with available native tools, then use a supported local-development load route, open a fresh session, invoke a packaged skill and inspect its output. Never invent a Desktop local-folder loader; `--plugin-dir` is a development route, not client installation. Explain any necessary developer-only step rather than handing a novice a terminal command without context. The plugin is loaded only when the session shows the namespaced skill actually running.

Publishing to a marketplace, sharing with colleagues, or using it with a client is separate work requiring its own approval. A working local load says nothing about distribution, another machine, or anyone else's experience — never claim it does.

For current packaging and marketplace mechanics, use the official [plugins documentation](https://code.claude.com/docs/en/plugins) and the [Claude blog](https://claude.com/blog), checking them when lookup is available.
