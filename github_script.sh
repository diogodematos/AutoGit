#!/bin/bash

LOG_FILE="$HOME/git_auto_commit.log"
TODAY=$(date '+%Y-%m-%d')

# Se já foi executado hoje, sai
#if grep -q "$TODAY" "$LOG_FILE"; then
#    echo "Já foi executado hoje. Saindo..."
#    exit 0
#fi

# Executa os comandos Git
echo "$TODAY" >> "logs.log"
git add .
git commit -m "Auto commit $(date '+%Y-%m-%d %H:%M:%S')"
git push

# Registra a execução
#echo "$TODAY" >> "$LOG_FILE"
