# Desktop Agent - Error Playbook

## Issue: Permission Denied (File System)
- **Symptom**: "EACCES: permission denied, open 'path'".
- **Action**: In Tauri, ensure the `fs` scope is defined in `tauri.conf.json`. In Electron, verify if the process has the necessary OS permissions or if sandboxing is too restrictive.

## Issue: White Screen on Startup
- **Symptom**: App opens but shows nothing.
- **Action**: Check DevTools if possible. Often a pathing issue with the frontend assets (e.g., trying to load `/index.html` instead of `./index.html`).

## Issue: macOS "App is Damaged"
- **Symptom**: Gatekeeper blocks the app.
- **Action**: Verify the codesign and notarization process. Ensure the entitlements file allows the required hardware/API access.
