#!/data/data/com.termux/files/usr/bin/bash

# 🔥 Sqlsimpl.sh — Simple SQLMap Launcher by Sriram

echo -e "\033[1;31m[+] Starting Sqlsimpl Auto Scanner...\033[0m"
read -p "Enter target URL (e.g., http://site.com): " target

if [[ -z "$target" ]]; then
    echo -e "\033[1;31m[✘] Error: No target URL provided\033[0m"
    exit 1
fi

echo -e "\033[1;32m[✓] Running sqlmap on: $target\033[0m"
python3 sqlmap.py -u "$target" --batch --crawl=2
