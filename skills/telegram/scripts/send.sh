#!/usr/bin/env bash
# Send a Telegram message to Trevor via PinchyBot
# Usage: send.sh "Your message here"
set -euo pipefail

# Token loaded from environment or fallback to secrets file
# The token will be set once PinchyBot is created via BotFather
BOT_TOKEN="${TELEGRAM_BOT_TOKEN:-PENDING_TOKEN}"
CHAT_ID="${TELEGRAM_CHAT_ID:-7974119955}"

if [ "$BOT_TOKEN" = "PENDING_TOKEN" ]; then
  echo "Error: PinchyBot token not yet configured. Set TELEGRAM_BOT_TOKEN."
  exit 1
fi

MESSAGE="$*"
if [ -z "$MESSAGE" ]; then
  echo "Usage: send.sh <message>"
  exit 1
fi

# URL-encode isn't needed with --data-urlencode
curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
  --data-urlencode "chat_id=${CHAT_ID}" \
  --data-urlencode "text=${MESSAGE}" \
  -o /dev/null -w "%{http_code}" | grep -q "200" && echo "Sent." || echo "Failed to send."
