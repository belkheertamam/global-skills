#!/usr/bin/env bash
set -euo pipefail

INSTALL_DIR="${GLOBAL_SKILLS_DIR:-$HOME/.global-skills}"

echo "== Global Skills Installer =="
echo ""
echo "Installed at:"
echo "  $INSTALL_DIR"
echo ""

# Detect best profile file (bash/zsh)
detect_profile() {
  # If user explicitly uses zsh
  if [ -n "${ZSH_VERSION:-}" ]; then
    echo "$HOME/.zshrc"
    return
  fi

  # If bash
  if [ -n "${BASH_VERSION:-}" ]; then
    # Prefer ~/.bashrc on Linux, ~/.bash_profile on macOS (commonly used)
    if [ -f "$HOME/.bashrc" ]; then
      echo "$HOME/.bashrc"
    else
      echo "$HOME/.bash_profile"
    fi
    return
  fi

  # Fallback
  if [ -f "$HOME/.zshrc" ]; then
    echo "$HOME/.zshrc"
  elif [ -f "$HOME/.bashrc" ]; then
    echo "$HOME/.bashrc"
  else
    echo "$HOME/.profile"
  fi
}

PROFILE="$(detect_profile)"

# Normalize to fixed location (repo policy)
EXPORT_LINE="export GLOBAL_SKILLS_DIR=\"$HOME/.global-skills\""

# Portable in-place sed (GNU vs BSD/macOS)
sedi() {
  if sed --version >/dev/null 2>&1; then
    sed -i "$@"
  else
    # macOS/BSD sed requires a backup extension (empty is ok)
    sed -i '' "$@"
  fi
}

# Ensure profile exists
touch "$PROFILE"

# Add or update GLOBAL_SKILLS_DIR
if grep -qE '^export GLOBAL_SKILLS_DIR=' "$PROFILE" 2>/dev/null; then
  # Replace any existing export line
  sedi "s|^export GLOBAL_SKILLS_DIR=.*|$EXPORT_LINE|g" "$PROFILE"
else
  # Add with newline safety
  echo "" >> "$PROFILE"
  echo "$EXPORT_LINE" >> "$PROFILE"
fi

echo "Global Skills has been enabled."
echo ""
echo "Now run:"
echo "  source \"$PROFILE\""
echo ""
echo "Then verify:"
echo "  echo \$GLOBAL_SKILLS_DIR"
echo "  ls \"\$GLOBAL_SKILLS_DIR\""
echo ""
echo "Done."
