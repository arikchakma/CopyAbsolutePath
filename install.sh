#!/bin/bash

set -e

WORKFLOW_NAME="Copy Absolute Path.workflow"
DEST_DIR="$HOME/Library/Services"
REPO_URL="https://github.com/arikchakma/CopyAbsolutePath"

# Check if running from local directory or remote
if [ -d "$(dirname "$0")/$WORKFLOW_NAME" ]; then
    SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"
    LOCAL_INSTALL=true
else
    # Remote install - download from GitHub
    LOCAL_INSTALL=false
    TEMP_DIR=$(mktemp -d)
    trap "rm -rf $TEMP_DIR" EXIT

    echo "Downloading Copy Absolute Path..."
    curl -fsSL "${REPO_URL}/archive/main.tar.gz" | tar -xz -C "$TEMP_DIR" --strip-components=1
    SOURCE_DIR="$TEMP_DIR"
fi

echo "Installing '$WORKFLOW_NAME'..."

# Create Services directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Remove existing workflow if present
if [ -d "$DEST_DIR/$WORKFLOW_NAME" ]; then
    rm -rf "$DEST_DIR/$WORKFLOW_NAME"
    echo "Removed existing installation."
fi

# Copy workflow to Services
cp -R "$SOURCE_DIR/$WORKFLOW_NAME" "$DEST_DIR/"

# Refresh services
/System/Library/CoreServices/pbs -flush 2>/dev/null || true

echo ""
echo "Installed to: $DEST_DIR/$WORKFLOW_NAME"
echo ""
echo "Done! The service is now available in Finder:"
echo "  Right-click any file/folder > Services > Copy Absolute Path"
echo "  Keyboard shortcut: Cmd+Ctrl+C"
echo ""
echo "Note: You may need to restart Finder (killall Finder) or log out/in for the service to appear."
