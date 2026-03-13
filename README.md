# Auto Commit Script

This repository contains a simple **Bash** script (`script.sh`) that automates daily Git commits. Every time you open your terminal, the script checks if a commit has already been made today — if not, it automatically creates one with the current date.

## 🧩 How it works

1. When your terminal starts, `github_script.sh` runs automatically.
2. The script reads the `logs.log` file, which stores the dates of previous commits.
3. If today’s date is not found in `logs.log`, the script:
   - Runs `git add` for all changes.
   - Creates a new commit with the current date in the message.
   - Updates `logs.txt` with this new date.
4. This keeps your repository active with daily commits — no manual work required!
