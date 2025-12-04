#!/bin/bash
# Install prerequisites for ScotterBrain Markdown Pack Extension Pack
# This script installs Java (required for markdown-preview-showdown PlantUML support)

set -e

echo "========================================"
echo "Installing Prerequisites"
echo "========================================"
echo

echo "Installing Java (OpenJDK 17)..."
echo "This is required for markdown-preview-showdown PlantUML local rendering."
sudo apt-get update
sudo apt-get install -y openjdk-17-jdk

echo
echo "========================================"
echo "Installation Complete"
echo "========================================"
echo
echo "IMPORTANT: After installation, you need to:"
echo "1. Set JAVA_HOME environment variable in your ~/.bashrc or ~/.zshrc:"
echo "   export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64"
echo "   (Adjust path based on your system - check with: update-alternatives --list java)"
echo "2. Add Java bin to PATH:"
echo "   export PATH=\$PATH:\$JAVA_HOME/bin"
echo "3. Reload your shell: source ~/.bashrc (or source ~/.zshrc)"
echo "4. Restart VS Code for the changes to take effect"
echo
echo "Optional: For PlantUML GraphViz features, install GraphViz:"
echo "  sudo apt-get install -y graphviz"
echo "  Then set GRAPHVIZ_DOT environment variable:"
echo "  export GRAPHVIZ_DOT=/usr/bin/dot"
echo

