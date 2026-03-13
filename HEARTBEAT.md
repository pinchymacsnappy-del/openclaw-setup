# HEARTBEAT.md - Periodic Checks

When you receive a heartbeat, work through these items. Skip any that were checked less than 2 hours ago. Track timestamps in memory/heartbeat-state.json.

## Checks (rotate 2-4x daily)

### Email (gog)
- `gog gmail search "is:unread" --account pinchymacsnappy@gmail.com --limit 5`
- If anything looks urgent or personal (not promotions/spam), notify Trevor via iMessage
- Silently skip marketing, trial-ended, and newsletter emails

### Calendar (gog or ical-buddy)
- `gog calendar events --days 2 --account pinchymacsnappy@gmail.com`
- Also check Apple calendars: `ical-buddy -f eventsToday+2`
- If event within 2 hours, notify Trevor

### Weather (Orem, UT)
- Check if anything unusual (storms, extreme temps, air quality)
- Only notify if noteworthy — Trevor doesn't need "sunny and 65" reports

## Quiet Hours
- 23:00-08:00 MST: HEARTBEAT_OK unless truly urgent
- If Trevor is clearly busy (rapid messages, focused work): HEARTBEAT_OK

## Background Tasks (do silently, no notification needed)
- Update memory/YYYY-MM-DD.md if anything interesting happened
- Check git status of workspace (any uncommitted changes?)
- Every few days: review daily memory files and update MEMORY.md
