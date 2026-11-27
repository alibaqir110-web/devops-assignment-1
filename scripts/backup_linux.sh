#!/bin/bash
SOURCE="$HOME/assignment/linux"
DEST="$HOME/assignment/backups"
TIMESTAMP=$(date +%Y-%m-%d-%H%M)

if [ ! -d "$SOURCE" ]; then
    echo "Error: source folder $SOURCE does not exist"
    exit 1
fi

mkdir -p "$DEST"
tar -czf "$DEST/linux-$TIMESTAMP.tar.gz" -C "$HOME/assignment" linux
echo "Backup saved: $DEST/linux-$TIMESTAMP.tar.gz"
