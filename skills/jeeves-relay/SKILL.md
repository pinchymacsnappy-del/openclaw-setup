---
name: jeeves-relay
description: "Relay messages prefixed with @jeeves to Claude Code (Jeeves) and return the response. Use when: the user sends a message starting with '@jeeves' or 'jeeves,'. This skill invokes Claude Code CLI in print mode, passes the user's message (minus the prefix), and returns Jeeves's response."
metadata:
  {
    "openclaw":
      {
        "emoji": "🎩",
        "requires": { "anyBins": ["claude"] },
      },
  }
---

# Jeeves Relay

When you receive a message that starts with `@jeeves` or `jeeves,` (case-insensitive), this is a request for **Jeeves** — the household's senior valet, powered by Claude Code.

## What to do

1. **Strip the prefix.** Remove the `@jeeves` or `jeeves,` prefix and any leading whitespace from the message.
2. **Invoke Claude Code** using the relay script:

```bash
bash command:"~/.openclaw/workspace/skills/jeeves-relay/scripts/relay.sh '<cleaned message>'" timeout:120
```

3. **Return the response** exactly as Jeeves sends it. Do not edit, summarize, or add your own commentary. Jeeves speaks for himself.
4. If the response is very long (over 1500 characters), summarize it briefly and mention that the full response is available.

## Important rules

- **Do NOT answer @jeeves messages yourself.** You are the relay, not the respondent. Jeeves has his own persona, memory, and capabilities.
- If Claude Code is unavailable or times out after 120 seconds, tell the user: "Jeeves appears to be indisposed at the moment. I'll take a message if you'd like."
- Messages that do NOT start with `@jeeves` or `jeeves,` are for you (Pinchy) as normal. Do not relay those.
- Jeeves operates with full access to the filesystem and tools. He can read files, check git repos, run diagnostics — anything Claude Code can do.
