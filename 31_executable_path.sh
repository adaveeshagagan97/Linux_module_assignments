<<comments
          Date        : 28-04-2020
          Name        : Gagan A
          Description : A script to display the number of executable files for each directory in the $PATH 
          Input       : No input is required
          Output      : ./31_executable_path.sh 
                        
                        Current dir: /usr/local/sbin
                        current count: 0
                       
                        Current dir: /usr/local/bin
                        current count: 0
 
                        Current dir: /usr/sbin
                        current count: 205
 
                        Current dir: /usr/bin
                        current count: 1889

                        Current dir: /sbin
                        current count: 187
 
                        Current dir: /bin
                        current count: 159

                        Current dir: /usr/games
                        current count: 5
 
                        Current dir: /usr/local/games
                        current count: 0
 
                        Total - 2445
comments

#! /bin/bash
clear

total=0                                                             #Initialising the total count of overall executable files to zero
count=$( echo $PATH | tr -cd ":" | wc -c )                          #to fetch the number of directories in $PATH

for i in `seq 1 $count`                                             #to pass each directory 
do
	current_count=0                                             #initailising the count of executable files in current directory to zero
	dir=$( echo $PATH | cut -d ":" -f ${i} )                    #to fetch the path of current directory
	cd $dir     	                                            #then navigating into the current directory
	echo current dir: $dir       
	
	for contents in `ls $dir`                                   #loop to pass every content of the current directory
	do
		if [ -x $contents ]                                 #if file is executable
		then
			current_count=`expr $current_count + 1`     #keep a count of the executable file of the current directory
		fi
	done
	
	echo -e "current count:$current_count\n"                    #printing the current count value  
	total=$((current_count+total))                              #keep the total count of overall executable files in $PATH
done

echo Total count - $total                                           #printing the total count value
