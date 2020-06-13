<<comments
          Date        : 02-05-2020
          Name        : Gagan A
          Description : A script to delete empty lines from a file
          Input       : It is entered by the user
          Output      : example_01 --> ./07_delete_empty_lines.sh file.txt
                                       Empty lines are deleted.
                         
                        example_02 --> ./07_delete_empty_lines.sh
                                       Error: Please pass the file name through command line.
comments

#! /bin/bash
clear

filename="$1"                                                                  #file name passed by the user
path=$(realpath 2> /dev/null "$filename")                                      #realpath of the filename passed by the user
totallines=$(cat "$path" 2> /dev/null | wc -l)                                 #total number of lines present in the respective file

if [ $# -eq 1 ]                                                                #when the total number of arguments passed = 1
then
	if [ -e "$filename" ]                                                  #to check whether the file exists or not
	then                                                                   #if exists, then
		if [ -f "$filename" ]                                          #check whether it is a file or not
		then                                                           #if it is a file, then
			if [ "$totallines" -ne 0 ]                             #check whether total lines in the file is > 0
			then                                                       
				sed -i '/^$/d' "$filename" | tr -d ' '         #then delete the empty lines present in the file and save changes
				echo Empty lines are deleted.                  #print confirmation message
			else                                                   #if total lines in the file = 0
				echo "Error: "$filename" is empty. So can't delete lines." #print error message
			fi
		else                                                           #when it is not a file
			echo "Please pass only files."                         #then print message to pass only files   
		fi                                                                  
	else                                                                   #when file passed does not exist
		echo Error: "$filename" doesnot exist.                         #then print an error message
	fi
else                                                                           #when no argument is passed
	echo Error: Please pass the file name through command line.            #then display an error message
fi

