#!/bin/bash
# Backup script — runs every Sunday at 2am via cron
echo "Starting backup..."
tar -czf /tmp/backup-$(date +%Y%m%d).tar.gz /home/
echo "Backup complete."
