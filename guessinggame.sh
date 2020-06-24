#!/bin/sh
read_input(){
        echo "Enter the number of files"
	read userInput
}

count_files() {
	for f in ./*; do
        	((count=count+1))
	done
 
}

count=0;
#boolean guess=true
count_files

#echo "Exact files is $count"
#echo "User input is $userInput"
while :
do
	read_input

	if [ $count -gt $userInput ]
		then	echo "Value enterted is too low"
	elif [ $count -lt $userInput ] 
	then
		echo "Value entered is too high"
	else
		echo "Guess is exact"
		break;
	fi
done
