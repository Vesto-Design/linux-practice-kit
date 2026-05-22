# 🔍 Module 03 — Search Commands
# Commands covered: grep, find, which, wc

═══════════════════════════════════════════════════════
 WHAT IS INSIDE THIS FOLDER?
═══════════════════════════════════════════════════════

  employees.csv      → 30 employee records (name, city, salary, role)
  server.log         → A server log with INFO, WARN, ERROR lines
  reports/           → 5 monthly report files
  scripts/           → 3 shell script files to practice find

═══════════════════════════════════════════════════════
 EXERCISE 1 — Search text with grep
═══════════════════════════════════════════════════════

  Find all ERROR lines in the log:
    grep "ERROR" server.log

  Case-insensitive search:
    grep -i "error" server.log

  Show line numbers with matches:
    grep -n "WARN" server.log

  Count how many ERROR lines:
    grep -c "ERROR" server.log

  Show 2 lines around each match (context):
    grep -C 2 "Out of memory" server.log

  Show lines that do NOT contain INFO:
    grep -v "INFO" server.log

  Search across ALL report files at once:
    grep -r "revenue" reports/

  Find employees in London from the CSV:
    grep "London" employees.csv

═══════════════════════════════════════════════════════
 EXERCISE 2 — Locate files with find
═══════════════════════════════════════════════════════

  Find all .txt files:
    find . -name "*.txt"

  Find only files (no folders):
    find . -type f

  Find only folders:
    find . -type d

  Find all .sh scripts:
    find . -name "*.sh"

  Create 20 test files, find, then delete them:
    touch testfile-{001..020}.txt
    find . -name "testfile-*"
    find . -name "testfile-*" -delete

═══════════════════════════════════════════════════════
 EXERCISE 3 — Count things with wc
═══════════════════════════════════════════════════════

  Count lines in the log:
    wc -l server.log

  Count words in a report:
    wc -w reports/jan-report.txt

  Count how many files are in reports/:
    ls reports/ | wc -l

  Count how many ERROR lines exist:
    grep "ERROR" server.log | wc -l

═══════════════════════════════════════════════════════
 EXERCISE 4 — Find commands with which
═══════════════════════════════════════════════════════

  which bash
  which python3
  which git
  which node

  If nothing is returned, that program is not installed.

═══════════════════════════════════════════════════════
 DONE? Move to Module 04:
   cd ../04-text
═══════════════════════════════════════════════════════
