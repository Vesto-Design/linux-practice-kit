# 📦 Module 06 — Archive & Compression
# Commands covered: tar, zip, unzip, gzip, find (with delete)

═══════════════════════════════════════════════════════
 WHAT IS INSIDE THIS FOLDER?
═══════════════════════════════════════════════════════

  project/           → A sample project folder to compress
    ├── index.html
    ├── style.css
    ├── script.js
    ├── images/
    │   ├── logo.png  (placeholder)
    │   └── banner.png (placeholder)
    └── data/
        ├── users.json
        └── products.json

═══════════════════════════════════════════════════════
 EXERCISE 1 — Create a tar.gz archive
═══════════════════════════════════════════════════════

  Compress the project folder:
    tar -czf project-backup.tar.gz project/

  Flags explained:
    c = create archive
    z = compress with gzip
    v = verbose (show what is being added — add it to see)
    f = filename of the archive

  With verbose flag (shows each file as it's added):
    tar -czvf project-backup.tar.gz project/

  Check the file was created and see its size:
    ls -lh project-backup.tar.gz

═══════════════════════════════════════════════════════
 EXERCISE 2 — See what is inside the archive
═══════════════════════════════════════════════════════

  List contents WITHOUT extracting:
    tar -tzvf project-backup.tar.gz

  Count how many files are inside:
    tar -tzvf project-backup.tar.gz | wc -l

═══════════════════════════════════════════════════════
 EXERCISE 3 — Extract the archive
═══════════════════════════════════════════════════════

  First, remove the original folder (to simulate a restore):
    mv project/ project-original/

  Now extract from the archive:
    tar -xzvf project-backup.tar.gz

  Confirm the files are back:
    ls project/

  Extract into a specific folder:
    tar -xzvf project-backup.tar.gz -C /tmp/

  Cleanup:
    mv project-original/ project/

═══════════════════════════════════════════════════════
 EXERCISE 4 — Archive without compression
═══════════════════════════════════════════════════════

  Create a plain .tar (no gzip compression):
    tar -cf project-plain.tar project/

  Compare sizes:
    ls -lh project-backup.tar.gz project-plain.tar

  The .tar.gz will always be smaller.

═══════════════════════════════════════════════════════
 EXERCISE 5 — Create and extract a .zip
═══════════════════════════════════════════════════════

  Create a zip (if zip is installed):
    zip -r project.zip project/

  Check its contents:
    unzip -l project.zip

  Extract it:
    unzip project.zip -d project-from-zip/

  The -d flag specifies where to extract to.

═══════════════════════════════════════════════════════
 REAL WORLD USE CASE
═══════════════════════════════════════════════════════

  Archive all .log files older than 7 days:
    find . -name "*.log" -mtime +7 | tar -czvf old-logs.tar.gz -T -

  The -T - tells tar to read the file list from stdin (the pipe).
  This is a common pattern in backup scripts.

═══════════════════════════════════════════════════════
 DONE? Move to Module 07:
   cd ../07-pipes-redirect
═══════════════════════════════════════════════════════
