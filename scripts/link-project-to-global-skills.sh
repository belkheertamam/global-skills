#!/usr/bin/env bash
set -e

if [ -z "${GLOBAL_SKILLS_DIR:-}" ]; then
  echo "ERROR: GLOBAL_SKILLS_DIR is not set."
  echo "Run: bash ~/.global-skills/scripts/install.sh"
  echo "Then: source ~/.bashrc (or ~/.zshrc)"
  exit 1
fi

TARGET_FILE=".global-skills.env"

GS="$GLOBAL_SKILLS_DIR"
UC="$GLOBAL_SKILLS_DIR/user_custom"

cat > "$TARGET_FILE" <<CFG
# Auto-generated. Do not edit unless you know what you're doing.

# Root
GLOBAL_SKILLS_DIR="$GS"
USER_CUSTOM_DIR="$UC"

# AUTO-LOADED (recommended)
GLOBAL_CORE="$GS/core"
GLOBAL_ON_DEMAND="$GS/on_demand"

USER_CUSTOM_CORE="$UC/core"
USER_CUSTOM_ON_DEMAND="$UC/on_demand"

# MANUAL-ONLY (do NOT auto-load)
GLOBAL_MANUAL="$GS/manual"
USER_CUSTOM_MANUAL="$UC/manual"
CFG

echo "Created $TARGET_FILE in: $(pwd)"
echo ""
echo "AUTO-LOADED paths:"
echo "  GLOBAL_CORE=$GS/core"
echo "  GLOBAL_ON_DEMAND=$GS/on_demand"
echo "  USER_CUSTOM_CORE=$UC/core"
echo "  USER_CUSTOM_ON_DEMAND=$UC/on_demand"
echo ""
echo "MANUAL-ONLY paths:"
echo "  GLOBAL_MANUAL=$GS/manual"
echo "  USER_CUSTOM_MANUAL=$UC/manual"
