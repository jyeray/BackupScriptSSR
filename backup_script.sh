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
name_of_backup_file=$1-$(date +%y%m%d)$number_of_files.tar

cat $file | grep "/" | while read line
do
	 tar -rpvf $name_of_backup_file $line
done
