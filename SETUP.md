# Setup Before Publishing

## Required Changes

Before publishing or packaging your extension pack, you need to update `package.json`:

1. **Change the publisher name**:
   - Find: `"publisher": "your-publisher-name"`
   - Replace with your actual publisher name (e.g., `"scotterbrain"`)
   - This must be a valid identifier (lowercase, no spaces, alphanumeric and hyphens only)

2. **Optional: Add repository URLs**:
   - `repository.url`: Your Git repository URL (if you have one)
   - `bugs.url`: URL for issue tracking (e.g., GitHub issues)
   - `homepage`: Your extension's homepage URL

## Example

```json
{
  "publisher": "scotterbrain",
  "repository": {
    "type": "git",
    "url": "https://github.com/scotterbrain/markdown-pack"
  },
  "bugs": {
    "url": "https://github.com/scotterbrain/markdown-pack/issues"
  },
  "homepage": "https://github.com/scotterbrain/markdown-pack#readme"
}
```

## Next Steps

After updating `package.json`, see `PUBLISHING.md` for instructions on:
- Publishing to OpenVSX
- Creating a VSIX file for manual distribution
- Sharing across multiple machines and SSH instances


