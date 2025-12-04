# ScotterBrain Markdown Pack Extension Pack

This extension pack includes essential tools for working with Markdown files in Visual Studio Code.

---

## DavidAnson.vscode-markdownlint

**Publisher**: David Anson

**Description**: Markdown linting and style checking for Visual Studio Code. Includes a library of rules to encourage standards and consistency for Markdown files. Powered by the markdownlint library for Node.js.

**Features**:

- Real-time linting as you type
- Over 50+ markdownlint rules (MD001-MD059)
- Automatic fixes for many rule violations
- Workspace-wide linting support
- Integration with markdownlint-cli2 for CI/CD
- Custom rules support
- Inline suppression comments
- Snippet support for suppression commands

**Important Settings**:

- `markdownlint.config`: Custom rule configuration (JSON object)
- `markdownlint.configFile`: Path to configuration file
- `markdownlint.focusMode`: Ignore issues on cursor line (boolean or number)
- `markdownlint.run`: When to run linting ("onType" or "onSave")
- `markdownlint.customRules`: Array of paths to custom rule files
- `markdownlint.lintWorkspaceGlobs`: Custom globs for workspace linting

**Usage**:

- Linting happens automatically as you edit Markdown files
- Warnings appear as green wavy underlines
- Press `Ctrl+Shift+M` (or `Cmd+Shift+M` on Mac) to view all warnings
- Use `Ctrl+.` (or `Cmd+.` on Mac) for quick fixes
- Format document with `Shift+Alt+F` (or `Shift+Option+F` on Mac) to auto-fix violations
- Run `markdownlint.lintWorkspace` command to lint all Markdown files in workspace
- Configure rules via `.markdownlint.json` or `.markdownlint.yaml` files

**Configuration**: Create a `.markdownlint.json` file in your project root to customize rules. Example:

```json
{
  "MD013": false,
  "MD007": { "indent": 4 },
  "no-hard-tabs": false
}
```

---

## robole.markdown-snippets

**Publisher**: Rob O'Leary

**Description**: Extended Markdown snippets for Visual Studio Code. Provides additional snippets beyond the built-in Markdown snippets.

**Features**:

- Table snippets (2x1, 2x2, 2x3, 3x3, 4x4, 5x5, etc.)
- Task list snippets (1-5 tasks)
- Tab-through cell editing for tables
- Tab-through task status editing

**Important Settings**:

- Snippets are active only in Markdown files
- Use `Editor: Snippet Suggestions` setting to control snippet display
- Can add keyboard shortcuts via `keybindings.json`

**Usage**:

- Type snippet prefix (e.g., `table`, `task`, `2x2table`) in a Markdown file
- Select from IntelliSense suggestions
- Use Command Palette (`Ctrl+Shift+P`) → "Insert Snippet" to browse all snippets
- Tab through placeholders to edit content

**Snippets Available**:

- `table` - Insert 2x3 table
- `2x1table`, `3x1table`, `4x1table`, `5x1table` - Single column tables
- `2x2table`, `3x2table`, `4x2table`, `5x2table` - Two column tables
- `2x3table`, `3x3table`, `4x3table` - Three column tables
- `5x5table` - Five column table
- `task`, `task2`, `task3`, `task4`, `task5` - Task lists with 1-5 items

---

## jhuix.markdown-preview-showdown

**Publisher**: jhuix

**Description**: A markdown preview extension for Visual Studio Code with showdowns that converts markdown content to preview HTML. Supports PlantUML, Mermaid, LaTeX math, AsciiMath, TOC, and export to HTML/PDF.

**⚠️ Prerequisites Required**:

- **Java** (JDK or JRE) - Required for local PlantUML rendering
- **GraphViz** (optional) - Required for PlantUML features that use GraphViz

**Features**:

- Multiple preview flavors (GitHub, Ghost, Vanilla, Original)
- PlantUML diagram support (local or remote rendering)
- Mermaid diagram support
- LaTeX math and AsciiMath support
- Automatic Table of Contents generation
- Export to HTML
- Export to PDF/PNG/JPEG (requires Puppeteer)
- Scroll synchronization
- Customizable themes for Mermaid, Vega, and PlantUML

**Important Settings**:

- `markdown-preview-showdown.autoPreview`: Automatic preview on open (default: false)
- `markdown-preview-showdown.flavor`: Preview flavor - "github", "ghost", "vanilla", "original" (default: "github")
- `markdown-preview-showdown.autoToc`: Auto-generate table of contents (default: true)
- `markdown-preview-showdown.fontSize`: Custom font size in px (default: "10")
- `markdown-preview-showdown.scrollSync`: Auto scroll sync (default: true)
- `markdown-preview-showdown.katex.mathDelimiters`: Custom math delimiters
- `markdown-preview-showdown.mermaid.theme`: Mermaid theme - "default", "dark", "forest", "neutral"
- `markdown-preview-showdown.vega.theme`: Vega theme - "excel", "ggplot2", "quartz", "vox", "dark"
- `markdown-preview-showdown.plantuml.theme`: PlantUML theme - "default", "nature", "c4", "c4-handwrite"
- `markdown-preview-showdown.plantuml.renderMode`: "local" or "remote" (default: "local")
- `markdown-preview-showdown.plantuml.website`: Remote PlantUML URL (if using remote mode)
- `markdown-preview-showdown.puppeteer.useCore`: Use puppeteer-core (default: true)
- `markdown-preview-showdown.puppeteer.chromePath`: Chrome executable path for PDF export
- `markdown-preview-showdown.puppeteer.waitForTimeout`: Wait timeout in ms before export

