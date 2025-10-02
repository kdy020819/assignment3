#!/bin/bash


if [ "$#" -ne 2 ]
then 
	echo "Invalid input"
	exit 1
fi

row=$1
col=$2

if [ $row -le 0 ] || [ $col -le 0 ]
then
	echo "Input must be greater than 0"
	exit 1
fi

i=1
j=1

until [ $i -gt $row ]
do
	until [ $j -gt $col ]
	do
		result=`expr $i \* $j`
		echo -en "$i*$j=$result\t"
		j=`expr $j + 1`
	done
	
	echo ""
	i=`expr $i + 1`
	j=1
done

exit 0
