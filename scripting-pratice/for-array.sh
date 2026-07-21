#!/bin/bash

myarray=( 1 2 3 hello bye h )

length= ${#myarray[*]}

for (( i=0; i<$length; i++ ))
do
	echo "Value of Array is ${myarray[$i]}"
done