**Usage**:

- Open a Markdown file
- Press `Ctrl+Shift+V` (or `Cmd+Shift+V` on Mac) to open preview
- Use Command Palette → "Markdown Preview Showdown: Open Preview"
- For PlantUML: Ensure Java is installed and JAVA_HOME is set in environment variables
- For PDF export: Requires Chrome browser and Puppeteer configuration

**Keybindings**:

- `Ctrl+Shift+V` / `Cmd+Shift+V`: Open preview

---

## zaaack.markdown-editor

**Publisher**: zaaack

**Description**: A full-featured WYSIWYG editor for markdown. Provides What You See Is What You Get editing experience with auto-sync between editor and preview.

**Features**:

- WYSIWYG editing mode
- Instant Rendering mode (recommended)
- Split screen mode
- Auto-sync changes between editor and webview
- Copy markdown/HTML
- Auto-save uploaded/pasted/drag-dropped images to assets folder
- Multi-theme support
- Multiple graph support: KaTeX, Mermaid, Graphviz, ECharts, abc.js (notation)
- Custom CSS support
- Shortcut keys

**Important Settings**:

- `markdown-editor.customCss`: Custom CSS rules for layout and vditor personalization

**Usage**:

1. **Command mode**: Open markdown file → `Cmd+Shift+P` → "markdown-editor: Open with markdown editor"
2. **Key bindings**: `Ctrl+Shift+Alt+M` (Windows) or `Cmd+Shift+Alt+M` (Mac)
3. **Explorer context menu**: Right-click markdown file → "Open with markdown editor"
4. **Editor title context menu**: Right-click tab title → "Open with markdown editor"

**Custom CSS Example**:

```json
"markdown-editor.customCss": ".vditor-ir pre.vditor-reset {line-height: 32px;padding-right: calc(100% - 800px) !important; margin-left: 100px; font-family: system-ui !important;}"
```

---

## PKief.markdown-checkbox

**Publisher**: Philipp Kief

**Description**: Create and toggle checkboxes in Markdown documents. Provides shortcuts and workspace configurations to create checkboxes and mark them quickly.

**Features**:

- Create checkboxes with keyboard shortcut
- Toggle checkbox state with keyboard shortcut
- Multi-select QuickPick to toggle all checkboxes
- Status bar information (shows checked/total count)
- Customizable bullet points
- Customizable checkmark style
- Italic/strikethrough when checked
- Date stamp when checked
- Works with multiple language IDs

**Important Settings**:

- `markdown-checkbox.withBulletPoint`: Add bullet point before checkbox (default: false)
- `markdown-checkbox.typeOfBulletPoint`: Bullet type - "*", "-", "+" (default: "*")
- `markdown-checkbox.checkmark`: Checkmark style - "X" or "x" (default: "X")
- `markdown-checkbox.italicWhenChecked`: Italic font when checked (default: true)
- `markdown-checkbox.strikeThroughWhenChecked`: Strikethrough when checked (default: true)
- `markdown-checkbox.dateWhenChecked`: Add date when checked (default: true)
- `markdown-checkbox.dateFormat`: Date format using moment.js patterns (default: "YYYY-MM-DD")
- `markdown-checkbox.dateTemplate`: Date template, {date} placeholder (default: "({date})")
- `markdown-checkbox.languages`: Array of language IDs to enable extension (default: ["markdown"])
- `markdown-checkbox.quickPickEscBehavior`: ESC behavior - "doNothing" or "uncheckAll"

**Usage**:

- **Create checkbox**: `Ctrl+Shift+C` (Windows) or `Cmd+Shift+C` (Mac)
- **Toggle checkbox**: `Ctrl+Shift+Enter` (Windows) or `Cmd+Shift+Enter` (Mac)
- **Multi-select**: Click status bar item or use Command Palette → "Markdown Checkbox: Pick Checkboxes"
- Status bar shows checkbox count when at least one checkbox exists in file

**Keybindings**:

- `Ctrl+Shift+C` / `Cmd+Shift+C`: Create checkbox
- `Ctrl+Shift+Enter` / `Cmd+Shift+Enter`: Toggle checkbox

---

## matt-rudge.auto-open-preview-panel

**Publisher**: Matt Rudge

**Description**: Automatically opens the preview panel when opening Markdown files in Visual Studio Code. This extension enhances the markdown editing workflow by automatically showing the preview alongside your markdown source.

**Features**:

- Automatically opens preview panel when opening Markdown files
- Seamless integration with markdown preview extensions
- Works with built-in VS Code markdown preview and third-party preview extensions

**Usage**:

- Simply open any Markdown file (`.md`)
- The preview panel will automatically open alongside your editor
- No configuration required - works out of the box

---

## Installation

Install this extension pack and all included extensions will be installed automatically. Refer to each extension's section above for specific usage instructions and configuration options.

**Note**: The `jhuix.markdown-preview-showdown` extension requires Java to be installed for local PlantUML rendering. See the prerequisites section below and run the appropriate installation script if needed.
