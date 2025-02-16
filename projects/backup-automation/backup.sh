#!/bin/bash
# set -x
BACKUP_DIR="backup"
TIMESTAMP=$(date +%Y%m%d%H%M%S)
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"
BACKUP_PATH="$BACKUP_DIR/$BACKUP_FILE"
SOURCE_DIR="/var/www/html"

mkdir -p "$BACKUP_DIR" || { echo "Error: Failed to create backup directory $BACKUP_DIR"; exit 1; }
echo "Backup Directory $BACKUP_DIR"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source Directory $SOURCE_DIR does not exist. Backup aborted."
    exit 1
fi

echo "Source directory $SOURCE_DIR exists. Proceeding with backup..."

tar -czf $BACKUP_PATH $SOURCE_DIR --absolute-names . && echo "Backup successfully: $BACKUP_PATH" || { echo "Backup failed"; exit 1; }