# Additive setup and recovery

Owner: setup-project for project changes; setup-os for organizational changes. Purpose: additive edits and recovery, not a second methodology. Checked: 2026-09-22. Consult when proposing setup, repair, or rollback. Behavior and evidence rules stay in `${CLAUDE_PLUGIN_ROOT}/references/operating-rules.md`.

## Select the scope

Resolve the selected project or organizational scope from the opened workspace and explicit request. A parent folder does not select one of its children. Do not search child notes to infer intent or silently change the working directory. Once scope is clear, inspect relevant existing documents. Propose a participant-owned OS root outside the plugin cache only for requested OS work. Ask one focused question if the location is genuinely ambiguous; do not require a terminal or a configuration interview.

When a participant or controlled test supplies explicit project/OS roots or a global entrypoint, use those paths exactly. Never replace them with values derived from a home directory, account metadata, shell variable, or platform default, and never fall back outside the supplied roots. Refuse participant output inside the plugin cache. Global instructions are an optional separately scoped integration; OS setup alone does not authorize inspecting or editing them.

State resolved or proposed paths before mutation. Relevant read-only inspection within the selected scope and existing access does not need an approval loop; writing requires approval of exact targets and material changes. Carry a still-valid approval across handoffs instead of asking again for the same change.

## Organizational changes

Route creation and approved improvements to setup-os, using `${CLAUDE_PLUGIN_ROOT}/references/os-framework.md` and `${CLAUDE_PLUGIN_ROOT}/references/os-templates.md`. Route organizational assessment to audit-os; its default is read-only. An audit request does not authorize a report file or repairs. Carry selected sources, findings, and exact approved repair scope into setup-os without a second intake.

Do not prescribe an OS index, global pointer, personal-preferences file, or organization-wide file set here. The approved blueprint determines useful structure; reuse existing equivalents. A project may point to approved shared canonical knowledge without copying it. A global pointer is optional and requires separate approval of its exact additive diff. It supplies context, not permissions, automatic synchronization, or a security boundary.

Reopen changed files and check new references. When claiming fresh-session retrieval, actually run a fresh-session test; a successful write proves only that the file was written. Stop on conflicts with managed or higher-priority instructions. Keep credentials, private preferences, and unrelated project details out of organizational knowledge.

## Project changes

Use setup-project and `${CLAUDE_PLUGIN_ROOT}/references/project-playbook.md`. Inspect the selected project and confirm existing documents hold real content. Reuse substantive equivalents. Show exact project files and changes together with a known first task if appropriate, then obtain approval for that bounded batch. Carry existing approval across skill handoffs; setup-only approval does not cover unproposed task output.

A project normally needs a substantive root `CLAUDE.md` or an established equivalent plus enough durable context to resume the work: engagement or initiative, context shared across tasks, inputs, project outcome, first-task checks, and material decisions. There is no required file set or empty-template quota. Link approved existing OS knowledge when relevant; project setup does not create or redesign the OS.

## Recovery

- Before editing, preserve exact pre-change content or rely on already-configured version history confirmed to work.
- Record which additions this setup owns. Rollback removes only unchanged owned additions; never overwrite later user edits with an old whole-file copy.
- For a partial write, stop, inspect current content, and propose targeted reconciliation. Do not rerun blindly.
- Plugin updates must not migrate or delete participant-owned files automatically. A migration needs a reviewed diff and explicit approval.
- Disabling the plugin makes its ten skills and sole static SessionStart bootstrap unavailable when the native setting takes effect. Uninstalling removes the installed package. Follow the native completion message and check a fresh session when testing activation changes. Neither action removes participant-owned OS/project files or participant-created skills/plugins.

For meaningful data or external systems, use supported backup, export, or history. Rewind is useful for some local changes, not a comprehensive backup or version-control substitute.

## Optional receipt

If approved, save a receipt at the exact participant-owned project or OS path, never in the plugin cache. It is not an extra setup prerequisite. Include the observed package version, date, approved targets, pre-existing-state summary, checks, evidence source, and rollback ownership. Exclude tokens, raw environment dumps, confidential content, and terminal histories.
