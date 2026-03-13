# TOOLS.md - Local Notes

Skills define _how_ tools work. This file is for _your_ specifics -- the stuff that's unique to your setup.

---

## AirPlay Devices (discovered on home network)

| Name | Type | Notes |
|------|------|-------|
| Great Room (939) | HomePod / AirPlay | Main living area |
| Bonus Room | HomePod / AirPlay | Upstairs |
| Bonus Apple TV | Apple TV | Upstairs TV |
| tbteevee | Apple TV | Trevor's TV (likely bedroom/office) |
| Trevor Temp / Trevor Temp (2) | Apple TV or AirPlay | Additional AirPlay targets |
| Pinchy's MacBook Air | This machine | Local AirPlay |
| MacBook Air | Second MacBook Air | Another Mac on network |

## TTS (ElevenLabs via sag)

- **API key:** Set in openclaw.json (ELEVENLABS_API_KEY)
- **Default model:** eleven_v3
- **Good voices for Pinchy:**
  - **Roger** - Laid-back, casual, resonant (good default)
  - **George** - Warm, captivating storyteller (great for storytime)
  - **Brian** - Deep, resonant, comforting
  - **Chris** - Charming, down-to-earth
  - **Eric** - Smooth, trustworthy
- **Usage:** `sag "Hello Trevor" -v Roger`
- **Tip:** Use `sag prompting` for model-specific tips on better output

## SSH / Remote Access

- **Tailscale IP:** 100.90.234.24 (this machine)
- **Tailscale SSH:** `tailscale up --ssh` (enabled when daemon running)
- **Status:** Daemon not running on public networks; starts on home network
- **Trevor has SSH'd in from other machines** -- confirmed working

## GitHub

- **Account:** pinchymacsnappy-del
- **Auth:** SSH (key at ~/.ssh/id_ed25519)
- **Repos:** pinchy-test-repo, test-repo-pinchy, openclaw-setup

## Google (via gog CLI)

- **Account:** pinchymacsnappy@gmail.com
- **Services:** Gmail, Calendar, Drive, Contacts, Docs, Sheets, Tasks
- **Usage:** `gog gmail search "is:unread"`, `gog calendar events --days 1`

## Apple (native CLIs)

- **Notes:** `memo` (list, create, edit, search)
- **Reminders:** `remindctl` (list, add, complete)
- **iMessage:** `imsg` (send, history) -- needs Full Disk Access for openclaw-gateway
- **Calendar:** `ical-buddy` (events, tasks)
- **Music:** Apple Music available

## Network

- **Home network:** 10.10.123.0/24
- **Router:** UniFi Dream Machine SE
- **This machine Wi-Fi MAC:** 74:a6:cd:c6:ec:b9

---

## Wavetronix MacOS Migration Project

### Project Files
- **Source:** `/Users/pinchy/Documents/TSB Project /THE MAC PROJECT LIBRARY/`
- **Grok Workspace:** `~/.openclaw/workspace/grok/`
- **Adjunct Workspace:** `~/.openclaw/workspace/adjunct/`
- **Professor Workspace:** `~/.openclaw/workspace/professor/`

### Project Deliverables (created)
- `tsb-executive-brief.md` - Executive summary (3-5 pages)
- `tsb-full-report.md` - Full report (10-15 pages)
- `tsb-technical-appendix.md` - Technical appendix
- `tsb-project-index.md` - Research index
- `tsb-project-emails.md` - Email index

### Agent Workflow
1. **Grok** (xai/grok-4) - Librarian: Index all research files
2. **Adjunct** (openai/gpt-4o) - Lead Consultant: Write reports
3. **Professor** (anthropic/claude-opus-4-6) - Final polish (saved for last)

### Key Context
- Wavetronix: Traffic systems company, Springville UT
- Current: ~45 Macs -> Target: 400 over 3 years
- MDM: Intune currently, evaluating Jamf, Iru/Kandji, Mosyle
- Recommendation: Hybrid (Intune for compliance + Jamf or Kandji for Mac management)
