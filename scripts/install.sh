#!/usr/bin/env bash
set -e

REPO_URL="https://github.com/belkheertamam/global-skills.git"
DEFAULT_DIR="$HOME/.global-skills"

echo "== Global Skills Installer =="
echo "Install path? (Enter for default: $DEFAULT_DIR)"
read -r INSTALL_DIR
INSTALL_DIR="${INSTALL_DIR:-$DEFAULT_DIR}"

# Clone if missing
if [ ! -d "$INSTALL_DIR/.git" ]; then
  mkdir -p "$INSTALL_DIR"
  git clone "$REPO_URL" "$INSTALL_DIR"
else
  echo "Repo already exists at: $INSTALL_DIR"
fi

# Choose shell profile
SHELL_NAME="$(basename "${SHELL:-bash}")"
PROFILE="$HOME/.bashrc"
if [ "$SHELL_NAME" = "zsh" ]; then
  PROFILE="$HOME/.zshrc"
fi

EXPORT_LINE="export GLOBAL_SKILLS_DIR=\"$INSTALL_DIR\""

# Add/Update GLOBAL_SKILLS_DIR line safely
if grep -q '^export GLOBAL_SKILLS_DIR=' "$PROFILE" 2>/dev/null; then
  # Replace existing line
  sed -i "s|^export GLOBAL_SKILLS_DIR=.*|$EXPORT_LINE|g" "$PROFILE"
else
  echo "$EXPORT_LINE" >> "$PROFILE"
fi

# Optional: write a small info file for tools/IDEs
mkdir -p "$HOME/.config/global-skills"
cat > "$HOME/.config/global-skills/config.env" <<CFG
GLOBAL_SKILLS_DIR="$INSTALL_DIR"
CORE="$INSTALL_DIR/core"
ON_DEMAND="$INSTALL_DIR/on_demand"
MANUAL="$INSTALL_DIR/manual"
USER_CUSTOM="$INSTALL_DIR/user_custom"
CFG

echo ""
echo "Done."
echo "1) Reload your shell:"
echo "   source $PROFILE"
echo "2) Verify:"
echo "   echo \$GLOBAL_SKILLS_DIR"
echo "   ls \$GLOBAL_SKILLS_DIR"
echo "3) Optional config file created at:"
echo "   $HOME/.config/global-skills/config.env"
