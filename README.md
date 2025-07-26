# 🔍 Sqlsimpl.sh — SQLMap Auto Crawler Script

**Auto crawl and extract URLs with query parameters for SQL injection testing.**

## ✨ Features
- Crawl a target website using SQLMap
- Extract URLs with `?id=`, `?nid=`, `?page=`, etc.
- Save all found URLs to `crawled_urls.txt`
- Works in Termux (Android)
- Easy to integrate into larger automation pipelines

## 📦 Requirements
- Python 3
- [SQLMap](https://github.com/sqlmapproject/sqlmap) cloned into the same folder

## 🚀 Usage (Termux)


🎯 **Auto SQLMap Scanner with Simple Interface** — Built by [Sriram]

## 📦 Installation in Termux

```
# Step 1: Install dependencies
pkg install git python -y

# Step 2: Clone your wrapper + script repo
git clone https://github.com/sunnamsriram1/Sqlsimpl

# Step 3: Go into the folder
cd Sqlsimpl

# Step 4: Clone sqlmap official tool into this folder
git clone https://github.com/sqlmapproject/sqlmap

# Step 5: Move your script into sqlmap folder (assuming Sqlsimpl.sh exists in Sqlsimpl root)
mv Sqlsimpl.sh sqlmap/

# Step 6: Go into sqlmap directory
cd sqlmap

# Step 7: Give execute permissions to the wrapper script
chmod +x Sqlsimpl.sh

# Step 8: Run your custom wrapper script
./Sqlsimpl.sh

```
