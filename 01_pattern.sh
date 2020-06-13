<<comments
Date: 10-03-2020
Name: Gagan A
Description: A script to print the given pattern
Input: Enter the number: It is given by the user
Output:1
       1 2
       1 2 3
       1 2 3 4
comments

#! /bin/bash
clear
read -p "Enter the number: " num                             #fetching the value from the user and storing it in a "num" variable
                       
if [ $num -lt 2 ]                                            #if loop to check whether the value of "num" is less than 2
then
	echo "Error: Please enter a number greater than 2"   #if true, then print it on the screen
else
for rows in `seq $num`                                       #if not, then go for assigning the rows
do
	echo                                                 #space after each row
for columns in `seq $rows`                                   #assigning the value of columns
do
	echo -n " $columns "                                 #print the value: n--> to print values in the same row for every looping
done
done                                                          
fi                                                              
echo                                                         


