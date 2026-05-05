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
- Spinner: `Purring...` / `Paw-sing...` / `Kneading the code...`
- Loading tips with cat puns
- ASCII cat on session start
- Custom notification icon + sound (replace with your own)

### ⚙️ Developer Defaults (CLAUDE.md)
- Short, direct responses
- No unnecessary comments or abstractions
- Performance-conscious code
- README generation rules

### 🔧 Custom Command
`/show-global-config` — shows a summary of your current global Claude setup.

---

## How to use

### Option A — Just clone & install (no customization)
```bash
git clone https://github.com/leesohyeon96/purrfect-claude.git
cd purrfect-claude
chmod +x install.sh
./install.sh
```

### Option B — Fork & customize (recommended)

1. **Fork** this repo (top-right button on GitHub)
2. **Clone your fork**
```bash
git clone https://github.com/YOUR_USERNAME/purrfect-claude.git
cd purrfect-claude
```
3. **Customize** (see below)
4. **Install**
```bash
chmod +x install.sh
./install.sh
```

---

## Customize

**Notification icon** — replace with any PNG:
```bash
cp your-image.png assets/icon.png
```

**Notification sound** — replace with any mp3/mp4/wav:
```bash
cp your-sound.mp3 assets/meow.mp4
```

**Toggle meow sound** — edit `settings.json`:
```json
"env": {
  "PURRFECT_SOUND": "off"
}
```

**CLAUDE.md rules** — edit `CLAUDE.md` before installing, or after:
```bash
open ~/.claude/CLAUDE.md
```

**Add rules anytime** — just tell Claude:
> "Add X rule to CLAUDE.md"

---

## Requirements
- macOS
- [Claude Code](https://claude.ai/code)
- Homebrew (`terminal-notifier` is installed automatically)

> **Note:** macOS restricts the left-side notification icon to app bundles.
> The cat image appears on the right side of the notification.

---

## 한국어 버전
```bash
git clone -b korean https://github.com/leesohyeon96/purrfect-claude.git
```
