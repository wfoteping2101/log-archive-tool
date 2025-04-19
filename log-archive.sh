#!/bin/bash

# Check if directory argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <log-directory>"
  exit 1
fi

LOG_DIR="$1"
ARCHIVE_DIR="./archives"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
LOG_FILE="archive_log.txt"

# Check if log directory exists
if [ ! -d "$LOG_DIR" ]; then
  echo "Error: Log directory '$LOG_DIR' does not exist."
  exit 1
fi

# Create archive directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Compress the logs
tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" -C "$LOG_DIR" .

# Log the archive event
echo "Archived $LOG_DIR to $ARCHIVE_DIR/$ARCHIVE_NAME at $(date)" >> "$LOG_FILE"

echo "✅ Logs archived successfully to $ARCHIVE_DIR/$ARCHIVE_NAME"
