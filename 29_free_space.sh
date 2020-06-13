<<comments
Date: 10-03-2020
Name: Gagan A
Description: A script to display the names of any file-system which have less than 10% free space available
Input: The command df is used to fetch the information about disk free memory
Output: ./29_free_space.sh
        Filesystem /dev/sda5 have less than 10% freespace
comments

#! /bin/bash
clear

file_system=(`df | tr -s " " | cut -d " " -f 1` )                                  #storing disk free info in an array
use=(`df | tr -s " " | cut -d " " -f 5 | cut -d "%" -f 1`)                         #storing only the usage portion in an array

echo -e "The file system portion is: \n${file_system[@]}\n"                        #displaying the elements of an array
echo -e "The used portion in % is:\n${use[@]}\n"                                   
num=$((${#file_system[@]}-1))

for i in `seq 1 $num`                                               
do
	if [ "${use[$i]}" -lt 90 ]                                                  #if used portion >= 10%
	then
		echo "File system ${file_system[i]} has less than 10% freespace"    #print the msg
fi
	done

