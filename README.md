====================================
GLOBAL SKILLS
====================================

A simple, shared **global skills library** that works with **any IDE** and **any project**
using one stable location on your computer.

You install it **once** — then reuse it **everywhere**.

------------------------------------

WHAT IS THIS?
--------------

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

**STEP 2: ENABLE IT GLOBALLY (ONE TIME ONLY)**

Run:

bash ~/.global-skills/scripts/install.sh

Then reload your terminal:

source ~/.bashrc

If you use zsh, run instead:

source ~/.zshrc

------------------------------------

**STEP 3: CHECK THAT IT WORKED**

Run:

echo $GLOBAL_SKILLS_DIR

You should see something like:

/home/your-user/.global-skills

✅ Done.

Global Skills is now enabled on your machine.

------------------------------------

USING GLOBAL SKILLS IN A PROJECT
--------------------------------

**STEP 1: GO TO YOUR PROJECT FOLDER**

cd my-project

------------------------------------

**STEP 2: LINK THE PROJECT TO GLOBAL SKILLS**

Run:

bash ~/.global-skills/scripts/link-project-to-global-skills.sh

This creates a file in your project called:

.global-skills.env

This file tells **any IDE or tool** where the global skills live.

You do **NOT** need to configure IDE settings manually.

------------------------------------

RECOMMENDED IDE USAGE (FAST & SAFE)
-----------------------------------

For best performance, IDEs should load ONLY:

- $GLOBAL_SKILLS_DIR/core
- $GLOBAL_SKILLS_DIR/on_demand

Avoid loading:

- manual/
- user_custom/

Unless you explicitly need them.

------------------------------------

USER CUSTOM SKILLS (OPTIONAL)
----------------------------

user_custom/ is for **your own personal skills**.

- These skills stay **local**
- They are **NOT pushed to Git**
- You are free to experiment

Structure:

user_custom/
- core/
- on_demand/
- manual/

This keeps personal work separate from shared skills.

------------------------------------

SKILL CATEGORIES
--------------------------------

core/
ALWAYS active. Safe and useful everywhere.

on_demand/
Used ONLY when the situation requires it.

manual/
NEVER auto-used. Only when you call it manually.

user_custom/
Your own local skills.

------------------------------------

SUMMARY
--------

- Install once
- Use everywhere
- Works with any IDE
- No duplication inside projects
- Clean and simple structure
- Beginner-friendly
- Future-proof
