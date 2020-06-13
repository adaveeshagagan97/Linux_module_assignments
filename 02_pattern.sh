<<comments
Date: 10-03-2020
Name: Gagan A
Description: A script to print the given pattern
Input: It is entered by the user
Output:1
       2 3
       4 5 6
       7 8 9 10
comments

#! /bin/bash
clear
read -p "Enter the number: " num                           #fetching the value from the user
number=1                                                   #intialization for further comparisions

if [ $num -le 1 ]                                          #condition to check whether the value of num
then                                                       
	echo "Error: Please enter a number greater than 2" #if true, then print the message on the screen
	exit
fi                                                         #terminating the loop

for rows in `seq $num`                                     #loop for rows 
do                                                          
	echo                                               #space between rows
for columns in `seq $rows`                                 #loop for columns
do                                                            
	if [ $number -lt 10 ]                              #condition to align pattern
	then
		echo -n "$number  "                        #if true, 2 spaces between numbers
	else
		echo -n "$number "                         #if false, 1 space between numbers
	fi
	((number++))                                       #iterating number by +1 value
done
done                                                            
echo       


