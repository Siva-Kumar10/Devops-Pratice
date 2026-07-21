#!/bin/bash

echo "Hey choose the below option"
echo "a = To see the current dat"
echo "b = List all the file in current directory"

read choice

case $choice in 
	a) date;;
	b) ls;;
	*) echo "Not a valid input"
esac


