# Publishing and Sharing Your Extension Pack

This guide explains how to publish your extension pack to OpenVSX and share it across your profiles, SSH instances, and other IDEs.

## Prerequisites

Before publishing, you need to:

1. **Update `package.json`**:
   - Change `"publisher": "your-publisher-name"` to your actual publisher name (e.g., `"scotterbrain"`)
   - Optionally fill in `repository`, `bugs`, and `homepage` URLs if you have them

2. **Install Node.js** (if not already installed):
   - Required for the publishing tools (`ovsx` and `vsce`)

## Method 1: Publish to OpenVSX Registry (Recommended)

Publishing to OpenVSX makes your extension pack available to any IDE that uses OpenVSX (like Cursor IDE, VSCodium, etc.).

### Step 1: Register on OpenVSX

1. Visit [https://open-vsx.org](https://open-vsx.org)
2. Sign in with your GitHub account
3. After signing in, go to your profile settings
4. Generate a **Personal Access Token (PAT)** for publishing
   - Keep this token secure - you'll need it to publish

### Step 2: Install OpenVSX CLI

```bash
npm install -g ovsx
```

### Step 3: Create Your Publisher Namespace

Replace `<publisher>` with your publisher name (must match what's in `package.json`):

```bash
npx ovsx create-namespace <publisher> --pat <your-access-token>
```

For example:
```bash
npx ovsx create-namespace scotterbrain --pat ghp_xxxxxxxxxxxx
```

### Step 4: Publish Your Extension

Navigate to your extension pack directory and publish:

```bash
cd scotterbrain-markdown-pack
npx ovsx publish --pat <your-access-token>
```

**Note**: After the first publish, you can update your extension by:
1. Incrementing the `version` in `package.json` (e.g., `1.0.0` → `1.0.1`)
2. Running `npx ovsx publish --pat <your-access-token>` again

### Step 5: Install from OpenVSX

Once published, anyone (including you on other machines) can install it:

1. Open Cursor IDE or any IDE using OpenVSX
2. Open Extensions view (`Ctrl+Shift+X` or `Cmd+Shift+X`)
3. Search for "ScotterBrain Markdown Pack"
4. Click Install

Or via command line:
```bash
code --install-extension <publisher>.<extension-name>
```

## Method 2: Share as VSIX File (Private Distribution)

If you prefer not to publish publicly, you can package and share the extension pack as a `.vsix` file.

### Step 1: Install VS Code Extension Manager

```bash
npm install -g @vscode/vsce
```

### Step 2: Package Your Extension

Navigate to your extension pack directory:

```bash
cd scotterbrain-markdown-pack
vsce package
```

This creates a file like: `scotterbrain-markdown-pack-1.0.0.vsix`

### Step 3: Share the VSIX File

You can now share this `.vsix` file via:
- Email
- Cloud storage (Dropbox, Google Drive, OneDrive)
- Private file server
- Git repository (as a release asset)
- SSH transfer to remote machines

### Step 4: Install from VSIX

**In Cursor IDE / VS Code:**
1. Open Extensions view (`Ctrl+Shift+X` or `Cmd+Shift+X`)
2. Click the `...` menu (top right)
3. Select "Install from VSIX..."
4. Navigate to and select your `.vsix` file

**Via Command Line:**
```bash
code --install-extension path/to/scotterbrain-markdown-pack-1.0.0.vsix
```

**On SSH/Remote Machines:**
1. Transfer the `.vsix` file to the remote machine
2. Use the command line method above, or
3. Use VS Code Remote SSH extension and install via the UI

## Method 3: Manual Installation Script

You can also create a script that installs all the individual extensions directly. This is useful if you want to avoid packaging altogether.

### Create `install.sh` (Linux/Mac):

```bash
#!/bin/bash
# Install all extensions in the pack individually

code --install-extension DavidAnson.vscode-markdownlint
code --install-extension robole.markdown-snippets
code --install-extension jhuix.markdown-preview-showdown
code --install-extension zaaack.markdown-editor
code --install-extension PKief.markdown-checkbox
code --install-extension matt-rudge.auto-open-preview-panel
```

### Create `install.bat` (Windows):

```batch
@echo off
REM Install all extensions in the pack individually

code --install-extension DavidAnson.vscode-markdownlint
code --install-extension robole.markdown-snippets
code --install-extension jhuix.markdown-preview-showdown
code --install-extension zaaack.markdown-editor
code --install-extension PKief.markdown-checkbox
code --install-extension matt-rudge.auto-open-preview-panel
```

## Updating Your Extension

### For OpenVSX:
1. Update the `version` in `package.json` (follow semantic versioning)
2. Make any other changes needed
3. Run: `npx ovsx publish --pat <your-access-token>`

### For VSIX:
1. Update the `version` in `package.json`
2. Run: `vsce package`
3. Share the new `.vsix` file

## Troubleshooting

### "Namespace already exists" error
- The namespace is already created, you can skip the `create-namespace` step

### "Extension already exists" error
- You need to increment the version number in `package.json` before republishing

### Extensions not installing from OpenVSX
- Verify the extension IDs in `extensionPack` are correct
- Check that those extensions exist on OpenVSX (some may only be on VS Code Marketplace)

### VSIX file too large
- Extension packs bundle metadata only, not the actual extensions
- The individual extensions will be downloaded when the pack is installed

## Best Practices

1. **Version Management**: Use semantic versioning (MAJOR.MINOR.PATCH)
2. **Testing**: Test your extension pack installation before publishing
3. **Documentation**: Keep `info.md` updated with any changes
4. **Publisher Name**: Use a consistent publisher name across all your extensions
5. **Repository**: Link to a GitHub repository if you have one for better discoverability

## Additional Resources

- [OpenVSX Publishing Guide](https://github.com/eclipse/openvsx/wiki/Publishing-Extensions)
- [VS Code Extension Packaging](https://code.visualstudio.com/api/working-with-extensions/publishing-extension)
- [Semantic Versioning](https://semver.org/)

