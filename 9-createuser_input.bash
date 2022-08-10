#!/bin/bash
echo "how many files need to be created"
read file
echo
echo "please enter the file starting name"
read name
for j in $(seq 1 2  $file) 
do
	touch $name$j
done
