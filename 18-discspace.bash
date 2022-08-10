#!/bin/bash
#df -h|egrep -v "tmpfs|devtmpfs"
disc=`df -h|grep -i "/dev/xvda1"|awk '{print $5}'|cut -d "%" -f1`
for disc in $disc
do
	if [ $disc -ge 35 ]
	then
		echo "check disc space $disc which had reached treshhold value"
	fi
done
