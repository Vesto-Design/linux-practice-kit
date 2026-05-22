# 📄 Module 02 — File Management
# Commands covered: touch, cat, cp, mv, rm, nano, head, tail, less, echo, >  >>

═══════════════════════════════════════════════════════
 WHAT IS INSIDE THIS FOLDER?
═══════════════════════════════════════════════════════

  shopping-list.txt   → A simple list of items
  server.log          → A fake server log with 50 lines
  story.txt           → A short story (used for head/tail)
  config.txt          → A fake config file (used with cp/mv)
  notes/              → An empty folder for practice

═══════════════════════════════════════════════════════
 EXERCISE 1 — Create files with touch
═══════════════════════════════════════════════════════

  Create one file:
    touch my-notes.txt

  Create three files at once:
    touch monday.txt tuesday.txt wednesday.txt

  Check they exist:
    ls

  Create files for an entire project at once:
    touch index.html style.css script.js

═══════════════════════════════════════════════════════
 EXERCISE 2 — Read files with cat
═══════════════════════════════════════════════════════

  Read the shopping list:
    cat shopping-list.txt

  Read with line numbers:
    cat -n shopping-list.txt

  Read the log file (all 50 lines):
    cat server.log

  Read two files at once:
    cat shopping-list.txt story.txt

═══════════════════════════════════════════════════════
 EXERCISE 3 — Write to files with echo
═══════════════════════════════════════════════════════

  Print text on screen:
    echo "Hello from the terminal!"

  Write text to a new file (overwrites if exists):
    echo "My first note" > my-notes.txt

  Add another line WITHOUT deleting the first:
    echo "My second note" >> my-notes.txt
    echo "My third note" >> my-notes.txt

  Now read it:
    cat my-notes.txt

  WARNING: > overwrites. >> appends. Know the difference!

═══════════════════════════════════════════════════════
 EXERCISE 4 — Peek at files with head and tail
═══════════════════════════════════════════════════════

  See the first 10 lines of the log:
    head server.log

  See only the first 3 lines:
    head -n 3 server.log

  See the last 10 lines:
    tail server.log

  See only the last 5 lines:
    tail -n 5 server.log

  Watch a file update live (press Ctrl+C to stop):
    tail -f server.log

  TIP: tail -f is how sysadmins watch live logs on real servers.

═══════════════════════════════════════════════════════
 EXERCISE 5 — Scroll through files with less
═══════════════════════════════════════════════════════

  Open a long file in a scrollable view:
    less server.log

  Inside less:
    Arrow keys or j/k → scroll up and down
    /word             → search for a word
    n                 → jump to next search result
    q                 → quit less

═══════════════════════════════════════════════════════
 EXERCISE 6 — Copy files with cp
═══════════════════════════════════════════════════════

  Make a backup before editing:
    cp config.txt config-backup.txt

  Verify both files exist:
    ls

  Copy into a folder:
    cp shopping-list.txt notes/

  Copy an entire folder and its contents:
    cp -r notes/ notes-backup/

═══════════════════════════════════════════════════════
 EXERCISE 7 — Move and rename with mv
═══════════════════════════════════════════════════════

  Rename a file:
    mv my-notes.txt my-journal.txt

  Move a file into a folder:
    mv my-journal.txt notes/

  Move it back:
    mv notes/my-journal.txt ./

  Move and rename at the same time:
    mv my-journal.txt final-notes.txt

═══════════════════════════════════════════════════════
 EXERCISE 8 — Delete safely with rm
═══════════════════════════════════════════════════════

  Delete a single file:
    rm monday.txt

  Delete with confirmation (safe mode):
    rm -i tuesday.txt
    (It will ask: "remove tuesday.txt?" — type y then Enter)

  Delete multiple at once:
    rm wednesday.txt final-notes.txt

  Delete a folder and all its contents:
    rm -r notes-backup/

  WARNING: There is no undo. Use rm -i when not 100% sure.

═══════════════════════════════════════════════════════
 EXERCISE 9 — Edit files with nano
═══════════════════════════════════════════════════════

  Open config.txt for editing:
    nano config.txt

  Inside nano:
    Type your changes
    Ctrl + O  → Save (it asks for filename, press Enter to confirm)
    Ctrl + X  → Exit
    Ctrl + W  → Search for text inside the file
    Ctrl + K  → Cut an entire line

═══════════════════════════════════════════════════════
 DONE? Move to Module 03:
   cd ../03-search
═══════════════════════════════════════════════════════
