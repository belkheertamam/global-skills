GLOBAL SKILLS
=

A simple, shared **global skills library** that works with **any IDE** and **any project**
using one stable location on your computer.

You install it **once** — then reuse it **everywhere**.

------------------------------------

WHAT IS THIS?
-------------

- One global folder for skills
- Works with any editor or IDE
- Easy to install
- Easy to link to projects
- No copying files between projects

------------------------------------

FOLDER STRUCTURE
----------------

global-skills/
- core/            ALWAYS active skills
- on_demand/       Skills used ONLY when needed
- manual/          Skills used MANUALLY only
- user_custom/     Your personal local skills
  - core/
  - on_demand/
  - manual/
- scripts/
- README.md

------------------------------------

INSTALLATION (VERY EASY)
------------------------

**STEP 1: DOWNLOAD THE LIBRARY**

Open your terminal and run:

git clone https://github.com/belkheertamam/global-skills.git ~/.global-skills

This downloads the library into a fixed location on your computer:

~/.global-skills

------------------------------------

**STEP 2: INSTALL, RELOAD, AND VERIFY (ONE TIME ONLY)**

Run:

bash ~/.global-skills/scripts/install.sh

After installation finishes, the terminal will tell you to reload your shell.
Run the command shown, for example:

source ~/.bashrc  
(or `source ~/.zshrc` if you use zsh)

Then verify:

echo $GLOBAL_SKILLS_DIR

You should see a path like:

/home/your-user/.global-skills

✅ Global Skills is now enabled on your machine.

------------------------------------

USING GLOBAL SKILLS IN A PROJECT
--------------------------------

Each project links to Global Skills using a small environment file.
No IDE settings are required.

**STEP 1: GO TO YOUR PROJECT FOLDER**

cd my-project

------------------------------------

**STEP 2: LINK THE PROJECT TO GLOBAL SKILLS**

Run:

bash ~/.global-skills/scripts/link-project-to-global-skills.sh

This creates a file in your project:

.global-skills.env

This file tells any IDE or tool where the global skills live.

⚠️ IMPORTANT:
This file is **user-specific** and may contain local paths.
If you do NOT want to push it to your project repository, add this to your `.gitignore`:

.global-skills.env

------------------------------------

USER CUSTOM SKILLS
------------------

`user_custom/` is for **your own personal skills**.

- These skills stay **local**
- They are **not pushed to Git**
- Each user can freely experiment

Structure:

user_custom/
- core        Always available personal skills
- on_demand   Personal skills used by context
- manual      Personal skills used manually only

------------------------------------

SKILL CATEGORIES
----------------

core/
ALWAYS active. Safe and useful everywhere.

on_demand/
Used ONLY when the situation requires it.

manual/
NEVER auto-used.
Accessible only when explicitly invoked.

user_custom/
Local personal extensions of the system.

------------------------------------

SUMMARY
--------

- Install once
- Use everywhere
- Works with any IDE
- Linked to projects via a simple env file
- No duplication inside projects
- Clean and simple structure
- Beginner-friendly
- Future-proof
