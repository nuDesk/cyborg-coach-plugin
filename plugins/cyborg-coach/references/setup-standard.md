# Shared setup standard

Owner: Cyborg Coach project readiness. Purpose: one evidence standard for project setup and check-setup. Checked: 2026-09-22. Consult applicable checks when establishing a project, diagnosing its readiness, or checking documentation changed at closeout. `${CLAUDE_PLUGIN_ROOT}/references/project-playbook.md` owns project design; `${CLAUDE_PLUGIN_ROOT}/references/os-framework.md` owns organizational assessment.

Project setup uses the applicable checks internally whenever it establishes setup; do not turn them into a questionnaire or a prerequisite lesson. Run the full formal assessment only when requested through `/cyborg-coach:check-setup` or a readiness question. Closeout uses the documentation and resumption checks relevant to its changes. Evaluate the setup needed for the stated use case, not an imagined future platform. This file is the only copy of the checks; other references route here.

<!-- SHARED-SETUP-STANDARD:START -->

## Evidence states

- **Pass:** Direct evidence supports the requirement for the intended task.
- **Gap:** The requirement is relevant and missing, empty, contradictory, stale, or untested.
- **Not applicable:** The requirement does not apply to the agreed task; state why.
- **Blocked:** The requirement is relevant but cannot be checked without missing access, user action, or a dependency.

Record whether evidence was tool-observed, reported by the user, inferred, or not checked. Never promote reported or inferred state to observed state. A file existing, or a user saying "done," proves only that narrow fact. These labels belong in the assessment record; in conversation say the same thing in plain language.

## Scope of the assessment

Determine the scope internally before evaluating; do not add a routine scope preamble to chat:

- **Standalone project:** evaluate the checks relevant to this project and its intended task. IN-1 is `Not applicable` when no shared OS integration is claimed.
- **OS-linked project:** evaluate the project and only its approved shared-context integration under IN-1. A global instruction-file pointer is optional, not a requirement.
- **Organizational assessment:** route to `/cyborg-coach:audit-os` and its framework. Do not turn this project check into an OS audit or require one before a standalone task.

A one-off task that claims no durable project setup does not need project-documentation checks. Inspect only its actual prerequisites. Determine the selected project before reading state; do not choose a child of a parent workspace by discovery alone.

## Checks

Equivalent combined documents satisfy these checks. Never fail a setup for lacking a particular filename or for having fewer files than a template suggests.

| ID | Requirement | Passing evidence |
|---|---|---|
| IN-1 | The project's claimed shared-context integration works within its approved scope. | Its chosen pointer or retrieval method resolves to the approved current organizational context; the relevant content was read and used for the intended task. Project-only facts and private preferences are not copied into shared knowledge. Test a fresh session only when fresh-session loading is claimed. A global `CLAUDE.md` edit is not required. |
| PR-1 | Project instructions are present and correctly scoped. | A root project `CLAUDE.md` or an equivalent loaded instruction file names the engagement or initiative, its shared context across related tasks, scope, key paths, output expectations, and checks without copying the whole OS. |
| PR-2 | Purpose and success are explicit and durable. | Project documentation — one file or several — distinguishes the broader project purpose from its first task, and states allowed inputs, expected outcomes, scope and exclusions, and relevant observable checks. |
| PR-3 | Material decisions are recorded where a future session can find them. | Existing material decisions and their reasons have a durable home. No decision record is required when no material decision exists. Additional documentation exists only where the work needs it and contains accurate substance. |
| PR-4 | Relevant instructions and documents do not materially conflict. | Task-relevant available instructions were compared; consequential conflicts are absent or explicitly bounded. Do not inspect unrelated global or child content to satisfy a checklist. Unknown applicable instructions remain marked unchecked. |
| RF-1 | Referenced local resources resolve and match their description. | Links or imports needed for the task were opened or otherwise resolved; required sections are nonempty and current enough for the task. |
| TL-1 | Required local tools are available. | Harmless read-only checks show each required tool is callable on this surface. Optional tools are not treated as requirements. |
| CN-1 | Required connectors are available at the correct surface and identity. | Each necessary connector passed a harmless read-only check in Claude Code. Authentication remains user-controlled. |
| CT-1 | Permissions, cost, and external-action boundaries are understood. | The proposed read/write scope, approval boundaries and any incremental cost are explicit; relevant application controls and a way to review/stop the work are known or marked unchecked. Do not quiz the user or infer comprehension from silence. No permission bypass or silent billing is required. |
| RC-1 | Recovery matches the risk. | There is a practical recovery method for the intended mutations — reviewed diffs, copies, version control, or app-native history — and its limits are stated. Rewind alone is not described as a complete backup. |
| RS-1 | The claimed project continuity is supported. | Durable notes identify purpose, current state, decisions when relevant, unresolved items and next action. This supports a structural continuity check only; any claim that a fresh session actually loaded and applied those notes requires a fresh-session test. |
| SK-1 | A claimed reusable skill actually runs. | Applies only when the participant claims a working skill: the session shows the skill invoked and its output inspected on a real input. A listing, a manifest, or a plausible reply is not evidence. |

## Overall result

`Ready` requires every applicable item for the stated use case to pass. Otherwise report `Not ready — <short reason>`. These are the two formal outcomes, and their scope must be clear. A request not to inspect an actual prerequisite does not establish that it works. Mark a claimed but untested fresh-session capability `Gap`, or `Blocked` when the test cannot run. State that limitation without preventing an otherwise safe first task. A structural continuity check and a fresh-session test are different claims; do not quietly substitute one for the other. Fixtures never fall back to real personal configuration.

That a packaged skill was actually invoked supports its availability in this session. It does not establish project continuity, shared-context loading or correctness of the output.

Report actual work separately as `Task status: <completed | in progress | blocked | not started> — <evidence or reason>`. A useful task may be completed while a continuity claim remains untested. Task completion never proves project readiness or organizational readiness.

Evaluate every applicable check privately. Only when the user explicitly asks for the full detailed report, or approves a written record, use a compact table:

| ID | State | Evidence | Smallest fix or limitation |
|---|---|---|---|

Then state the formal result, the task status, what was not tested, and the next best action.

In ordinary coaching, do not paste this table, name check IDs, or give a readiness verdict at all. Brevity never hides a gap, a blocked check, or a risk. This standard checks operating readiness; it does not certify security, compliance, production safety, or output correctness.

<!-- SHARED-SETUP-STANDARD:END -->
