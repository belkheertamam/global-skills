#!/usr/bin/env bash
set -e

INSTALL_DIR="$HOME/.global-skills"

echo "== Global Skills Installer =="
echo ""
echo "Installed at:"
echo "  $INSTALL_DIR"
echo ""

# Detect shell profile
if [ -n "$ZSH_VERSION" ]; then
  PROFILE="$HOME/.zshrc"
else
  PROFILE="$HOME/.bashrc"
fi

EXPORT_LINE='export GLOBAL_SKILLS_DIR="$HOME/.global-skills"'

# Add or update GLOBAL_SKILLS_DIR
if grep -q '^export GLOBAL_SKILLS_DIR=' "$PROFILE" 2>/dev/null; then
  sed -i "s|^export GLOBAL_SKILLS_DIR=.*|$EXPORT_LINE|g" "$PROFILE"
else
  echo "$EXPORT_LINE" >> "$PROFILE"
fi

echo "Global Skills has been enabled."
echo ""
echo "Now run:"
echo "  source $PROFILE"
echo ""
echo "Then verify:"
echo "  echo \$GLOBAL_SKILLS_DIR"
echo "  ls \$GLOBAL_SKILLS_DIR"
echo ""
echo "Done."
