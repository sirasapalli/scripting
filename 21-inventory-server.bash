#!/bin/bash
echo
echo "select any one of the below entry for your database entry:"
echo "a = ADD   a record"
echo "d= delete a recoed"
read choice
case $choice in 
	a) /root/shellscripting/19-inventory.sh;;
	d) /root/shellscripting/20-deleteinventory.sh;;
	*) echo " Error invalid option --please choose correct record"
esac
