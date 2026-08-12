
#!/bin/bash

# === CONFIGURABLE ===
SOURCE_FOLDER="/data2/secretary/share"
MEGA_REMOTE="mega"
MEGA_FOLDER="backup_secreatry"
LOG_DIR="/root/log"
DATE=$(date '+%d-%m-%Y')
TIME=$(date '+%Y-%m-%d %H:%M:%S')
LOG_FILE="$LOG_DIR/$DATE-backup_sec.log"

# === PREPARE LOG FOLDER ===
#mkdir -p "$LOG_DIR"

# === START BACKUP ===
echo "[$TIME] Starting incremental backup from $SOURCE_FOLDER to $MEGA_REMOTE:/$MEGA_FOLDER" >> "$LOG_FILE"

rclone copy "$SOURCE_FOLDER" "$MEGA_REMOTE:/$MEGA_FOLDER" \
   --progress \
   --log-file="$LOG_FILE" \
   --log-level INFO \
   --update \
   --create-empty-src-dirs \
   --exclude '*.tmp' \
   --exclude '*.lock' \
   --ignore-errors

if [ $? -eq 0 ]; then
   echo "[$(date '+%Y-%m-%d %H:%M:%S')] Backup completed successfully" >> "$LOG_FILE"
else
   echo "[$(date '+%Y-%m-%d %H:%M:%S')] Backup failed!" >> "$LOG_FILE"
fi
                   






















