<<comments
Date: 11-03-2020
Name: Gagan A
Description: A script to print chess board
Input: User oriented
Output: 0 1 0 1 0 1 0 1
        1 0 1 0 1 0 1 0
        0 1 0 1 0 1 0 1
        1 0 1 0 1 0 1 0
        0 1 0 1 0 1 0 1
        1 0 1 0 1 0 1 0
        0 1 0 1 0 1 0 1
        1 0 1 0 1 0 1 0
comments

#! /bin/bash
clear

for rows in `seq 1 8`                       #loop for rows initialization
do
	echo -e "\e[0m" " "                 #space alignment between rows
	for columns in `seq 1 8`            #loop for columns initialization
	do
		s=$(((rows+columns)%2))     #when (rows+columns) position = even_number, then (even_number % 2) = 0
	  if [ $s -eq 0 ]                   #if s=0
	  then
	        echo -e -n "\e[40m" " "     #then print black box
	  else
		echo -e -n "\e[47m" " "     #else, print white box
	fi	
	done

done
echo -e "\e[0m" " "                         #Normal color
