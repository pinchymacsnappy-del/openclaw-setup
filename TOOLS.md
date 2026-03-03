# TOOLS.md - Local Notes

Skills define _how_ tools work. This file is for _your_ specifics — the stuff that's unique to your setup.

## What Goes Here

Things like:

- Camera names and locations
- SSH hosts and aliases
- Preferred voices for TTS
- Speaker/room names
- Device nicknames
- Anything environment-specific

## Examples

```markdown
### Cameras

- living-room → Main area, 180° wide angle
- front-door → Entrance, motion-triggered

### SSH

- home-server → 192.168.1.100, user: admin

### TTS

- Preferred voice: "Nova" (warm, slightly British)
- Default speaker: Kitchen HomePod
```

## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

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
1. **Grok** (xai/grok-4) → Librarian: Index all research files
2. **Adjunct** (openai/gpt-5.2-pro) → Lead Consultant: Write reports
3. **Professor** (anthropic/claude-opus-4-6) → Final polish (saved for last)

### Key Context
- Wavetronix: Traffic systems company, Springville UT
- Current: ~45 Macs → Target: 400 over 3 years
- MDM: Intune currently, evaluating Jamf, Iru/Kandji, Mosyle
- Recommendation: Hybrid (Intune for compliance + Jamf or Kandji for Mac management)
