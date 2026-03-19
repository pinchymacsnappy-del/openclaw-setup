#!/usr/bin/env bash
# Jeeves Relay — invokes Claude Code CLI and returns the response
# Usage: relay.sh "user's message"

set -euo pipefail

# Find the latest Claude Code binary (version-agnostic)
CLAUDE_DIR="/Users/pinchy/Library/Application Support/Claude/claude-code"
CLAUDE_BIN="$(ls -d "$CLAUDE_DIR"/*/claude 2>/dev/null | sort -V | tail -1)"

if [ -z "$CLAUDE_BIN" ] || [ ! -x "$CLAUDE_BIN" ]; then
  echo "Claude Code binary not found in $CLAUDE_DIR"
  exit 1
fi
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
