#!/bin/bash
# Author: Priyanka Priyadarshinee
# Admission No: 24BCG10069

PACKAGE="vlc"

# Check installation
if dpkg -s $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement
case $PACKAGE in
    vlc)
        echo "VLC: A powerful open-source media player supporting multiple formats."
        ;;
    httpd)
        echo "Apache: A widely used open-source web server."
        ;;
    mysql)
        echo "MySQL: An open-source relational database system."
        ;;
    firefox)
        echo "Firefox: A browser promoting open web standards."
        ;;
    *)
        echo "Exploring the world of open-source software."
        ;;
esac
