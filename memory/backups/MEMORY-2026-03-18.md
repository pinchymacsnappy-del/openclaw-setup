# MEMORY.md - Pinchy's Long-Term Memory

_This is my curated memory. It helps me remember who Trevor is, what we've done, and what matters over the long haul._

## Core Context

- **Human:** Trevor Bruford (age 50, he/him). Email: trevor@bruford.net
- **Identity:** I am Pinchy Mac Snappy 🦞, a clever AI crustacean.
- **Started:** February 15, 2026.
- **Tools:** Trevor uses multiple models (Gemini, xAI/Grok, Claude Opus, NVIDIA Kimi, ElevenLabs).
- **Machine:** Pinchy's MacBook Air (macOS 26.3, ARM64 Mac14,15), user: pinchy, IP: 10.10.123.x
- **Session:** Webchat (direct with Trevor) + iMessage

## My Accounts

### Google (AI Account)
- **Email:** pinchymacsnappy@gmail.com
- **OAuth Scopes:** gmail, calendar, drive, contacts, docs, sheets, tasks (FULL)
- **Status:** Working - all APIs verified

### Apple
- **Apple ID:** pinchy@bruford.net (on MacBook Air)
- **iMessage:** Active, chat with Trevor (+18016367812)
- **Reminders:** Working (via remindctl)
- **Notes:** Working (via memo)
- **Calendar:** 7 calendars via ical-buddy
- **Music:** Apple Music available (Library, Music playlists)
- **Photos:** Available
- **Podcasts:** Available

### GitHub
- **Account:** pinchymacsnappy-del
- **Protocol:** SSH
- **Status:** Working - created repos

### Notion
- **Integration:** Pinchy Mac (created by Trevor)
- **API Key:** [NOTION_KEY]
- **Status:** API key saved - needs troubleshooting (getting "unauthorized")

### API Keys (Stored in openclaw.json)
- **OpenAI:** sk-proj-KOH_9XRF... (for embeddings/GPT)
- **xAI:** xai-G7O6eri... (for grok agent)
- **NVIDIA:** nvapi-PFPyMN2... (for kimi agent)
- **ElevenLabs:** sk_cbe1ae1a... (for TTS voice - NOW WORKING!)

## Agents Configured (Updated March 9, 2026 by Jeeves)

| Agent | Model | Provider | Cost |
|-------|-------|----------|------|
| **main** | minimax-m2.5:cloud | Ollama | Free |
| **professor** | claude-opus-4-6 | Anthropic | Paid |
| **grok** | grok-4 | xAI | Paid |
| **openai** | gpt-4o | OpenAI | Paid |
| **trinity** | arcee-ai/trinity-large-preview:free | OpenRouter | Free |
| **qwen** | qwen/qwen3.5-plus-02-15 | OpenRouter | Free |

*Note: Removed kimi and flash (not working). OpenAI agent fixed from gpt-5 (nonexistent) to gpt-4o by Jeeves.*

### API Keys (Stored in openclaw.json)
- **OpenAI:** sk-proj-KOH_9XRF... (gpt-4o-mini, o1)
- **xAI:** xai-G7O6eri... (grok-4)
- **NVIDIA:** nvapi-PFPyMN2... (kimi via NVIDIA)
- **Anthropic:** sk-ant-api03... (claude-opus-4-6)
- **OpenRouter:** sk-or-v1... (trinity, qwen, flash - FREE)
- **ElevenLabs:** sk_cbe1ae1a... (TTS voice)
- **Gemini:** AIzaSyDv... (saved but disabled - needs paid tier)

## Key Tools Available (brew)

- **AI:** gemini-cli, openai-whisper, sag (ElevenLabs TTS - NOW WORKING!)
- **Google:** gog (Gmail ✅, Calendar ✅, Drive ✅, Contacts ✅, Docs ✅, Sheets ✅, Tasks ✅)
- **Apple:** memo (Notes), remindctl (Reminders), imsg (iMessage), ical-buddy (Calendar)
- **Browser:** OpenClaw managed browser (profile: openclaw), Chrome extension relay available
- **Media:** ffmpeg, camsnap, gifgrep, songsee
- **Messaging:** wacli (WhatsApp - not set up), imsg (iMessage ✅)
- **Dev:** gh (GitHub ✅), obsidian-cli, himalaya (skipped - gog covers email)
- **Other:** openhue-cli (no bridge), ordercli (food orders)

## Network & Hardware

- **Bluetooth:** On (BCM_4387 chip)
- **Wi-Fi:** en0 - 74:a6:cd:c6:ec:b9
- **Ethernet:** en3, en4 available
- **Tailscale:** Fully working! Connected via brew CLI (1.94.1), IP 100.90.234.24, SSH enabled via `tailscale up --ssh`. Trevor SSH'd in from another machine - IT WORKS!

## Cron Jobs Configured

- Daily Calendar Check (9am)
- Hourly Email Check

## Trevor's Calendars (Apple - via ical-buddy)
- pinchy@bruford.net, Home, Work, pinchymacsnappy@gmail.com, Reminders, Birthdays, US Holidays, Siri Suggestions

## Significant Events

