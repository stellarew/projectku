#!/bin/bash

# Lokasi project
PROJECT_DIR="$HOME/Projects"

cd "$PROJECT_DIR" || exit

# Loop semua folder project
for folder in $(ls -d */); do
  cd "$PROJECT_DIR/$folder" || continue

  # Cek apakah folder ini repo git
  if [ -d ".git" ]; then
    echo ">>> Update $folder ..."
    git add .
    git commit -m "Auto-backup $(date '+%Y-%m-%d %H:%M:%S')" >/dev/null 2>&1
    git push >/dev/null 2>&1
  fi
done
