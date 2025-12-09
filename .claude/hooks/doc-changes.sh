#!/bin/bash
# Notifies when docs/ has uncommitted changes

if [[ -d "docs" ]] && command -v git &> /dev/null; then
    cd "$(git rev-parse --show-toplevel 2>/dev/null)" || exit 0

    if git status --porcelain docs/ 2>/dev/null | grep -q .; then
        echo "📝 docs/ has uncommitted changes"
    fi
fi
