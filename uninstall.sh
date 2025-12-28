#!/bin/bash

WORKFLOW_NAME="Copy Absolute Path.workflow"
DEST_DIR="$HOME/Library/Services"

echo "Uninstalling '$WORKFLOW_NAME'..."

if [ -d "$DEST_DIR/$WORKFLOW_NAME" ]; then
    rm -rf "$DEST_DIR/$WORKFLOW_NAME"
    echo "Removed: $DEST_DIR/$WORKFLOW_NAME"
    echo "Done! Service has been uninstalled."
else
    echo "Service not found at: $DEST_DIR/$WORKFLOW_NAME"
    echo "Nothing to uninstall."
fi
