<<comments
Date: 21-04-2020
Name: Gagan A
Description: A script to print the 5th line of a file passing through command line
Example-01 >> Input: ./23_print_fifth_line.sh file.txt
             Output: Fifth line of file.txt is line 5

Example-02 >> Input: ./23_print_fifth_line file1.txt
             output: Error: file1.txt having only 2 lines. So can't print 5th line.
       
comments

#! /bin/bash
clear

total=$#                                                                      #number of arguments passed
file_name=$1                                                                  #first argument
total_lines=$( cat "$file_name" 2> "/dev/null" | wc -l )                      #total number of lines in file
if [ $total -eq 0 ]                                                           #if number of arguments = 0
then                                                        
	echo "Please pass the file name in command line"
else                                                                          #if not 
	if [ -f "$file_name" ]                                                #to check the existence of file
	then
	       
	       if [ "$total_lines" -lt 5 ]                                    #if total number of lines in a file < 5
	         then
	        	 echo "Error: "$file_name" has only $total_lines lines. So can't print 5th line"    #then print error msg
	       else                                                                                           
		         print=$( head -5 "$file_name" | tail -1 )           #if not, fetch only the 5th line
		         echo "Fifth line of $file_name is $print"           #print only the fifth line
        	fi
        else                                                                 #when file doesnot exist
        	echo "No such a file"               
        fi
fi

