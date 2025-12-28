<div align="center">
  <h2>📋 Copy Absolute Path</h2>
  <p>A macOS Finder service that copies the absolute path of selected files or folders to your clipboard.</p>
</div>

### What Does It Do?

Adds a **Copy Absolute Path** option to Finder's right-click Services menu. Select any file or folder, trigger the service, and the full path is copied to your clipboard.

- Works with files and folders
- Supports multiple selection (paths separated by newlines)
- Default keyboard shortcut: **⌘⌃C** (Cmd+Ctrl+C)
- Helpful for adding workspace folders in Claude Code.

### Installation

```bash
curl -fsSL https://raw.githubusercontent.com/arikchakma/CopyAbsolutePath/main/install.sh | bash
```

Or clone and install manually:

```bash
git clone https://github.com/arikchakma/CopyAbsolutePath.git
cd CopyAbsolutePath && ./install.sh
```

> [!NOTE]
> You may need to restart Finder (`killall Finder`) or log out/in for the service to appear.

### Usage

1. Select any file or folder in Finder
2. Right-click → Services → **Copy Absolute Path**
3. Or use **⌘⌃C** (Cmd+Ctrl+C)

### Keyboard Shortcut

The default shortcut is **⌘⌃C** (Cmd+Ctrl+C). To change it:

1. System Settings → Keyboard → Keyboard Shortcuts
2. Select "Services" in the sidebar
3. Find "Copy Absolute Path" under Files and Folders
4. Double-click the shortcut and press your preferred keys

### Uninstallation

```bash
curl -fsSL https://raw.githubusercontent.com/arikchakma/CopyAbsolutePath/main/uninstall.sh | bash
```

Or if you cloned the repo:

```bash
./uninstall.sh
```

### Troubleshooting

**Service doesn't appear in menu:**
- Restart Finder: `killall Finder`
- Or log out and back in

**Shortcut doesn't work:**
- Check System Settings → Keyboard → Keyboard Shortcuts → Services
- Ensure the service is enabled (checkbox is checked)

### Contributing

Feel free to submit pull requests, create issues, or spread the word.

### License

MIT © [Arik Chakma](https://x.com/imarikchakma)
