---
name: create-plugin
description: Create a participant-owned local Claude Code plugin scaffold and package skills for reuse. Use when the user wants to bundle skills, reuse them across projects, or eventually distribute them.
---

# Create a plugin

Skills are procedures. A plugin packages and distributes them. Build a working plugin when the user has something tested worth reusing beyond a single project — not as a milestone. An explicit request may start a local scaffold earlier; keep it labeled untested and unloaded until a packaged skill actually runs and its output is inspected.

This is an optional extension alongside GitHub-based sharing, not a fifth lane and not a prerequisite for an organizational OS. Installing Cyborg Coach and authoring a plugin are different activities. An OS can grow through approved shared knowledge and procedures without packaging anything.

Read `${CLAUDE_PLUGIN_ROOT}/references/operating-rules.md` for the response rule, boundaries, and evidence language, and `${CLAUDE_PLUGIN_ROOT}/references/skill-and-plugin-creation.md` for packaging structure. Read `${CLAUDE_PLUGIN_ROOT}/references/install-and-update.md` only if the user asks how installation, updating, or removal works.

## Workflow

1. Confirm there is something to package. Each candidate skill should already have been invoked and inspected on a real input. If a skill is untested, explain that limitation. You may draft an explicitly requested scaffold, but test the skill before describing the package as working.
2. Ask one missing question about intended use: their own reuse across projects or sharing with other people. Clarify which skills belong only if the request and inspected files do not establish it. That answer changes how much documentation and versioning is worth doing now.
3. Inspect authoritative existing sources: read the skill files being packaged and any existing plugin scaffold in the chosen location. Reuse what exists rather than regenerating it.
4. Preview the local scaffold and its exact paths before writing — a participant-owned folder outside this plugin's directory containing a plugin manifest with name, version, and description, plus a `skills/` folder holding a directory per skill with its `SKILL.md`, and a short README describing what the plugin is for. Keep organizational context, approved lessons, project facts, and private preferences out of the package: those live at the OS root and in projects, because a plugin cache is package content, not durable participant storage.
5. Get approval for the exact write targets unless that same bounded preview is already approved, then write only what was previewed. Copy the approved skills; preserve the project originals. Moving or removing originals is not part of this workflow.
6. Check current official local-development guidance before choosing a load route. Perform harmless native manifest validation with available tools, then guide the supported local load for their surface, explaining any developer-only step. Do not invent a Desktop 'load folder' button. Open a fresh session and deliberately invoke one packaged skill; inspect its actual output. The plugin is loaded only when the session shows the namespaced skill actually running; a folder that looks right, a manifest that parses, or a helpful reply is not evidence. Report exactly what you observed, and report a failed or unavailable load as blocked rather than assumed.
7. If loading fails, inspect the manifest and folder names, make one bounded correction, and retest. After two materially similar failures, stop and check current official documentation.
8. Stop at local validation unless the user separately asks about distribution. Publishing to a marketplace, sharing with colleagues, and any client or team use are separate, explicitly approved steps — never implied by a working local load. Do not claim the plugin is published, tested by anyone else, or supported on another machine.

## Boundaries

- Do not add hooks, MCP servers, telemetry, background jobs, output-style changes, updaters, or checkpoint mechanisms to a participant plugin.
- Do not create or modify a marketplace entry, repository, or remote without a separate explicit request and approval of the exact targets.
- Do not write to this plugin's own directory, and do not migrate or delete participant files as part of packaging.
- Surface any recurring cost of at least USD 5 per month before recommending hosting or a paid dependency, with its floor, usage component, trade-off, and no-added-cost alternative.
- A plugin distributes instructions. It does not grant permissions and cannot override platform, administrator, or user policy.

For current packaging details, use the official [plugins documentation](https://code.claude.com/docs/en/plugins) and the [Claude blog](https://claude.com/blog), and check them when lookup is available rather than relying on memory.
