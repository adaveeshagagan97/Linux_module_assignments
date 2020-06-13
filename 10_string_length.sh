<<comments
iDate: 21-04-2020
Name: Gagan A
Description: A script to print the length of each and every string 
Input: Enter the number: ./10_string_length.sh hello hai how are you ?
Output: Length of string (hello) - 5         
        Length of string (hai)   - 3
        Length of string (how)   - 3
        Length of string (are)   - 3
        Length of string (you)   - 3
        Length of string (?)     - 1
comments

#! /bin/bash
clear

if [ $# -eq 0 ]                                          #if number of arguments passed is zero
then
	echo "Error: No arguments passed"                
else                                                     #when not equal to zero
	for args in "$@"                                 #for loop to find the length of all arguments passed 
	do
		arg=${#args}                             #length of the string
		echo "Length of string ($args) - $arg"
	done
fi

