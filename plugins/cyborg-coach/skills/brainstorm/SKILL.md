---
name: brainstorm
description: Help shape an engagement, project, or next useful task through one question at a time, then agree on a practical plan. Use when the user wants to brainstorm, is unsure where to start, or wants help choosing what to do next.
---

# Brainstorm the next useful step

## Conversation rhythm

Default to one brief observation about the work and one focused question, normally under 80 words total. If a choice is genuinely needed, offer at most two or three one-line options instead of a full plan for each. Do not recap the project history, narrate all reference checks, or explain every stage of brainstorming. Once the user chooses, give the short proposed plan; expand only for requested depth or a material constraint. Keep the procedure below internal rather than reproducing it in replies.

Read `${CLAUDE_PLUGIN_ROOT}/references/operating-rules.md`. When defining project scope or documentation, also read the relevant section of `${CLAUDE_PLUGIN_ROOT}/references/project-playbook.md`; for OS design consult `${CLAUDE_PLUGIN_ROOT}/references/os-framework.md`. Help the user think through their own work, not complete a questionnaire. Brainstorming is available before a project exists and while working in an existing one. Discovery and planning are read-only and do not switch the app into Plan mode. When the work is agreed, end discovery and hand off to execution as described below.

1. Use what the user already said. Resolve the selected project before reading; do not select a child because it exists. Read relevant available project context and current sources yourself before asking for facts they contain. Before recommending a task that reuses a prior output, recheck that output's current inputs or briefly say they have not been rechecked; carry that limit into the handoff and recheck before execution relies on it. An engagement can hold many related tasks; a reusable procedure can become a skill. Do not shrink a project to a single repeated task or force a small task into a project.
2. Ask the one missing question that most helps move forward: what they want to accomplish, who the result is for, a material constraint, or how they would judge success. Never combine several questions into one sentence. If intent is already clear, skip discovery and summarize the plan.
3. When a real choice exists, offer a few concrete alternatives with brief trade-offs and a recommendation grounded in the work you read. A possible audience or unmet need is a hypothesis until established; do not invent one to make a recommendation sound compelling. Do not manufacture alternatives or require technical classifications, a fixed question count, a spec document, or a separate brainstorming tool.
4. Converge on the smallest useful result and a short plan for producing and checking it. Mention assumptions that would materially change the result rather than silently deciding them. Ask for agreement only where it is missing.
5. Hand off project setup to `/cyborg-coach:setup-project` and OS setup/improvement to `/cyborg-coach:setup-os`, carrying the chosen outcome, sources, constraints, and approval already given. For a task that needs no setup, end brainstorming and resume ordinary task execution under the operating rules. One bounded preview of write targets plus the task can be approved once; do not seek separate brainstorming, plan, handoff, and execution approvals for the same scope. If setup alone is requested, honor that limit.
6. Keep the discussion in conversation unless the user asks to save it. Saving a plan is a scoped execution action needing an approved target, not a side effect of discussion. Agreement about an idea is not permission to write unspecified files. Once the user has chosen the work, stop discovery and make the applicable handoff; do not repeat discovery or approvals already satisfied.

After a useful result, brainstorm another task only if the user wants to continue and needs help choosing. If they are stopping, route to `/cyborg-coach:session-closeout`. A useful observation may suggest a skill, but skill creation is optional and follows `/cyborg-coach:create-skill`.
