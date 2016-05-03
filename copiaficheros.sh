#!/bin/bash
file="./backup_file_paths"
if [ ! -f $file ]; then 	
    echo "#--insert file path--#" >> $file
fi
cat $file | grep "/" | while read line
do	
	tar -rpvf $1.tar $line
done
