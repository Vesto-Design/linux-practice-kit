# 🔐 Module 05 — Permissions
# Commands covered: chmod, chown, sudo, su, groups, ls -l (reading permissions)

═══════════════════════════════════════════════════════
 WHAT IS INSIDE THIS FOLDER?
═══════════════════════════════════════════════════════

  secret.txt         → A private file (read-only)
  public.txt         → A world-readable file
  run-me.sh          → A script that needs execute permission
  read-permissions.md→ Guide to understanding the permission string

═══════════════════════════════════════════════════════
 HOW TO READ PERMISSIONS
═══════════════════════════════════════════════════════

  Run: ls -la

  You will see something like:
    -rwxr-xr-- 1 alice staff 1024 Jan 15 run-me.sh

  The permission string = -rwxr-xr--
  Break it down:

    Position 1   = file type  (- = file, d = directory)
    Positions 2-4 = OWNER     (r=read, w=write, x=execute)
    Positions 5-7 = GROUP     (r=read, w=write, x=execute)
    Positions 8-10 = OTHERS   (r=read, w=write, x=execute)

  So -rwxr-xr-- means:
    Owner : read + write + execute  (rwx)
    Group : read + execute          (r-x)
    Others: read only               (r--)

  The numbers (chmod):
    4 = read
    2 = write
    1 = execute
    Add them: 7 = all, 6 = read+write, 5 = read+execute, 4 = read only

═══════════════════════════════════════════════════════
 EXERCISE 1 — View current permissions
═══════════════════════════════════════════════════════

  ls -la

  Look at the permission column on the left.
  Notice the difference between .sh files and .txt files.

═══════════════════════════════════════════════════════
 EXERCISE 2 — Make a script executable with chmod
═══════════════════════════════════════════════════════

  Try to run the script (will fail — no permission):
    ./run-me.sh

  Add execute permission:
    chmod +x run-me.sh

  Now run it:
    ./run-me.sh

  Check the change:
    ls -la run-me.sh
    (The x will now appear in the permission string)

═══════════════════════════════════════════════════════
 EXERCISE 3 — chmod with numbers
═══════════════════════════════════════════════════════

  Owner only — read and write (private file):
    chmod 600 secret.txt
    ls -la secret.txt     → -rw------- (only owner can read)

  Standard file — owner read/write, others read:
    chmod 644 public.txt
    ls -la public.txt     → -rw-r--r--

  Standard executable:
    chmod 755 run-me.sh
    ls -la run-me.sh      → -rwxr-xr-x

  Apply to entire folder recursively:
    chmod -R 755 ../03-search/scripts/
    ls -la ../03-search/scripts/

═══════════════════════════════════════════════════════
 EXERCISE 4 — Check who you are and your groups
═══════════════════════════════════════════════════════

  Who am I logged in as?
    whoami

  What groups do I belong to?
    groups

  Detailed user info (user ID, group IDs):
    id

═══════════════════════════════════════════════════════
 EXERCISE 5 — sudo (run as administrator)
═══════════════════════════════════════════════════════

  Check if you can use sudo:
    sudo whoami
    (Should print: root)

  View a protected system file:
    sudo cat /etc/shadow
    (On most systems this requires sudo)

  Re-run the previous command with sudo:
    sudo !!

  REMEMBER: With great power comes great responsibility.
  Always double-check before running sudo commands.

═══════════════════════════════════════════════════════
 DONE? Move to Module 06:
   cd ../06-archive
═══════════════════════════════════════════════════════
