#!/data/data/com.termux/files/usr/bin/bash
# 🔍 Sqlsimpl.sh — Auto SQLMap Crawler + URL Extractor
# 🧠 Coded by Sriram | GitHub: https://github.com/sunnamsriram1
# 📦 Requirement: sqlmap in the same folder (e.g., ~/SqlmapS/sqlmap/sqlmap.py)

# 🎨 Colors
GREEN="\033[1;32m"
RED="\033[1;31m"
CYAN="\033[1;36m"
YELLOW="\033[1;33m"
NC="\033[0m" # No color

clear
echo -e "${CYAN}🛡️ Simple SQLMap Auto-Crawler Script — Coded by Sriram${NC}"
echo -e "${YELLOW}🔗 Enter target URL (e.g., http://site.com): ${NC}"
read target

# ✅ Validate input
if [[ -z "$target" ]]; then
    echo -e "${RED}[✘] No URL entered! Exiting...${NC}"
    exit 1
fi

# 📁 Output files
OUTFILE="crawled_urls.txt"
TMPFILE="tmp_sqlmap_output.txt"

# 🕷️ Crawl with sqlmap
echo -e "${GREEN}[✓] Crawling: $target using sqlmap...${NC}"
python3 sqlmap.py -u "$target" --crawl=2 --batch > "$TMPFILE" 2>&1

# 🔍 Extract query parameter URLs (id, nid, cat, pid, etc.)
echo -e "${YELLOW}[i] Extracting URLs with parameters from SQLMap output...${NC}"
grep -oE 'http[s]?://[^ ]+\?(id|nid|pid|page|cat|newsid)=[^ ]+' "$TMPFILE" | sort -u > "$OUTFILE"

# ✅ Result summary
if [[ -s "$OUTFILE" ]]; then
    echo -e "${GREEN}[✓] Extracted URLs saved to: $OUTFILE${NC}"
    cat "$OUTFILE"
else
    echo -e "${RED}[✘] No vulnerable-style URLs found.${NC}"
fi

# 🧹 Clean up
rm "$TMPFILE"
