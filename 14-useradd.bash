#!/bin/bash
echo "please provide a user name"
read user
echo
grep -q $user  /etc/passwd
if [ $? -eq 0 ]
then
	echo "error $user is alreadyy exists"
	echo "please provide another user"
	echo
	exit 0
fi
echo "please add description for the user"
read desc
useradd $user -c "$desc"
echo "$user is  created succesfully"
