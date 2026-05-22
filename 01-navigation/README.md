# 📂 Module 01 — Navigation Commands
# Commands covered: pwd, ls, cd, mkdir, rmdir

═══════════════════════════════════════════════════════
 WHAT IS INSIDE THIS FOLDER?
═══════════════════════════════════════════════════════

  cities.txt         → A real list of city names
  projects/          → A ready-made nested folder tree
    ├── webapp/
    │   ├── src/
    │   │   ├── index.js
    │   │   └── App.js
    │   └── public/
    │       └── index.html
    └── api/
        └── routes/
            ├── users.js
            └── products.js

═══════════════════════════════════════════════════════
 EXERCISE 1 — Find where you are
═══════════════════════════════════════════════════════

  Type this and hit Enter:
    pwd

  What you will see:
    /home/yourname/linux-practice-kit/01-navigation

  The terminal is telling you: "This is where you are right now."

═══════════════════════════════════════════════════════
 EXERCISE 2 — See what is inside a folder
═══════════════════════════════════════════════════════

  Basic list:
    ls

  Detailed list (with permissions, sizes, dates):
    ls -l

  Show HIDDEN files too (files starting with a dot):
    ls -la

  Human-readable sizes (KB, MB, GB):
    ls -lh

  Try all four. Notice how each one shows more information.

═══════════════════════════════════════════════════════
 EXERCISE 3 — Move around the folder tree
═══════════════════════════════════════════════════════

  Step into the projects folder:
    cd projects

  Confirm where you are:
    pwd

  Go deeper into webapp/src:
    cd webapp/src

  Check again:
    pwd

  Go one folder back (up to webapp):
    cd ..

  Jump all the way back to your home folder:
    cd ~

  Go back to where you just came from (toggle):
    cd -

  TIP: cd - is like the "back" button in a browser.
       Press it again to go forward.

═══════════════════════════════════════════════════════
 EXERCISE 4 — Create and remove folders
═══════════════════════════════════════════════════════

  Create one folder:
    mkdir my-project

  Create a full nested structure in one command:
    mkdir -p my-project/src/components

  See the whole tree:
    ls -R my-project

  Remove the deepest empty folder:
    rmdir my-project/src/components

  Remove a folder and everything inside it:
    rm -r my-project

═══════════════════════════════════════════════════════
 KEYBOARD SHORTCUTS used in this module
═══════════════════════════════════════════════════════

  Tab          → Auto-complete folder/file names (try: cd pro + Tab)
  Up Arrow     → Repeat the last command you typed
  Ctrl + L     → Clear the screen (same as the clear command)
  Ctrl + C     → Cancel a running command

═══════════════════════════════════════════════════════
 DONE? Move to Module 02:
   cd ../02-files
═══════════════════════════════════════════════════════
