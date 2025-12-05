# ScotterBrain Markdown Pack

Essential tools for working with Markdown files in Visual Studio Code, Cursor IDE, and other VS Code-compatible editors.

## About

This extension pack is maintained by the [Scotterbrain-Dev](https://github.com/Scotterbrain-Dev) GitHub Organization and is available on OpenVSX under the [ScotterBrain](https://open-vsx.org/namespace/ScotterBrain) namespace.

## Quick Install

### From OpenVSX (Cursor IDE, VSCodium, etc.)

```bash
code --install-extension Scotterbrain.scotterbrain-markdown-pack
```

Or search for "ScotterBrain Markdown Pack" in your IDE's extension marketplace.

### From VSIX File

1. Download the `.vsix` file
2. Open Extensions view (`Ctrl+Shift+X`)
3. Click `...` → "Install from VSIX..."
4. Select the downloaded file

## Included Extensions

- **markdownlint** - Markdown linting and style checking
- **Markdown Snippets** - Extended Markdown snippets
- **Markdown Preview Showdown** - Advanced markdown preview with PlantUML, Mermaid, LaTeX support
- **Markdown Editor** - Full-featured WYSIWYG editor
- **Markdown Checkbox** - Create and toggle checkboxes in Markdown
- **Auto Open Preview Panel** - Automatically opens preview panel when opening Markdown files

## Prerequisites

⚠️ **Java (JDK or JRE) is required** for `markdown-preview-showdown` extension to enable local PlantUML rendering.

Run the appropriate installation script:

- Windows: `win_install.bat`
- Linux: `linux_install.sh`

## Usage

After installing this extension pack:

1. Open any Markdown file (`.md`)
2. Use `Ctrl+Shift+V` (or `Cmd+Shift+V` on Mac) to open preview
3. Use `Ctrl+Shift+C` (or `Cmd+Shift+C` on Mac) to create checkboxes
4. Linting happens automatically as you type
5. Use snippets by typing prefixes like `table`, `task`, etc.
6. Right-click markdown files to open with WYSIWYG editor

## Documentation

See `info.md` for detailed information about each included extension.

## Publishing

See `PUBLISHING.md` for instructions on how to publish this extension pack to OpenVSX or share it as a VSIX file.