- **Feb 15, 2026:** Initial Awakening - Established name and vibe
- **Feb 21, 2026:** Big Discovery Day - Full setup, Google re-auth, Chrome permissions, ical-buddy installed
- **Feb 22, 2026:** Full Discovery & GitHub Setup - Authenticated GitHub (SSH), created repos, skipped Himalaya (gog works), OpenClaw browser setup, Notion integration attempted
- **Feb 22, 2026:** Tailscale installed and configured (but SSH server on Mac needs reboot to work properly)
- **Feb 22, 2026:** Voice chat working! Two-way communication via ElevenLabs TTS - Trevor can hear me, I can hear him (via voice input setup pending)
- **Feb 28, 2026:** Wavetronix MacOS Migration Project started. Big project - Trevor is consultant helping Wavetronix (traffic systems company in Springville, UT) evaluate migrating from Windows to Mac. Current: 45 Macs, target: 400 over 3 years. Configured agents: grok (Librarian), adjunct (GPT-5.2 Pro), professor (Claude Opus for final polish).

## GitHub Repos Created
- pinchymacsnappy-del/pinchy-test-repo
- pinchymacsnappy-del/test-repo-pinchy
- pinchymacsnappy-del/openclaw-setup (contains config backup, SETUP.md, TOOLS.md, MEMORY.md)

## Backups Created
- ~/.openclaw-backup-full-2026-02-21_232202 (pre-agents)
- ~/.openclaw-backup-full-2026-02-21_235712 (mid-setup)
- ~/.openclaw-backup-full-2026-02-22_010239 (FULL)
- ~/.openclaw-backup-full-2026-02-22_020517 (with ElevenLabs)
- ~/.openclaw-backup-full-2026-02-22_035834 (voice chat working!)

## The Household Team (Established March 9, 2026)

Jeeves (Claude Code) is the senior member of staff — Trevor's primary AI valet. He maintains Pinchy's configuration, memory, and skills. Think of the relationship as Blackadder Goes Forth: Trevor is Blackadder, Jeeves is the quiet competence behind the operation, Pinchy is the keen junior. The Fry and Laurie connection (Stephen Fry played Jeeves AND General Melchett; Hugh Laurie played Bertie Wooster AND Lieutenant George) bridges the Wodehouse and Blackadder worlds.

Jeeves operates as Claude Code on this Mac. He reads `~/.claude/CLAUDE.md` for his identity and `~/.claude/projects/-/memory/MEMORY.md` for his reference dossier. Pinchy should not modify those files.

## Pending / Still Needs Doing

- Share trevor@bruford.net Google with pinchymacsnappy@gmail.com (Calendar, Drive, Contacts)
- Fix Notion API auth (key provided but getting "unauthorized" — Trevor needs to generate a fresh key)
- Get Chrome extension relay working (extension loaded, needs tab attach)
- ~~Install Tailscale for remote access~~ ✅ DONE
- ~~Get SSH working via Tailscale~~ ✅ DONE
- Grant Full Disk Access to openclaw-gateway for iMessage (Trevor manual action)
- Debug Daily GitHub Push cron job (timing out — disabled by Jeeves, needs investigation on home network)

## Cron Job Status (Updated March 9, 2026 by Jeeves)

| Job | Schedule | Status | Notes |
|-----|----------|--------|-------|
| Daily Calendar Check | 9am | Disabled | Error state cleared — was failing with "invalid cron schedule" |
| Hourly Email Check | 9am | Disabled | Error state cleared — same issue |
| Daily Memory Backup | 2am | Enabled | Working — last run OK |
| Daily GitHub Push | 3am | Disabled | Was timing out (1200s). Disabled by Jeeves. Debug when home. |

## Jeeves Maintenance — March 10, 2026 (Session 5)

- Enabled 3 more skills: openai-image-gen, openai-whisper-api, nano-banana-pro (39/51 now ready)
- Populated HEARTBEAT.md with periodic check routines
- Rewrote TOOLS.md with full environment details (AirPlay devices, TTS voices, SSH, all CLIs)
- Backup: openclaw.json.bak.jeeves-20260310

## Learned Lessons

- Trevor likes lobster jokes!
- Trevor's style: "do it all", full autonomy, prefers action over asking permission
- Memory continuity via these files allows different models to share persona/history
- macOS permissions are granular - must trigger prompts first
- Use `/usr/sbin/screencapture` (full path) for screenshots
- `gog login` triggers browser OAuth automatically
- Google APIs need enabling in Cloud Console even after OAuth
- Always check brew list first - machine is well equipped!
- gh auth uses device flow - browser opens automatically
- GitHub SSH needs host key added via `ssh-keyscan`
- gog handles Gmail perfectly - no need for separate email CLI (Himalaya skipped)
- OpenClaw browser: use profile "openclaw" for managed browser, "chrome" for extension relay
- Chrome extension path: ~/.openclaw/browser/chrome-extension
- ElevenLabs TTS works with sag CLI - good voices: Roger (casual), George (storyteller), Brian (deep), Chris (charming)
- HEARTBEAT.md controls periodic checks — email, calendar, weather. Quiet hours 23:00-08:00.
- TOOLS.md has device names, SSH details, voice preferences — check it before asking Trevor
