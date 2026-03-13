#!/bin/bash

LOG_FILE="$HOME/Desktop/AutoGit/logs.log"
TODAY=$(date '+%Y-%m-%d')

# Se já foi executado hoje, sai
if grep -q "$TODAY" "$LOG_FILE"; then
    echo "Já foi executado hoje. Saindo..."
    exit 0
else
    echo "$TODAY" >> "$LOG_FILE" &&
    cd "$HOME/Desktop/AutoGit" &&
    git add . &&
    git commit -m "Auto commit $(date '+%Y-%m-%d %H:%M:%S')" &&
    git push
fi
