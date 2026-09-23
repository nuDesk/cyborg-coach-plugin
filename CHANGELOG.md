# Release notes

## 0.5.3 — platform-neutral preview

- Uses Preview branding and adds Windows folder, keyboard and explicit-Start guidance.
- Replaces the Mac-only shell script with fixed startup context emitted by the host shell, with no extra runtime requirement. Namespaced skills resolve packaged references before coaching.
- Keeps Windows end-to-end testing pending; local shell tests do not establish Windows support. Existing behavioral limitations remain.

## 0.5.2 — public marketplace

- Public installation through https://github.com/nuDesk/cyborg-coach-plugin.git, with no GitHub account or invitation.
- Simplified four-step guide and public-source update checks.
- Preserves the ten skills, four learning lanes, real and fictional OS paths, and core organizational decisions and lessons from 0.5.1.
- No added connectors, tracking, background services or changes to participant files.

This release changes distribution and installation guidance. Prior supervised Mac behavior checks remain bounded: some completion claims and rule interpretations required correction. Review outputs. Windows automatic bootstrap is unsupported and participant-created plugin loading remains unestablished.
