# Installing, updating, and removing this plugin

Use this reference when the participant asks how the plugin got here, how to update it, or how to remove it. Keep it consistent with the distribution's `INSTALL.md`, and never invent interface labels.

Owner: check-for-updates and Start. Purpose: supported distribution, activation, privacy, and removal guidance. Product sources checked: 2026-09-23. This source describes the public 0.5.3 distribution; its presence is not proof of publication, installation, or Desktop hook activation. Read live metadata when status matters.

## What is true in this session

- This plugin comes from the public marketplace `nudesk-cyborg-coach`, plugin `cyborg-coach`, hosted in the public repository `https://github.com/nuDesk/cyborg-coach-plugin.git`.
- A namespaced skill actually invoked here, shown by the client as a skill run, is tool-observed evidence that the plugin loaded in this session. Nothing else proves it: not a plausible reply, not skill instructions the participant pasted, not a file listing, not a menu entry, not an organizer's assurance.
- For a loaded-version claim, read `${CLAUDE_PLUGIN_ROOT}/.claude-plugin/plugin.json` and report the version you observed. Do this when installation or version is in question, not as a routine check.
- No GitHub account or invitation is required. Users add this public marketplace URL inside Claude; this is not an automatic listing in the default plugin directory.

## Installing and updating

- Primary route, using the labels observed on a Mac with the earlier release and the new public URL: beside the message box **+** (Add) → **Plugins** → **Browse plugins**, then top-right **Add** → **Add marketplace**, which presents a URL field accepting `https://github.com/nuDesk/cyborg-coach-plugin.git`, then **Sync**. The **Cyborg Coach** card then appears; click **Add** beside the card — not the top-right **Add** — and wait for the card to read **Added** with the confirmation that Cyborg Coach is installed and ready to use. Official documentation: https://code.claude.com/docs/en/desktop#install-plugins. Labels differ between versions, so defer to what the participant reports seeing and never invent a control. These labels were observed with an earlier release; check the actual interface and current package when establishing delivery.
- Secondary route, only if this Code chat supports native plugin commands: `/plugin marketplace add https://github.com/nuDesk/cyborg-coach-plugin.git`, then `/plugin install cyborg-coach@nudesk-cyborg-coach`. These are Claude Code chat commands, not shell commands, and Desktop versions differ.
- Use the explicit public HTTPS URL. It can be fetched anonymously; no account or credential setup is a prerequisite.
- If fetching fails, check the exact public URL, network and organization marketplace policy. Do not prescribe credentials for this public source or bypass administrator restrictions. Never request a token or change global Git settings.
- Use `/cyborg-coach:check-for-updates` to inspect release status without changing anything. It is a checker, not a custom updater. Marketplace refresh, installation, authentication changes and reload are separate actions; never perform them merely to answer a version question.
- For an approved update, use the application's native plugin-management route. Current official Desktop guidance documents **+ → Plugins → Manage plugins**, but does not establish an exact update button sequence for every Desktop version. Inspect the actual controls or ask for a redacted screenshot before prescribing the next click. Do not invent an Update button or present CLI-only controls as Desktop instructions.
- Native marketplace maintenance and auto-update behavior are documented at https://code.claude.com/docs/en/discover-plugins#configure-auto-updates. Third-party auto-updates may be disabled. Activation varies by version and surface; follow the actual native completion message, then check an observed skill invocation and its manifest. Do not assume an update took effect in the active session or demand a restart without a reason.
- Product references checked September 22, 2026: https://code.claude.com/docs/en/desktop#install-plugins and https://code.claude.com/docs/en/discover-plugins. The historical observed installation labels above differ from today's documentation; follow the actual Desktop.

## Disabling, removing, and what survives

- Enable, disable, and uninstall through native plugin management. Current documented route: **+ → Plugins → Manage plugins**; inspect actual controls before prescribing further clicks. Never delete an entire Claude configuration to remove a plugin. Follow the native completion/reload message and use a fresh session for activation checks; do not invent a restart requirement or claim disabling worked from a chat reply alone.
- Disabling makes the ten packaged skills and sole static coaching bootstrap unavailable when that setting takes effect. Uninstalling removes the installed package. Participant-owned OS/project files and participant-created skills/plugins stay. Updates must not migrate or delete them; any migration needs a reviewed diff and explicit approval.
- Treat the plugin directory as read-only package content. Never store participant state there.
- The public package, including instructions and references, is readable and copyable. Disabling or removing it does not erase participant-created work.

## Privacy

