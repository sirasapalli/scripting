#!/bin/bash
find /root/shellscripting/ -mtime +90 -exec mv {} {}.old  \;
