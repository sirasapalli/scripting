#!/bin/bash
echo "please enter host or ip"
read hip
echo 
grep -q $hip /root/shellscripting/database
if [ $? -eq 0 ]
then 
	echo
	sed -i '/'$hip'/d' /root/shellscripting/database
	echo "$hip is removed from database"
else
	echo "no host available in the database"
fi
