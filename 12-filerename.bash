#!/bin/bash
for filename in *.sh
do 
	mv $filename ${filename%.sh}.bash
done
