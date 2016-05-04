#!/bin/bash
file="./backup_file_paths"

if [ -z $1 ]
then
    echo "A name for the backup file is needed:  \"./backup_script.sh name_of_backup\""
    exit 1
fi

if [ ! -f $file ]; then
    echo "#--insert file path--#" >> $file
fi
number_of_files=$(ls | grep $1-$(date +%y%m%d) | nl -n ln | cut -d " " -f1 | tail -1)
cat $file | grep "/" | while read line
do
	tar -rpvf $1-$(date +%y%m%d)$number_of_files.tar $line
done
