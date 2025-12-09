#!/bin/bash
# Catches potential secrets before they get committed

FILE_PATH="$CLAUDE_TOOL_ARG_FILE_PATH"

if [[ ! -f "$FILE_PATH" ]]; then
    exit 0
fi

# Skip .example files
if [[ "$FILE_PATH" == *.example ]]; then
    exit 0
fi

if grep -qiE "(api_key|api_secret|apikey|secret_key|password|token|sk-[a-zA-Z0-9]{20,}|pk-[a-zA-Z0-9]{20,})\s*[=:]" "$FILE_PATH" 2>/dev/null; then
    echo "🔐 WARNING: Potential secret detected in $FILE_PATH"
    echo "   Use environment variables instead (per Section 3.2 security requirements)"
fi
