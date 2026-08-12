Bash Scripting
==========

Hardware - System	---> Kernal	--->	Shell	--->	Application

At first hardware on top of it >Kernal< on top of it >Shell< on top of it >Application<

$0	-->	gives the details of which script we are using

./	-->	to run the script

#!.bin/bash	-->	She bang line (used in bash scripting)


simple way to print the data in scripting

vi <name .sh>

Press insert or press i

#!/bin/bash	--> she bang line (mandatory first line in every scripting

echo	--> used to print the output

-----Comment out-----
==================

#!/bin/bash

#some matter		-->	Keeping the #symbol before some matter act as that line cannot print to out

echo "Good morning"


<<comment
echo "Good Afternoon"
						--> the part in between <<comment and in last comment will not print this is usefull to block multiple line to print out
echo "Good Evening"
comment

:wq			-->	to save the file



------Variable-------
==============


#!/bin/bash

name="type the name here"
					--> here name and age we can called it as a variable. name should be mention in doble collun where as age is in numeric doesn't require that.
age=type the age here

To print out this

echo "Name is $> type the name here < and age is $> type the age here <

no need to mention >< this brackets while mentioning the age and name


------Array-------
=============

#!/bin/bash									--she bang line

#we are learing array here							-- info purpose

myarray=(2 5 8 2.5 Siva Kumar Veera Venkata Naga)	-->	defining array here in array bash will read consider the values from 0

echo ${myarray[0]}								-->	here in that bracket [] represents first value while printing the first value in my array will pop out

echo ${myarray[3]}								--> 	here in that bracket[] number represents the fourth value in myarray

echo ${myarray[4]}

echo "All the value in my array is ${myarray[*]}"		-->	here in that bracket [*] star symbol represents total values and print out

echo "No of value in my array is ${#myarray[*]}"		-->	here adding # before my array represents that it will show how many number of values is there in my array

echo "I need value from 2nd to 5th ${myarray[*]:1:4}"	-->	here to print specific value in my array we use this

myarray+=(5 6 8 9 Lakshmi "Gopala Krishna")			-->	here adding += after myarray represents adding some more values to my array if we keep only = then it will over ride the existing value in my array

echo "All the value in my array is ${myarray[*]}"

echo "No of value in my array is ${#myarray[*]}"



--------Array-keyvalues----------
========================

#!/bin/bash									-->	She bang line

declare -A myarray

myarray=([name]=siva [age]=30 [city]=vijayawada)		-->	representing array with different formats

echo "${myarray[age]}"							-->	to print out



---------String------------
==================

#!/bin/bash							-->	She bang line

myvar="Hey buddy, how are you?"			-->	defining variable

echo "Length of my string is ${#myvar}"		-->	to find the length we will use #before the myvar

echo "Upper case string is ${myvar^^}"		-->	to change the words from normal to Upper case we will use ^^ arrows it will change all the value in myvar to upper case

echo "Lower case string is ${myvar,,}"		-->	to lower case the value in myvar we will use ,,

echo "Replacing buddy ${myvar/buddy/Siva}"	-->	to replace a specific value in string we can use this /existing name /new name

Here every time after $ symbol brackets starts and ends with {}


--------Input-user----------
===================

#!/bin/bash						-->	She bang line

echo "What is your name?"
read name							-->	here in the name we will store the name entered by the user

echo "You entered name is $name"		-->	it will show like this in output where user will enter the name and it will show the name to user as well

read -p "what is your age" age			-->	shortcut form to print the name

echo "your age is $age"



-------Arth-operations--------
=====================


#!/bin/bash								-->	She bang line

x=10
y=20									-->	both represents the values

((sum=$x+$y))								-->	here we are informing the data to consider this as a value and useful at the time of print out

echo "sum of number is $sum"					-->	here we are doing sum which is stored in the value

echo "Multiplication of number is $(($x*$y))"		-->	here we are multiplying



-------if-else-------
=============

#!/bin/bash								-->	She bang line

age=20									-->	here age is a variable

if [ $age -ge 18 ]							-->	condition starts with if, here mentioning if we met the requirement in the variable then we are eligible
then
        echo "You are eligible to vote"				-->	if me met the requirement then we are eligible
else
        echo "You are not eligible to vote"			-->	if not met then not eligible
fi



-------Switch---------
===============

#!/bin/bash								-->	She bang line

echo "Hey choose the below option"				-->	Options for the user
echo "a = To see the current dat"
echo "b = List all the file in current directory"

read choice								-->	here choice is used like a variable

case $choice in 							-->	here in bash scripting in switch case we need to start with CASE
        a) date;;
        b) ls;;
        *) echo "Not a valid input"
esac										-->	here we close with the back ward of case <> esac


-------logical-ops--------
=================

#!/bin/bash								-->	She bang line

read -p "What is you age?" age					-->	shortcut form of print with variable in the end, here we need to mention the output quete  "" in between this double exclamations
read -p "Your country:" country

if [[ $age -ge 18 ]] && [[ $country == "india" ]]	-->	if else condition here && symbol states  that both are need to be same as mention. other option || this option is for optional either this or that can be workout
then
        echo "You can vote"
else
        echo "You can't vote"
fi


------for-loop-------
===============

  #!/bin/bash								-->	She bang line

  for i in 1 2 3 4
  do
     echo "Number is $i"
  done


for x in {1..100}							-->
do
        echo "Number is $x"
done

for j in Siva Kumar Kala
do
        echo "Name is $j"
done


-------Arguments--------
==================

#!/bin/bash

echo "kindly provide 2 arguments"
echo

echo "No of arguments passed- $#"
echo "All the aruments are - $@"
echo
echo
echo
echo "First argument is $1"
echo "Second argument is $2"
