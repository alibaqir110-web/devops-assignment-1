#!/bin/bash
HOST=$(hostname)
TODAY=$(date +%Y-%m-%d)

echo "Hostname: $HOST"
echo "Date: $TODAY"
echo "Current user: $(whoami)"
echo "Disk usage of /:"
df -h /
