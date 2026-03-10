#!/bin/bash

LOG_FILE="$HOME/git_auto_commit.log"
TODAY=$(date '+%Y-%m-%d %H:%M:%S')

# Se já foi executado hoje, sai
if grep -q "$TODAY" "$LOG_FILE"; then
    echo "Já foi executado hoje. Saindo..."
    exit 0
else
    cd "$HOME/Desktop/AutoGit" &&
    git add . &&
    git commit -m "Auto commit $(date '+%Y-%m-%d %H:%M:%S')" &&
    git push &&
    echo "$TODAY" >> "$LOG_FILE"
fi
