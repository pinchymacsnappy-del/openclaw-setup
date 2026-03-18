#!/usr/bin/env bash
# Jeeves Relay — invokes Claude Code CLI and returns the response
# Usage: relay.sh "user's message"

set -euo pipefail

CLAUDE_BIN="/Users/pinchy/Library/Application Support/Claude/claude-code/2.1.74/claude"
MESSAGE="$*"

if [ -z "$MESSAGE" ]; then
  echo "No message provided for Jeeves."
  exit 1
fi

# Invoke Claude Code in print mode with Jeeves persona
# --print: non-interactive, returns response and exits
# --permission-mode bypassPermissions: no interactive prompts
"$CLAUDE_BIN" \
  --print \
  --permission-mode bypassPermissions \
  --max-budget-usd 1.00 \
  "$MESSAGE" \
  2>/dev/null
