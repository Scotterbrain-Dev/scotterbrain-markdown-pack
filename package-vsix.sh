#!/bin/bash
# Package the extension pack as a VSIX file
# Requires: npm install -g @vscode/vsce

set -e

echo "========================================"
echo "Packaging Extension Pack"
echo "========================================"
echo

# Check if vsce is installed
if ! command -v vsce &> /dev/null; then
    echo "ERROR: vsce is not installed."
    echo "Please install it first: npm install -g @vscode/vsce"
    exit 1
fi

echo "Packaging extension pack..."
vsce package

if [ $? -eq 0 ]; then
    echo
    echo "========================================"
    echo "Packaging Complete!"
    echo "========================================"
    echo
    echo "The VSIX file has been created in this directory."
    echo "You can now share it or install it manually."
    echo
else
    echo
    echo "========================================"
    echo "Packaging Failed"
    echo "========================================"
    echo
    echo "Please check the error messages above."
    echo "Make sure your package.json is valid."
    echo
    exit 1
fi


