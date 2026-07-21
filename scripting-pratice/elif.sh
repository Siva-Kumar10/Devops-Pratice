#!/bin/bash

read -p "Enter your country" country

if [ $country = "india" ]
then
	echo "You are indian"
elif [ $country = "Nepal" ]
then
	echo "You are Nepaleese"
elif [ $country = "us" ]
then
	echo "You are from US"
else
	echo "You are from other country"
fi


