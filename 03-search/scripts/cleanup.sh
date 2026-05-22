#!/bin/bash
# Cleanup old log files older than 30 days
find /var/log -name "*.log" -mtime +30 -delete
echo "Old logs cleaned up."
