# Project drafting templates

Owner: setup-project and session-closeout. Purpose: optional shapes for useful project context, not a required file set. Checked: 2026-09-22. Consult when drafting an approved project instruction or resumption note. The method is in `${CLAUDE_PLUGIN_ROOT}/references/project-playbook.md`; readiness checks are in `${CLAUDE_PLUGIN_ROOT}/references/setup-standard.md`. Organizational templates belong to `${CLAUDE_PLUGIN_ROOT}/references/os-templates.md`, used with the OS framework by setup-os/audit-os.

Start with a substantive project `CLAUDE.md` or reuse an established equivalent. Split a supporting document out only when size or a distinct purpose warrants it; prefer one useful combined document over several thin ones. These are coach drafting aids, not learner forms. Fill them from known context and one relevant question at a time; remove headings that do not earn their place. Label unknowns honestly and never add secrets. Preview exact targets and material changes; preserve existing same-scope approval.

## Project instructions

```markdown
# Project instructions

## Purpose and scope
[The engagement or initiative; related tasks sharing context; explicit exclusions. Link an existing brief rather than duplicate it.]

## Working map
[Relevant source paths, their authority, and where current project state lives.]

## How to work
[Project-specific procedures, constraints, approvals, and useful output conventions.]

## Output and checks
[The first useful result and observable checks; distinguish this task from the broader project.]

## Decisions and next action
[Material current decisions and reasons; current state and one next action, or a link to where they live.]
```

Add a short shared-knowledge pointer only when an existing OS source is relevant and approved. Use its actual canonical path; do not assume it is named `INDEX.md`, copy its rules, create a global entrypoint, or insert private preferences. A standalone project does not need an OS.

## Optional project brief

Keep this as a section of the instruction file unless an independently useful brief merits its own file.

```markdown
# Project brief

## Purpose and people
[Who needs what and why; related workstreams.]

## Selected inputs
[Approved source material, source authority, and data boundaries.]

## Outcome and boundaries
[Broader project outcome, scope, and explicit non-goals.]

## First useful task
[Output, observable acceptance checks, and unresolved dependencies.]

## Current state and next action
[What exists, what remains, and the next bounded action.]
```

## Optional decision entry

Add to where decisions already live; a separate decisions file is not mandatory.

```markdown
## YYYY-MM-DD — Decision title

- Status: Proposed | Accepted | Superseded
- Context: [What required a decision]
- Decision and reason: [Choice and why]
- Consequences: [Trade-offs and follow-up]
```

## Optional resumption capsule

Use a portable capsule only when requested or needed for a handoff. Normal closeout chat states the result, a material issue if any, and the next action; durable state and detailed evidence belong in approved project notes. Do not print a template by default. Drop lines that add nothing, and do not automatically migrate to closeout because one task finished.

```markdown
# Session resumption

- Project: [Non-sensitive name and selected scope]
- Outcome: [Completed result or current state]
- Evidence: [Checks actually run and results]
- Limitations: [What remains unchecked]
- Decisions: [Material choice and reason]
- Next action: [One bounded step]
- Updated context: [Approved project files]
- Date and evidence source: [Tool observation or participant report]
- Package, if relevant: [Observed loaded version; do not infer from a guide]
```
