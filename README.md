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
```bash
pkg install git python -y
git clone https://github.com/sunnamsriram1/Sqlsimpl
cd Sqlsimpl/sqlmap
chmod +x Sqlsimpl.sh
./Sqlsimpl.sh
