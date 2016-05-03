#!/bin/bash
file="./files.txt"
if [ ! -f $file ]; then 	
    echo "#insert files path#" >> $file
fi
cat $file | grep "/" | while read line
do	
	tar -rpvf $1.tar $line
done
