#!/usr/bin/env bash
set -euo pipefail

echo "=== Super Individual Business Workflow Installer ==="
echo ""

# Detect platform
if command -v claude &>/dev/null; then
  echo "[✓] Claude Code detected"
  echo ""
  echo "Install via marketplace:"
  echo "  claude plugin marketplace add Mozi-24/super-individual-business-workflow"
  echo ""
  echo "Or manually:"
fi

SKILL_SRC="$(cd "$(dirname "$0")/.." && pwd)/.claude/skills/super-individual-business-workflow"

# Global install
GLOBAL_DIR="$HOME/.claude/skills"
mkdir -p "$GLOBAL_DIR"
if [ -d "$GLOBAL_DIR/super-individual-business-workflow" ]; then
  echo "[!] Skill already exists at $GLOBAL_DIR/super-individual-business-workflow"
else
  cp -r "$SKILL_SRC" "$GLOBAL_DIR/"
  echo "[✓] Installed globally at $GLOBAL_DIR"
fi

echo ""
echo "Done! Use /super-individual-business-workflow in Claude Code."
