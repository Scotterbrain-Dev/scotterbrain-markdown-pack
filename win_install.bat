@echo off
REM Install prerequisites for ScotterBrain Markdown Pack Extension Pack
REM This script installs Java (required for markdown-preview-showdown PlantUML support)

echo ========================================
echo Installing Prerequisites
echo ========================================
echo.

echo Installing Java (JDK)...
echo This is required for markdown-preview-showdown PlantUML local rendering.
winget install Microsoft.OpenJDK.17
if %ERRORLEVEL% NEQ 0 (
    echo Warning: Failed to install Java via winget. Please install Java manually.
    echo Download from: https://www.oracle.com/java/technologies/downloads/
    echo.
)

echo.
echo ========================================
echo Installation Complete
echo ========================================
echo.
echo IMPORTANT: After installation, you need to:
echo 1. Set JAVA_HOME environment variable to your Java installation directory
echo    Example: C:\Program Files\Java\jdk-17
echo 2. Add %JAVA_HOME%\bin to your PATH environment variable
echo 3. Restart VS Code for the changes to take effect
echo.
echo Optional: For PlantUML GraphViz features, install GraphViz:
echo   winget install Graphviz.Graphviz
echo   Then set GRAPHVIZ_DOT environment variable to: C:\Program Files\Graphviz\bin\dot.exe
echo.
pause

