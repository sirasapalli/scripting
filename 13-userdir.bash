#!/bin/bash
cd /home
for dir in *
do
	check=$(grep -c "/home/$dir"  /etc/passwd)
	if [ $check -ge 1 ]
	then
		echo "$dir is assigned to a user"
	else
		echo "$dir is not assigned"
	fi
done
