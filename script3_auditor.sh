#!/bin/bash
# Author: BHAVYA JAIN
# Admission No: 24BCY10263

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo " Directory Audit Report"
echo "=========================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# VLC config check
VLC_CONFIG="$HOME/.config/vlc"

echo "------------------------------------------"
if [ -d "$VLC_CONFIG" ]; then
    echo "VLC Config Directory found at $VLC_CONFIG"
    ls -ld "$VLC_CONFIG"
else
    echo "VLC Config Directory not found."
fi
