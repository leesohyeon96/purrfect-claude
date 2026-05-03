#!/bin/bash
set -e

echo ""
echo "  /\_/\  "
echo " ( o.o ) "
echo "  > ^ <  purrfect-claude installer"
echo ""

# Check dependencies
if ! command -v brew &>/dev/null; then
  echo "❌ Homebrew not found. Install it first: https://brew.sh"
  exit 1
fi

if ! command -v terminal-notifier &>/dev/null; then
  echo "📦 Installing terminal-notifier..."
  brew install terminal-notifier
fi

# Create directories
mkdir -p ~/.claude/assets
mkdir -p ~/.claude/commands

# Copy files (merge, don't overwrite existing settings)
echo "📁 Copying files..."

cp CLAUDE.md ~/.claude/CLAUDE.md
cp commands/show-global-config.md ~/.claude/commands/show-global-config.md

# Copy default icon only if none exists
if [ ! -f ~/.claude/assets/icon.png ]; then
  cp assets/icon.png ~/.claude/assets/icon.png
  echo "🐱 Default cat icon installed. Replace ~/.claude/assets/icon.png with your own!"
else
  echo "🐱 Icon already exists — skipping. (replace ~/.claude/assets/icon.png to customize)"
fi

# Merge settings.json
if [ ! -f ~/.claude/settings.json ] || [ "$(cat ~/.claude/settings.json)" = "{}" ]; then
  cp settings.json ~/.claude/settings.json
  echo "⚙️  settings.json installed."
else
  echo "⚠️  ~/.claude/settings.json already exists — skipping. Merge manually if needed."
fi

echo ""
echo "✅ Done! Restart Claude Code to apply changes."
echo "   Run /show-global-config to see your setup."
echo ""
