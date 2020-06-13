<<comments
Date: 21-04-2020
Name: Gagan A
Description: A script to print the contents of file from given line number to next given number of lines
Example-01 >> Input: ./17_print_lines.sh 5 3 myfile.txt
             Output: line number 5
                     line number 6
                     line number 7

Example-02 >> Input: ./17_print_lines.sh myfile.txt
             Output: Error: arguments missing! 
comments

#! /bin/bash
clear

line_num="$1"                                                      #first argument      
No_of_lines="$2"                                                   #second argument
total_lines=$(cat "myfile.txt" 2> "/dev/null" | wc -l)             #total lines in myfile.txt file 

if [ $# -lt 3 ]                                                    #if number of arguments < 3
then
	echo "Error: arguments missing!"          
else                                                     

	if [ -f "myfile.txt" ]                                     #to check the existence of file
	then

        if [ "$total_lines" -lt "$(((line_num + No_of_lines)-1))" ] #lines in file <= (1st argument + 2nd argument)-1
	then
		echo "Error: File has only $total_lines lines"            
	else     
		print=$(head -"$(((line_num + No_of_lines)-1))" myfile.txt | tail -"$2" )  #to print only the selected lines
		echo "$print"
        fi

        else                                                       #if file does not exist
	echo "Error: File does not exist"                 
        fi
fi
