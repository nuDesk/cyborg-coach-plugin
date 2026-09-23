---
name: check-for-updates
description: Check Cyborg Coach's loaded, observable installed, and latest accessible release versions without changing anything. Use when the user asks whether their plugin is current or needs an update.
---

# Check for Cyborg Coach updates

## Default answer

Keep the result under 80 words unless the user requests detail. Use up to three short lines: **Running**, **Installed** (only if separately knowable), and **Latest published**. Unknown is a valid value; add only the one limitation that matters. Then stop. A version-check request is not an update-instructions request: do not append a settings path, menu walkthrough, restart advice, or a generic troubleshooting paragraph. Offer update steps only after the user asks for them, using observed/current sources.

Read `${CLAUDE_PLUGIN_ROOT}/references/operating-rules.md` and `${CLAUDE_PLUGIN_ROOT}/references/install-and-update.md`. This is a read-only status check, separate from `/cyborg-coach:check-setup`. Do not refresh a marketplace, pull or fetch into a checkout, install, update, change authentication, modify settings, or write a report file. Never silently obtain new access.

1. Read `.claude-plugin/plugin.json` at the resolved `${CLAUDE_PLUGIN_ROOT}`. Report that version as this session's package version only when the runtime actually invoked this skill from that root. If the root or manifest is unavailable, say the loaded version is unknown. A pasted prompt or missing menu entry does not establish what is loaded.
2. If session tools expose installation metadata for this exact plugin, read it and report the installed version separately. Do not scan unrelated plugin caches or assume the loaded package is the newest installed copy. If installation metadata is unavailable, that fact stays unknown.
3. Resolve the intended distribution from this package's installation reference and readable manifest or marketplace metadata. Read authoritative published version metadata for that distribution using existing access, if supported. A candidate checkout or local cached marketplace does not prove the latest published release. Never use unrelated search results or guess a release from a date. For the public distribution, inaccessible metadata means the latest version is unknown, not that this plugin is current or missing.
4. Compare only readable comparable versions from the same distribution. Distinguish current, newer release available, candidate/ahead of published, and unknown. An installed/loaded mismatch is its own observation; do not assert its cause without evidence. Do not treat a different version alone as proof that a skill loaded incorrectly.
5. Respond in a few short sentences with only the version facts that matter, whether a live remote check succeeded, and any needed next action. Unknown latest is a complete answer; do not append an unsolicited update walkthrough. If the user asks how to update or an observed newer release needs action, use current official documentation and the user's actual Desktop surface. Do not guess button labels, restart requirements, or promise an update was applied. If the exact route is not observed, offer to inspect it or ask for one sanitized screenshot.

For current mechanics use the official [plugin maintenance documentation](https://code.claude.com/docs/en/discover-plugins) and [Claude Code Desktop documentation](https://code.claude.com/docs/en/desktop). A documentation description is not evidence of the user's installed state. A later request to update is a separate action, subject to the native application controls; this skill itself never changes anything.
