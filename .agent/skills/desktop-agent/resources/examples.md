# Desktop Agent - Examples

## Example 1: Tauri Command (Rust)
```rust
#[tauri::command]
fn greet(name: &str) -> String {
    format!("Hello, {}! You've been greeted from Rust!", name)
}
```

## Example 2: Secure IPC (Tauri)
```javascript
// frontend/main.js
import { invoke } from '@tauri-apps/api/tauri'

async function callGreeting() {
  const response = await invoke('greet', { name: 'User' })
  console.log(response)
}
```

## Example 3: Electron Main Process
```javascript
const { app, BrowserWindow, Menu } = require('electron')

function createWindow () {
  const win = new BrowserWindow({ width: 800, height: 600 })
  win.loadFile('index.html')
}

app.whenReady().then(createWindow)
```
