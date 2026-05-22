# ✂️  Module 04 — Text & Data Processing
# Commands covered: sort, uniq, cut, awk, sed, tee, pipe |, redirect > >>

═══════════════════════════════════════════════════════
 WHAT IS INSIDE THIS FOLDER?
═══════════════════════════════════════════════════════

  scores.txt         → Student names and exam scores
  fruits.txt         → A list with intentional duplicates
  employees.csv      → Same CSV from Module 03 (for awk/cut)
  words.txt          → A paragraph of words for counting

═══════════════════════════════════════════════════════
 EXERCISE 1 — Sort lists with sort
═══════════════════════════════════════════════════════

  Sort the fruits list alphabetically:
    sort fruits.txt

  Sort in reverse:
    sort -r fruits.txt

  Sort the scores numerically:
    sort -k2 -n scores.txt

  Sort numerically AND in reverse (highest score first):
    sort -k2 -n -r scores.txt

  Sort the employee CSV by salary (column 4):
    sort -t',' -k4 -n employees.csv

═══════════════════════════════════════════════════════
 EXERCISE 2 — Remove duplicates with uniq
═══════════════════════════════════════════════════════

  First: uniq only works on CONSECUTIVE duplicates.
  Always sort first!

  Sort then remove duplicates:
    sort fruits.txt | uniq

  Sort, remove duplicates, AND count occurrences:
    sort fruits.txt | uniq -c

  Sort the count from most to least common:
    sort fruits.txt | uniq -c | sort -rn

  Show only the lines that appear MORE than once:
    sort fruits.txt | uniq -d

═══════════════════════════════════════════════════════
 EXERCISE 3 — Extract columns with cut
═══════════════════════════════════════════════════════

  Extract only the Name column (column 1) from CSV:
    cut -d',' -f1 employees.csv

  Extract Name and City (columns 1 and 2):
    cut -d',' -f1,2 employees.csv

  Extract the Role column (column 3):
    cut -d',' -f3 employees.csv

  Get a list of unique roles:
    cut -d',' -f3 employees.csv | sort | uniq

  Extract first 5 characters of every line:
    cut -c1-5 scores.txt

═══════════════════════════════════════════════════════
 EXERCISE 4 — Extract columns with awk
═══════════════════════════════════════════════════════

  Print only the first column of scores.txt:
    awk '{print $1}' scores.txt

  Print column 1 and column 2 (name and score):
    awk '{print $1, $2}' scores.txt

  Print only rows where score is above 80:
    awk '$2 > 80 {print $1, $2}' scores.txt

  Use comma as separator for CSV:
    awk -F',' '{print $1, $4}' employees.csv

  Calculate average score:
    awk '{sum += $2} END {print "Average:", sum/NR}' scores.txt

═══════════════════════════════════════════════════════
 EXERCISE 5 — Find and replace with sed
═══════════════════════════════════════════════════════

  Preview a replacement (does NOT change the file):
    sed 's/Mango/Papaya/g' fruits.txt

  Replace and save to a NEW file:
    sed 's/Mango/Papaya/g' fruits.txt > fruits-updated.txt

  Replace IN the file (modifies the actual file):
    sed -i 's/Apple/Avocado/g' fruits-updated.txt

  Replace in file BUT keep a backup (.bak) first:
    sed -i.bak 's/Banana/Blueberry/g' fruits-updated.txt
    ls (you will see fruits-updated.txt and fruits-updated.txt.bak)

  Print only lines 3 to 7:
    sed -n '3,7p' scores.txt

  Delete lines that contain a specific word:
    sed '/Orange/d' fruits.txt

═══════════════════════════════════════════════════════
 EXERCISE 6 — Pipe commands together  |
═══════════════════════════════════════════════════════

  The pipe | sends output of one command into the next.

  Show only Engineer employees sorted by name:
    grep "Engineer" employees.csv | sort

  Find top 3 highest paid employees:
    sort -t',' -k4 -n -r employees.csv | head -n 4

  Count employees in each city:
    cut -d',' -f2 employees.csv | sort | uniq -c | sort -rn

  Find all WARN and ERROR lines, count them:
    grep -E "WARN|ERROR" ../03-search/server.log | wc -l

  See the 5 most common words in the story:
    cat ../02-files/story.txt | tr ' ' '\n' | sort | uniq -c | sort -rn | head -5

═══════════════════════════════════════════════════════
 EXERCISE 7 — Redirect output  >  >>  and tee
═══════════════════════════════════════════════════════

  Save sorted employees to a new file:
    sort -t',' -k1 employees.csv > sorted-employees.csv

  Append a new line to the CSV:
    echo "Zoe Adams,London,Developer,74000,Engineering" >> sorted-employees.csv

  Show AND save at the same time with tee:
    sort fruits.txt | tee sorted-fruits.txt

  Append to a log file with tee:
    echo "Job finished at $(date)" | tee -a job.log

═══════════════════════════════════════════════════════
 DONE? Move to Module 05:
   cd ../05-permissions
═══════════════════════════════════════════════════════
