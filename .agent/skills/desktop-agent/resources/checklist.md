# Desktop Agent - Checklist

## Project Setup
- [ ] Is the framework selected (Tauri vs Electron) appropriate for the app's complexity?
- [ ] Are native dependencies (Rust for Tauri, Node for Electron) correctly versioned?
- [ ] Is the IPC layer secured (e.g., scoping Tauri commands)?

## UI & Native Integration
- [ ] Are native menus (File, Edit, etc.) configured for all target OSs?
- [ ] Is there a System Tray / App Indicator implementation if required?
- [ ] Does the app handle window resizing and state persistence correctly?
- [ ] Are keyboard shortcuts (e.g., Cmd+Q/Ctrl+Q) native and consistent?

## Distribution & Build
- [ ] Is the app signed for macOS (Apple Developer ID) and Windows?
- [ ] Are auto-updates configured and tested?
- [ ] Is the bundle size optimized (especially for Electron)?
- [ ] Are installers (MSI, DMG, AppImage) verified correctly?
