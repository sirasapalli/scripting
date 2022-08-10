#!/bin/bash
for i in sample*
do
	echo "assign permissions to $i"
	chmod a+x $i
	sleep 1
done
