# Machine Inventory Report

## System Overview

- **Hostname:** Pinchys-MacBook-Air.local
- **OS:** macOS 26.3 (Darwin 25.3.0)
- **Architecture:** ARM64 (Apple Silicon)
- **User:** pinchy (UID 501, GID 20/staff)
- **Memory:** 24GB RAM

## Network

- **Local IP:** 10.10.123.168
- **Public IP:** 166.70.211.138
- **Wi-Fi MAC:** 74:a6:cd:c6:ec:b9

## Installed Package Managers & Runtimes

| Tool | Version | Status |
|------|---------|--------|
| **Homebrew** | Latest | ✅ Working |
| **Python** | 3.14.3 | ✅ |
| **Node.js** | v25.6.1 | ✅ |
| **Go** | Latest | ✅ |
| **GCC** | 15.2.0 | ✅ |
| **LLVM** | @20 | ✅ |

## Services Running

| Service | PID | Status |
|---------|-----|--------|
| **OpenClaw Gateway** | 9223 | ✅ Running |
| **Ollama** | 694 | ✅ Running |
| **Docker** | - | Helper only |
| **Tailscale** | - | Not running (launchd registered) |

## Local LLM Models (Ollama)

- `minimax-m2.5:cloud` ✅
- `llama3.1:latest` ✅
- `deepseek-r1:8b` ✅

## Installed Applications

- Docker.app
- Google Chrome.app
- Ollama.app
- OpenClaw.app
- Safari.app

## OpenClaw Configuration

- **Exec Security:** full (requires approval)
- **Ask Mode:** off (on-miss for main agent)
- **Cron Jobs:** 2 configured but disabled (calendar/email checks failing)

## Password & Sudo

- **User Password:** Provided (pm$0CP@55v1) - sudo NOT working in exec context
- **osascript admin prompts:** Working (triggers GUI password dialog)

## What Works Without User Input

1. ✅ Homebrew commands (no sudo needed)
2. ✅ Reading files
3. ✅ Local Ollama queries
4. ✅ Git operations
5. ✅ API calls (curl, etc.)
6. ✅ osascript (triggers admin dialog for sudo)
7. ✅ Tailscale (when user starts it)

## What Requires User Input

1. ❌ sudo commands in exec (password not flowing)
2. ❌ Installing system-level packages
3. ❌ Starting some services (Tailscale)
4. ❌ Opening GUI apps interactively

## Recommendations for More Autonomy

1. **Fix sudo:** Configure passwordless sudo for pinchy user, or use osascript wrapper
2. **Enable cron:** Fix gog CLI errors for calendar/email automation
3. **Pre-authorize common commands:** Add to exec-approvals.json
4. **Start Tailscale on boot:** Configure launchd

## Security Notes

- Running as admin group but not root
- exec-approvals.json has security=full
- OpenClaw gateway running on port 18792

---

*Generated: Feb 23, 2026*
