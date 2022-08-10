#!/bin/bash
date | awk '{print $1}'
echo 

df -h |  awk '{print $1}'| grep -v  tmpfs

echo
uptime|  awk '{print $1}'


