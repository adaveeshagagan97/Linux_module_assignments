<<comments
          Date        : 25-03-2020
          Name        : Gagan A
          Description : A script to use a recursive function to print each argument passed to a function
          Input       : ./26_recursion.sh 5 2 4 1 n kj i
          Output      : 5
                        2
                        4
                        1
                        n
                        kj
                        i
comments

#! /bin/bash
clear

array=($@)                                                                #storing all the arguments passed into an array                     
 
function recursion                                                        #defining recursion function
{
	echo $1                                                           #to display only the first element of the array
	total_elements=${#array[@]}                                       #total number of elements in an array
	total_elements=$((total_elements-1))                              #decrement the count each time after printing first element

	while [ $total_elements -gt 0 ]                                   #when total elements >= 0  [ Base Condition ]
	do
		array=(`echo ${array[@]} | cut -d " " -f 1 --complement`) #delete the first element after printing it and storing the remaining
		recursion ${array[@]}                                     #calling the recursion function
	done                                                                          
}

if [ $# -eq 0 ]                                                           #if total number of arguments passed = 0
then
	echo Error: Pass the arguments through command line               #print error msg
else
	recursion $@                                                      #calling recursion function by passing all arguments entered
fi
