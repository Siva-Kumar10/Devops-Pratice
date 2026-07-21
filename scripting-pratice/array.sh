#!/bin/bash

#we are learing array here

myarray=(2 5 8 2.5 Siva Kumar Veera Venkata Naga)

echo ${myarray[0]}

echo ${myarray[3]}

echo ${myarray[4]}

echo "All the value in my array is ${myarray[*]}"

echo "No of value in my array is ${#myarray[*]}"

echo "I need value from 2nd to 5th ${myarray[*]:1:4}"
	
myarray+=(5 6 8 9 Lakshmi "Gopala Krishna")

echo "All the value in my array is ${myarray[*]}"

echo "No of value in my array is ${#myarray[*]}"


