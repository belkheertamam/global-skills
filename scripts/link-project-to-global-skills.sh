#!/usr/bin/env bash
set -e

if [ -z "${GLOBAL_SKILLS_DIR:-}" ]; then
  echo "ERROR: GLOBAL_SKILLS_DIR is not set."
  echo "Run: bash ~/.global-skills/scripts/install.sh ثم: source ~/.bashrc أو ~/.zshrc"
  exit 1
fi

TARGET_FILE=".global-skills.env"

cat > "$TARGET_FILE" <<CFG
# Auto-generated. Do not edit unless you know what you're doing.
GLOBAL_SKILLS_DIR="$GLOBAL_SKILLS_DIR"

CORE="$GLOBAL_SKILLS_DIR/core"
ON_DEMAND="$GLOBAL_SKILLS_DIR/on_demand"
MANUAL="$GLOBAL_SKILLS_DIR/manual"
USER_CUSTOM="$GLOBAL_SKILLS_DIR/user_custom"
CFG

echo "Created $TARGET_FILE in: $(pwd)"
echo "Paths:"
echo "  CORE=$GLOBAL_SKILLS_DIR/core"
echo "  ON_DEMAND=$GLOBAL_SKILLS_DIR/on_demand"
echo "  MANUAL=$GLOBAL_SKILLS_DIR/manual"
echo "  USER_CUSTOM=$GLOBAL_SKILLS_DIR/user_custom"
