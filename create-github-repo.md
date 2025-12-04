# Creating GitHub Repository

## Option 1: Using GitHub Web Interface (Recommended)

1. Go to https://github.com/organizations/ScotterBrain-Dev/repositories/new
2. Repository name: `scotterbrain-markdown-pack`
3. Description: `Essential tools for working with Markdown files in Visual Studio Code`
4. Visibility: Choose Public or Private
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. Click "Create repository"

7. After creating, run these commands in this directory:

```bash
git remote add origin https://github.com/ScotterBrain-Dev/scotterbrain-markdown-pack.git
git branch -M main
git push -u origin main
```

## Option 2: Using GitHub CLI (if installed)

If you have GitHub CLI installed and authenticated:

```bash
gh repo create ScotterBrain-Dev/scotterbrain-markdown-pack --public --source=. --remote=origin --push
```

## Option 3: Using GitHub API with Token

If you have a GitHub Personal Access Token with `repo` permissions:

```bash
# Set your token (replace YOUR_TOKEN with your actual token)
$env:GITHUB_TOKEN = "YOUR_TOKEN"

# Create the repository
curl -X POST `
  -H "Authorization: token $env:GITHUB_TOKEN" `
  -H "Accept: application/vnd.github.v3+json" `
  https://api.github.com/orgs/ScotterBrain-Dev/repos `
  -d '{"name":"scotterbrain-markdown-pack","description":"Essential tools for working with Markdown files in Visual Studio Code","private":false}'

# Add remote and push
git remote add origin https://github.com/ScotterBrain-Dev/scotterbrain-markdown-pack.git
git branch -M main
git push -u origin main
```

## After Creating the Repository

Once the repository is created and pushed, update `package.json` with the repository URL:

```json
"repository": {
  "type": "git",
  "url": "https://github.com/ScotterBrain-Dev/scotterbrain-markdown-pack.git"
},
"bugs": {
  "url": "https://github.com/ScotterBrain-Dev/scotterbrain-markdown-pack/issues"
},
"homepage": "https://github.com/ScotterBrain-Dev/scotterbrain-markdown-pack#readme"
```


