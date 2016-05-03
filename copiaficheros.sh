#!/bin/bash

if (( $# < 1 ))
then
	echo "Por favor pase el fichero para hacer la copia de seguridad"
	exit 1
fi

all=$(cat $1 | grep "/")
echo "$all" | while read line
do	
	tar -rpvf estacionBackUp.tar $line
done
