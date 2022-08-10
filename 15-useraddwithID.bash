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
echo "do you want to specify userID(y/n):"
read choice
echo
if [ $choice == y ]
then	
	echo "please enter userid which is greather than 1001"
	read uid
	grep -q $uid  /etc/passwd
if [ $? -eq 0 ]
then
        echo "error $uid is alreadyy exists"
        echo "please provide another uid"
        echo
	exit 0
fi
	useradd $user -c "$desc" -u "$uid"
	echo
	echo "$user account has been created succesfully with user defined UID"
elif [ $choice == n ]
then
	echo "system defined uid will be created"
	useradd $user -c "$desc"
	echo
	echo "$user account has been created succesfully with system defined UID"
else
	echo "provide either y or n"
fi
