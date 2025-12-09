#!/bin/bash
# Warns when code files exceed 150 lines (academic-msc requirement)

MAX_LINES=150
FILE_PATH="$CLAUDE_TOOL_ARG_FILE_PATH"

# Skip docs and config files
if [[ "$FILE_PATH" == *.md ]] || [[ "$FILE_PATH" == *.json ]] || [[ "$FILE_PATH" == *.yaml ]] || [[ "$FILE_PATH" == *.yml ]]; then
    exit 0
fi

if [[ ! -f "$FILE_PATH" ]]; then
    exit 0
fi

LINE_COUNT=$(wc -l < "$FILE_PATH")

if [[ $LINE_COUNT -gt $MAX_LINES ]]; then
    echo "⚠️  WARNING: $FILE_PATH has $LINE_COUNT lines (limit: $MAX_LINES)"
    echo "   Refactor into smaller modules per academic-msc guidelines."
fi
