<<comments
Date        : 28-04-2020
Name        : Gagan A
Description : A script to search a user present in your system
Input       : User name is entered by the user
Output      : example_01--> ./32_user_present.sh xyz
                            xyz is not present

              example_02--> ./32_user_present.sh root
                            root is present

	      example_03--> ./32_user_present.sh
                            Error: Please pass the argument through the command line 
comments

#! /bin/bash
clear

user_name=( ` cat /etc/passwd | cut -d ":" -f 1 ` )                     #storing user names present in the system into an array
flag=0                                                                  #initialising the variable flag to zero

if [ $# -eq 0 ]                                                         #when total number of arguments passed = 0 
then
	echo Error : Please pass the argument through the command line  #print the error message
else                                                                    #else
	for i in "${user_name[@]}"                                      #loop to pass all user names for comparison
	do
		if [ "$i" == "$1" ]                                     #when "username" = "first argument" passed by the user
		then
			echo "$1" is present                   		#print respective username is present
			flag=$((flag+1))                                #increment flag by 1 whenever the condition is satisfied
		else                                                    #when "username" != "first_argument" passed by the user
			continue                                        #continue with the following instructions  
		fi
	done
	if [ "$flag" -eq 0 ]                                            #when the value of flag = 0
	then
	echo "$1" is not present                                        #print respective username is not present
fi
fi
