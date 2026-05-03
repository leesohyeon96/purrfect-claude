# purrfect-claude 🐱

> Claude Code global config — smart notifications, cat theme, and developer-friendly defaults.

## Features

### 🔔 Smart Notifications
Four notification types, each with a different sound and context:

| Event | Message | Sound |
|---|---|---|
| Task complete (30s+) | ✅ Task complete (elapsed time) | Purr |
| Waiting for approval | ⚠️ Waiting for your approval | Sosumi |
| Tool error | ❌ Error in [tool] | Basso |
| Built-in alerts | 🐾 [message] | Purr |

Notifications only fire when they matter — no spam.

### 🐾 Cat Theme
- Spinner verbs: `Purring...` / `Paw-sing...` / `Kneading the code...`
- Loading tips with cat puns
- ASCII cat on session start
- Custom notification icon (replace with your own)

### ⚙️ Developer Defaults (CLAUDE.md)
- Short, direct responses
- No unnecessary comments or abstractions
- Performance-conscious code
- README generation rules

### 🔧 Custom Command
`/show-global-config` — shows a summary of your current global Claude setup.

---

## Install

```bash
git clone https://github.com/leesohyeon96/purrfect-claude.git
cd purrfect-claude
chmod +x install.sh
./install.sh
```

Restart Claude Code after install.

---

## Customize

**Notification icon** — replace with any PNG:
```bash
cp your-image.png ~/.claude/assets/icon.png
```

**CLAUDE.md rules** — edit directly:
```bash
open ~/.claude/CLAUDE.md
```

**Add new rules anytime** — just tell Claude:
> "Add X rule to CLAUDE.md"

---

## Requirements
- macOS
- [Claude Code](https://claude.ai/code)
- Homebrew (for `terminal-notifier`)

> Note: macOS restricts left-side notification icons to app bundles.  
> The cat image appears on the right side of the notification.

---

## Korean version
Korean branch coming soon.
