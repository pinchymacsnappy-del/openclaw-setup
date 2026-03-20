---
name: telegram
description: "Send messages to Trevor via Telegram using PinchyBot. Use when: you need to notify Trevor, send a status update, deliver a report, or respond to a message that came from Telegram. Replaces iMessage for agent-to-human communication."
metadata:
  {
    "openclaw":
      {
        "emoji": "📨",
        "requires": { "anyBins": ["python3"] },
      },
  }
---

# Telegram Messaging

Send messages to Trevor via **@BrufordPinchyBot** on Telegram.

## How to send a message

```bash
bash command:"~/.openclaw/workspace/skills/telegram/scripts/send.sh '<message>'" timeout:30
```

## How to check for new messages

```bash
bash command:"~/.openclaw/workspace/skills/telegram/scripts/poll.sh" timeout:45
```

This returns any unread messages from Trevor as JSON. Use it during heartbeat checks or when prompted to check Telegram.

## Important rules

- **Never send without a reason.** Only message Trevor when you have something useful to say — notifications, responses, status updates, alerts.
- **Keep messages concise.** Telegram is for quick communication, not essays.
- **Respect quiet hours** (23:00–08:00 MST) unless urgent.
- The bot token is stored in the script — do not log or expose it.
