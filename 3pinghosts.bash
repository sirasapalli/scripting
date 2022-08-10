#!/bin/bash
hosts="/root/shellscripting/hosts"
for ip in $(cat $hosts)
do
	ping -c1 $ip &> /dev/null
	if [ $? == 0 ]
	then
		echo "$ip ping works"
	else
		echo "$ip is not pinging"
	fi
done
