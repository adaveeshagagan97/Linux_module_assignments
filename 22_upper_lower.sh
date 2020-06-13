<<comments
          Date        : 02-05-2020
          Name        : Gagan A
          Description : A script to convert string lower to UPPER and UPPER to lower
          Input       : It is entered by the user
          Output      : ./22_upper_lower.sh file.txt
                        1 - lower to upper
                        2 - upper to lower
                        Please select option : 2
                        what is os?
                        what are the different types of os?
                        when it is used?
                        what is partition and its use?
                        how many partitions can be done?
comments

#! /bin/bash
clear

filename="$1"                                                            #file name passed by the user
path=$(realpath 2> /dev/null "$filename")                                #real path pf file name passed by the user
totallines=$(cat "$path" 2> /dev/null | wc -l)                           #total number of lines present in the file

if [ "$#" -eq 1 ]                                                        #when total number of arguments passed = 1
then                                           
	if [ -e "$filename" ]                                            #when file exists, then
	then
		if [ -f "$filename" ]                                    #when it is a file, then 
		then 
		 	if [ "$totallines" -eq 0 ]                       #when total number of lines in a file = 0
			then
				echo Error: No contents inside the file. #print error message
			else                                             #when total number of lines in a file != 0
				echo 1 - lower to upper                 
				echo 2 - Upper to lower
				read -p "Please select option: " option  #reading the option from the user
				case "$option" in                  
					1) tr 'a-z' 'A-Z' < "$filename"  #when option = 1, then translate from lower to UPPER
						;;
					2) tr 'A-Z' 'a-z' < "$filename"  #when option = 2, then translate from UPPER to lower
						;;
					*) echo Invalid option           #when option is neither 1 or 2, print as Invalid option
						;;
				esac
			fi
		else                                                     #when it is not a file, then
			echo Please pass only files.                     #print message to pass only files
		fi
	else                                                             #when file doesnot exist, then
		echo "Error: "$filename" doesn't exist."                 #print error message
	fi
else                                                                     #when total number of arguments passed = 0, then
	echo Error: Please pass the file name through command line.      #print error message
fi
