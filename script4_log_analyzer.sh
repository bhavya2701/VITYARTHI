#!/bin/bash
# Author: BHAVYA JAIN
# Admission No: 24BCY10263

# Check argument
if [ -z "$1" ]; then
    echo "Usage: ./script4_log_analyzer.sh <logfile> [keyword]"
    exit 1
fi

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Check file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found."
    exit 1
fi

# Check empty file
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File is empty."
    exit 1
fi

# Count keyword occurrences
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "------------------------------------------"

# Show last 5 matches
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
