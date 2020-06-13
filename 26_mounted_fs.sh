<<comments
          Date        : 28-04-2020
          Name        : Gagan A
          Description : A script to determine whether a given file system or mount point is mounted
          Input       : It is entered by the user
          Output      : ./26_mounted_fs.sh /dev/sda1
                        File-system /dev/sda1 is mounted on / and it is having 98% used space with 3298220 KB free.
comments

#! /bin/bash
clear

filesystem=( `df | tr -s " " | cut -d " " -f 1` )               #storing filesystem info into an array
available=( `df | tr -s " " | cut -d " " -f 4` )                #storing available storage info into an array
used=( `df | tr -s " " | cut -d " " -f 5` )                     #storing used space info into an array
mounted=( `df | tr -s " " | cut -d " " -f 6` )                  #storing mounted on info into an array
num=${#filesystem[@]}                                           #number of filesystems
flag=0                                                          #initialising the variable flag to zero 
 
if [ $# -ne 0 ]                                                 #when total number of arguments passed not equal to zero
then
	for i in `seq 1 $num`                                   #loop to fetch individual filesystem's name
	do
		if [ "$1" == "${filesystem[$i]}" ]              #when "passed_argument" = "filesystem"
		then	
			echo File-system $1 is mounted on ${mounted[$i]} and it is having ${used[$i]} used space with ${available[$i]} KB free.
			flag=$((flag+1))                        #incrementing flag when ever the info is printed
		else                                            #when "passed_argument != "filesystem"
			continue                                #then continue with the further instructions
		fi		
	done
	if [ $flag -eq 0 ]                                      #if the value of flag = 0
	then
		echo $1 is not mounted                          #then print, the respective filesystem is unmounted
	fi
else                                                            #when total number of arguments = 0
	echo Error: Please pass the name of the file-system through command line.   #print error message                                                 
fi