The publisher receives no chats, files, or person-level usage data from this plugin. Feedback is voluntary and explicit; never post anything automatically. Repository issues are public, so keep sensitive material out of them. Native git installs do not increment release-asset download counters, and a download count would show interest rather than successful setup.

The plugin includes one packaged SessionStart command hook for startup, resume, clear, and compact events. The host shell emits fixed coaching context embedded in the configuration; no separate script runtime or platform probe is required. It ignores event input and does not read files, inspect transcripts, write memory, change folders, call the network, or run a background coach. Before coaching, a namespaced skill must resolve and read relevant packaged guidance. Claude itself can still use files and tools permitted in the session. Model context is processed under Anthropic's applicable account terms and controls; local hook execution is not a claim that all context stays on the computer.

Automatic loading is not an automatic greeting or project selection. Coaching applies to an explicit coach request, help learning/using Claude Code, or an existing coaching workflow in this conversation; unrelated work should remain unaffected. “Stop coaching” suppresses optional suggestions in this conversation, not the hook itself. Native plugin disablement is the supported broader control. No hook-only settings interface or persistent on/off tracker is added.

Manual `/cyborg-coach:start` remains the explicit entrypoint. Runtime evidence must establish automatic activation; valid configuration or plausible coaching text is not enough. Windows end-to-end testing is pending, including host-shell execution and skill loading. Do not weaken controls or install another runtime merely to make this reminder work. Official mechanism reference: https://code.claude.com/docs/en/hooks.

## Windows PCs

Claude Code Desktop is available on Windows. Use the same public marketplace URL and explicitly choose `/cyborg-coach:start` after installing. Create or select the practice folder with File Explorer or the system folder picker; use Ctrl+C / Ctrl+V instead of Command+C / Command+V. Interface labels can vary by app version. See [official Desktop guidance](https://code.claude.com/docs/en/desktop).

Our end-to-end checks were performed on macOS; Windows testing is pending. Do not assume automatic startup has run because a reply sounds coached. Start explicitly and check the displayed package version. Shared OS skill links also need platform-specific checks; do not change Windows security settings merely to follow a Mac symlink example.

## Read-only version check

Read `${CLAUDE_PLUGIN_ROOT}/.claude-plugin/plugin.json` at the resolved active package root. A manifest read identifies that package version; an observed namespaced skill invocation establishes loading. Keep three facts separate:

- **Loaded here:** active root and observed version, or unknown if the session cannot establish it.
- **Installed locally:** readable native installation metadata for this distribution, if available. Do not scan unrelated caches or infer installation solely from the loaded candidate folder.
- **Available release:** published metadata for the intended `nuDesk/cyborg-coach-plugin` distribution, read through existing authorized access. Use its release channel's manifest/catalog and reference, not a local candidate, a cached listing or guessed recency. Do not refresh the marketplace to obtain this fact.

If access is unavailable, report “I couldn't check the latest release,” not “up to date.” Record the source/reference and check time. Current means the observed loaded version matches the intended published release; it does not prove every feature works. If an installed version differs from loaded, explain the mismatch without inventing its cause. If a local candidate is ahead of the release, label it a review build, not a newer public release. Missing commands, version numbers and timestamps alone do not establish load failure causes. Summarize briefly and offer one supported next action; no upgrade occurs within this check.

## Candidate and renamed skills

Version 0.5.3 has exactly ten skills: `start`, `setup-project`, `check-setup`, `session-closeout`, `brainstorm`, `create-skill`, `create-plugin`, `check-for-updates`, `setup-os`, and `audit-os`. setup-os owns organizational creation and approved improvements; audit-os owns read-only assessment. Version 0.4.0 was the preceding private preview release. Read live metadata instead of treating either sentence as proof of the current published or loaded version.

| Previous name | Current name |
| --- | --- |
| starter-project | setup-project |
| starter-setup-check | check-setup |
| starter-closeout | session-closeout |

These historical renames are not aliases. An old literal slash command may not resolve after updating; explain its replacement when asked. A prompt requesting new behavior does not install a new plugin version. Keep guide and plugin release status separate until coordinated publication is established; never update participant files as a side effect.

## Moving from the earlier private distribution

Add the public HTTPS marketplace URL using native marketplace management. It uses the same marketplace name, `nudesk-cyborg-coach`; confirm replacement if the host requests it. Refresh that marketplace, update the plugin, and open a fresh session. Check the loaded manifest and actual Start invocation. Do not delete participant work, hand-edit caches, change global settings, or keep two enabled copies as a workaround.
