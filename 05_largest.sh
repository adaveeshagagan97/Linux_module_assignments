<<comments
Date: 20-04-2020
Name: Gagan A
Description: A script to compare larger integer values using CLA
Input: Enter the number: 05_largest.sh 5 6 8 4 2 1
Output: Largest value is 8
comments

#! /bin/bash
clear

if [ $# -eq 0 ]                                #condition to check the no of arguments
then
	echo "No arguements passed"            
	exit 1                                 #if no of arguments is zero, then exit the program
fi

lar_num=$1                                     #if not zero, then initalizing first argument to "lar_num" variable

for arguments in "$@"                          #calling all arguments
do
	if [ $arguments -gt $lar_num ]         #comparing each argument with "lar_num"   
	then
		lar_num=$arguments             #if true, then updating the value of "lar_num"
	fi
done
echo "Largest value is $lar_num"               #print the largest number
