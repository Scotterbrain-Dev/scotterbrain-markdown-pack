@echo off
REM Package the extension pack as a VSIX file
REM Requires: npm install -g @vscode/vsce

echo ========================================
echo Packaging Extension Pack
echo ========================================
echo.

REM Check if vsce is installed
where vsce >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: vsce is not installed.
    echo Please install it first: npm install -g @vscode/vsce
    echo.
    pause
    exit /b 1
)

echo Packaging extension pack...
vsce package

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo Packaging Complete!
    echo ========================================
    echo.
    echo The VSIX file has been created in this directory.
    echo You can now share it or install it manually.
    echo.
) else (
    echo.
    echo ========================================
    echo Packaging Failed
    echo ========================================
    echo.
    echo Please check the error messages above.
    echo Make sure your package.json is valid.
    echo.
)

pause


