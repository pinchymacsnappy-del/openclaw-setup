#!/usr/bin/env bash
# Poll for new Telegram messages from Trevor via PinchyBot
# Usage: poll.sh
set -euo pipefail

BOT_TOKEN="${TELEGRAM_BOT_TOKEN:-PENDING_TOKEN}"
OFFSET_FILE="${HOME}/.openclaw/workspace/skills/telegram/.last_offset"

if [ "$BOT_TOKEN" = "PENDING_TOKEN" ]; then
  echo "Error: PinchyBot token not yet configured. Set TELEGRAM_BOT_TOKEN."
  exit 1
fi

# Read last offset to avoid re-reading old messages
OFFSET=0
if [ -f "$OFFSET_FILE" ]; then
  OFFSET=$(cat "$OFFSET_FILE")
fi

RESPONSE=$(curl -s "https://api.telegram.org/bot${BOT_TOKEN}/getUpdates?offset=${OFFSET}&timeout=5")

# Extract messages and update offset
echo "$RESPONSE" | python3 -c "
import json, sys
data = json.load(sys.stdin)
results = data.get('result', [])
if not results:
    print('No new messages.')
    sys.exit(0)
max_offset = 0
for u in results:
    max_offset = max(max_offset, u['update_id'] + 1)
    msg = u.get('message', {})
    text = msg.get('text', '')
    name = msg.get('from', {}).get('first_name', 'Unknown')
    print(f'[{name}]: {text}')
# Write new offset
with open('$OFFSET_FILE', 'w') as f:
    f.write(str(max_offset))
"
