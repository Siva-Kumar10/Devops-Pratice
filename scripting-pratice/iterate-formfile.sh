#!/bin/bash

FILE="/home/ubuntu/scripting-pratice/file.txt"

for name in $(cat $FILE)
do
	echo "Name is $name"
done


