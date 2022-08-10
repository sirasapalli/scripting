#!/bin/bash
tar -cvf /root/shellscripting/backup.tar  /root
gzip /root/shellscripting/backup.tar
find /root/shellscripting -mtime -1 -type f -print &> /dev/null
if [ $? -eq 0 ]
then
	echo "backup was created"
	echo
	echo "archieved backup"
	scp /root/shellscripting/backup.tar.gz root@3.89.128.143:/root/shellscripting/prudhvi.tar.gz
else
	echo" backup faailed"
fi
