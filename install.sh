#!/usr/bin/env bash

set -e

DEST_DIR="$HOME/.gemini/skills"
echo "=> Installing Craftsman skills to $DEST_DIR..."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -d "$SCRIPT_DIR/skills" ]; then
    mkdir -p "$DEST_DIR"
    cp -R "$SCRIPT_DIR/skills/"* "$DEST_DIR/"
    echo "=> Success! Skills installed."
    echo "   You can now use /craftsman and /craftsman-write-skills"
else
    echo "Error: skills directory not found in $SCRIPT_DIR"
    exit 1
fi
