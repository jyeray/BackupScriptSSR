#!/bin/bash 

cat "./files.txt" | grep "/" | while read line
do	
	tar -rpvf $1.tar $line
done
