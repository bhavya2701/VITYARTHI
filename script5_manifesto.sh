#!/bin/bash
# Author: Priyanka Priyadarshinee
# Admission No: 24BCG10069

echo "=========================================="
echo " Open Source Manifesto Generator"
echo "=========================================="

# Input
read -p "Enter one open-source tool you use daily: " TOOL
read -p "What does 'freedom' mean to you (one word)? " FREEDOM
read -p "What would you like to build and share? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Write file
echo "------------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "------------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in the power of open-source software." >> $OUTPUT
echo "Using $TOOL daily reminds me that collaboration drives innovation." >> $OUTPUT
echo "To me, freedom means $FREEDOM." >> $OUTPUT
echo "I aim to build $BUILD and share it with the community." >> $OUTPUT
echo "Open source represents transparency, learning, and growth." >> $OUTPUT

echo "" >> $OUTPUT
echo "------------------------------------------" >> $OUTPUT

# Output
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
