#!/bin/bash 

number_of_files=$(ls | grep $1-$(date +%y%m%d) | nl -n ln | cut -d " " -f1 | tail -1)

cat "./files.txt" | grep "/" | while read line
do	
	tar -rpvf $1-$(date +%y%m%d)$number_of_files.tar $line
done
