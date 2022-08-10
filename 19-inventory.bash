#!/bin/bash
echo "please enter hostname"
read host
echo 
grep -q $host /root/shellscripting/database
if [ $? -eq 0 ]
then
	echo "Error $host is already exists in the database"
	echo 
fi
echo "please enter IP"
read ip
grep -q $ip /root/shellscripting/database
if [ $? -eq 0 ]
then
        echo "Error $ip is already exists in the database"
        echo
fi
echo "please enter description"
read desc
echo "$host $ip $desc" >>  /root/shellscripting/database
echo "records added in database"

