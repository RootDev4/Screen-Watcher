#!/bin/bash

# --- configuration ---
INTERVAL=0.5
REGION="0,0,600,300"   # keep this SMALL
TMP_FILE="/tmp/screen_watch_current.png"
LAST_HASH=""

echo "Screen watcher started..."

while true; do
  # Capture without sound or preview
  screencapture -x -R$REGION "$TMP_FILE"

  # Hash image file
  CURRENT_HASH=$(md5 -q "$TMP_FILE")

  if [ "$CURRENT_HASH" != "$LAST_HASH" ]; then
    TIMESTAMP=$(date +"%Y%m%d_%H%M%S_%3N")
    cp "$TMP_FILE" "screenshot_$TIMESTAMP.png"

    echo "Change detected at $TIMESTAMP"

    LAST_HASH=$CURRENT_HASH
  fi

  sleep $INTERVAL
done
