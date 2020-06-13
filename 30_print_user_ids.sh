<<comments
          Date        : 28-04-2020
          Name        : Gagan A
          Description : A script to count the number of users with user IDs between 500 and 10000 on the system
          Input       : example 01 --> ./users.sh
          Output      :                Total count of user ID between 500 to 10000 is : 2
                        example 02 --> ./users.sh 0 100
                                       Total count of user ID between 0 to 100 is : 3
comments

#! /bin/bash                                                       
clear

count=0                                                        #Initialising count to zero
user_id=(` cat /etc/passwd | cut -d: -f 4 ` )                  #storing all user ids info into an array

for num in ${user_id[@]}                                       #loop to pass all user id numbers
do
	if [ $# -eq 2 ]                                        #when total number of arguments passed = 2
	then
		if [ $num -ge $1 ] && [ $num -le $2 ]          #when user id is present between $1 and $2 range
		then
			count=$((count+1))                     #to keep the count the number of user ids between the range
		fi
	else                                                   #when range is not specified
		if [ $num -ge 500 ] && [ $num -le 10000 ]      #default range from 500 to 10000 is specified
		then
			count=$((count+1))                              
		fi
	fi
done

if [ $# -eq 0 ]                                                           
then
	echo Total count of user ID between 500 to 10000 is: $count      #to display number of user IDs between default range's count
else
	echo Total count of user ID between $1 to $2 is: $count          #to display number of user IDs between user specified range's count
fi
