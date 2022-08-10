#!/bin/bash
a=`lastlog |grep -i "sai2" |awk '{print $1}'`
for i in $a
do
	usermod -L $i
done
