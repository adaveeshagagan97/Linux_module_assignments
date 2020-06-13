<<comments
Date: 20-04-2020
Name: Gagan A
Description: A script to print a given number in reverse order
Input: Enter the number: 06_largest.sh 12345
Output: Reversed number - 54321
comments

#! /bin/bash
clear
number=$@                                        #fetching the number
rev_num=0                                        #variable to store a reversed number 
rem=0                                            #variable to store a remaninder

function reverse                                 #defining reverse function 
{
                                                
while [ $number -gt 0 ]
do
	rem=$((number%10))                       #get remainder
	rev_num=$(((rev_num*10)+$rem))           #store a reverse number
	number=$((number/10))                    #get new value of number            
done
}

if [ $# -eq 0 ]                                  #Checking for number of arguments
then
	echo "No arguments passed"              
elif [ $((number/10)) -eq 0 ]                    #checking for multi-digit number
then
	echo "Error: pass a multi-digit number"
else
if [ $number -gt 0 ]                             #checking whether the number is positive
then
	reverse                                  #calling reverse function
        echo "Reversed number : $rev_num"      #printing reversed number
elif [ $number -lt 0 ]                           #checking whether the number is negative
then
	number=$((number*(-1)))                  #if negative, then multiplying the number with (-1) to make it a positive one
	reverse                                     
        rev_num=$((rev_num * (-1)))              #after reversing the number, coverting it into a negative reversed number again
        echo "Reversed number : $rev_num"
else                                             #if no arguments are passed
	echo
fi
fi
