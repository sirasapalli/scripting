#!/bin/bash
echo enter the ip address
read ip
ping -c1 $ip &> /dev/null
if [ $? -eq 0 ]
then 
	echo "ping works"
else
	echo "not able to ping"
fi

