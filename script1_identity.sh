#!/bin/bash
# Author: BHAVYA JAIN
# Admission No: 24BCY10263

STUDENT_NAME="BHAVYA JAIN"
SOFTWARE_CHOICE="VLC Media Player"

# Safer OS detection
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
CURRENT_TIME=$(date)

echo "=========================================="
echo " Open Source Audit — $SOFTWARE_CHOICE"
echo "=========================================="
echo "Student : $STUDENT_NAME"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "Date    : $CURRENT_TIME"
echo "------------------------------------------"
echo "Note: This OS uses open-source licensing (GPL/Linux)."
