#!/bin/bash

HOOKS_DIR="tools/hooks"
GIT_HOOKS_DIR=".git/hooks"

# Copy all hook scripts to the Git hooks directory
for hook in $HOOKS_DIR/*; do
    hook_name=$(basename $hook)
    cp $hook $GIT_HOOKS_DIR/$hook_name
    chmod +x $GIT_HOOKS_DIR/$hook_name
done

echo "Hooks installed successfully."

