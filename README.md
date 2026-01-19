# global-skills
# global-skills

A portable global skills library.

## Folders
- core/        : Always enabled
- on_demand/   : Context-based
- manual/      : Manually invoked only
- user_custom/ : User custom skills (shared examples allowed)

## Install (Linux/macOS)
1) Clone to a stable path:
   ~/.global-skills

2) Enable globally (recommended):
   export GLOBAL_SKILLS_DIR="$HOME/.global-skills"

3) IDEs should point to:
   $GLOBAL_SKILLS_DIR/core
   $GLOBAL_SKILLS_DIR/on_demand
   (manual and user_custom are optional)
