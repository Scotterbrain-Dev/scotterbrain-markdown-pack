# Script to create GitHub repository for ScotterBrain Markdown Pack
# Requires GitHub Personal Access Token with 'repo' permissions

param(
    [string]$Token = $env:GITHUB_TOKEN,
    [string]$Org = "ScotterBrain-Dev",
    [string]$RepoName = "scotterbrain-markdown-pack"
)

if (-not $Token) {
    Write-Host "Error: GitHub token not found." -ForegroundColor Red
    Write-Host "Please set GITHUB_TOKEN environment variable or pass -Token parameter" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Example:" -ForegroundColor Cyan
    Write-Host "  `$env:GITHUB_TOKEN = 'your_token_here'" -ForegroundColor Cyan
    Write-Host "  .\create-repo.ps1" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Or create the repo manually via GitHub web interface:" -ForegroundColor Yellow
    Write-Host "  https://github.com/organizations/$Org/repositories/new" -ForegroundColor Cyan
    exit 1
}

$headers = @{
    "Authorization" = "token $Token"
    "Accept" = "application/vnd.github.v3+json"
}

$body = @{
    name = $RepoName
    description = "Essential tools for working with Markdown files in Visual Studio Code"
    private = $false
} | ConvertTo-Json

Write-Host "Creating repository $Org/$RepoName..." -ForegroundColor Cyan

try {
    $response = Invoke-RestMethod -Uri "https://api.github.com/orgs/$Org/repos" -Method Post -Headers $headers -Body $body -ContentType "application/json"
    
    Write-Host "Repository created successfully!" -ForegroundColor Green
    Write-Host "URL: $($response.html_url)" -ForegroundColor Green
    
    # Add remote and push
    Write-Host ""
    Write-Host "Adding remote and pushing code..." -ForegroundColor Cyan
    
    git remote remove origin 2>$null
    git remote add origin $response.clone_url
    git branch -M main
    git push -u origin main
    
    Write-Host ""
    Write-Host "Repository setup complete!" -ForegroundColor Green
    Write-Host "Repository URL: $($response.html_url)" -ForegroundColor Green
    
    # Update package.json with repository info
    Write-Host ""
    Write-Host "Updating package.json with repository information..." -ForegroundColor Cyan
    
    $packageJson = Get-Content package.json -Raw | ConvertFrom-Json
    $packageJson.repository.url = $response.html_url + ".git"
    $packageJson.bugs.url = $response.html_url + "/issues"
    $packageJson.homepage = $response.html_url + "#readme"
    
    $packageJson | ConvertTo-Json -Depth 10 | Set-Content package.json
    
    Write-Host "package.json updated!" -ForegroundColor Green
    
} catch {
    Write-Host "Error creating repository: $_" -ForegroundColor Red
    if ($_.Exception.Response.StatusCode -eq 401) {
        Write-Host "Authentication failed. Please check your token." -ForegroundColor Yellow
    } elseif ($_.Exception.Response.StatusCode -eq 404) {
        Write-Host "Organization '$Org' not found or you don't have access." -ForegroundColor Yellow
    } elseif ($_.Exception.Response.StatusCode -eq 422) {
        Write-Host "Repository may already exist or name is invalid." -ForegroundColor Yellow
    }
    exit 1
}


