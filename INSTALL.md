# Install Cyborg Coach

Version 0.5.2 · supervised Mac preview · public marketplace

Claude Desktop and working Claude Code access are prerequisites. No GitHub account or invitation is required. You add our public marketplace URL inside Claude; the plugin is not automatically listed in the default directory. Labels may vary by app version.

## 1. Open a practice session

In Claude, open **Code → New → Local**. Choose **Open folder…**, then create and open an empty **Cyborg Coach Practice** folder in Documents. Check the selected folder before trusting the workspace.

## 2. Add the public marketplace

Beside the message box, choose **+ → Plugins → Browse plugins**. In the plugin browser choose **Add → Add marketplace**, paste this URL, choose its **Use** suggestion if shown, and click **Sync**:

```text
https://github.com/nuDesk/cyborg-coach-plugin.git
```

You should see the Cyborg Coach card. A marketplace is simply the address Claude fetches the plugin from.

## 3. Install the plugin

Click **Add** or **Install** beside Cyborg Coach. Wait for the installed confirmation, then close Settings. The top-right Add control is for adding marketplaces, not installing the card.

## 4. Start the coach

In the practice session, type `/cyborg-coach:start`, choose the matching dropdown entry, and click **Send**. The namespaced skill should run. A generic helpful reply alone is not proof of loading. For real work, open a fresh Code → Local session in that work's folder and start the coach there.

## Need help

Check the exact public URL and network connection; allow Sync to complete. If the command is missing, try a fresh local session. If your organization blocks custom marketplaces, contact its administrator. Do not paste tokens into chat or change global Git settings. Follow the actual controls on your version of Claude; [official Desktop guidance](https://code.claude.com/docs/en/desktop#install-plugins) may use different labels.

## Updates and removal

Use native plugin management to refresh the marketplace, update the plugin and open a fresh session. Automatic updates may be off for third-party marketplaces. `check-for-updates` is read-only: it never installs, refreshes or updates anything. It distinguishes the loaded version, installed version and public release; unavailable metadata means unknown.

Existing private-install users: add the new public URL for the same `nudesk-cyborg-coach` marketplace and confirm replacement if Claude asks. Refresh and update it, then check in a fresh session. Do not delete your work or hand-edit caches.

Disable or uninstall through native plugin management. This removes the ten skills and their bootstrap when the change takes effect; everything you created stays yours. Uninstalling does not erase your OS or project files. Updates replace package files only. Never store participant work in the plugin cache.

## Privacy and security

Installing Cyborg Coach gives its publisher no access to your conversations or files; the plugin sends no session telemetry. Feedback is voluntary. Repository issues are public: keep private material out of them.

Claude can access files and tools allowed by your session permissions, which may extend beyond the selected folder. Relevant context is processed by Anthropic; this is not an offline system. Review your permissions and plan's [data-use policies](https://code.claude.com/docs/en/data-usage). Never paste credentials.

The macOS startup hook supplies fixed packaged coaching guidance and its package path. It ignores event input and does not read participant files, call the network, write memory or run a background monitor. Manual Start remains available. Saying stop coaching suppresses optional suggestions in that conversation; disabling the plugin stops future loading.

*Tested scope: prior bounded Mac checks covered real-work intake, fictional OS foundation, approved lesson application and shared-skill reuse. Some completion claims and rule interpretations needed reviewer correction; review the coach's work. Public distribution installation is checked separately. Loading a participant-created plugin is not established. Windows is not supported.*

Continue with the [companion guide](https://nudesk.github.io/cyborg-coach-guide/).
