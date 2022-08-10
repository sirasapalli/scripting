#!/bin/bash
total=`ls -l sample* |wc -l`
echo "it will take $total seconds to complete"
echo
for i in sample*
do
	echo "asssign write permissions to $i"
	chmod a+w $i
	sleep 1
done
