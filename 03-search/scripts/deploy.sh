#!/bin/bash
# Deploy script — pull latest code and restart services
echo "Pulling latest code..."
git pull origin main
echo "Restarting application..."
systemctl restart myapp
echo "Deployment done."
