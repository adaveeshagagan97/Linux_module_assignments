<<comments
          Date        : 30-04-2020
          Name        : Gagan A
          Description : A script to display the longestand shortest user-names on the system
          Input       : No input is required
          Output      : ./18_largest_username.sh
                        The Longest Name is  :   speech-dispatcher
                        The Shortest Name is :   lp
comments

#! /bin/bash
clear

user_names=(`cat /etc/passwd | cut -d ":" -f 1`)    #storing user-names into an array
shortest=${#user_names[0]}                          #initializing the length of first user name to variable shortest
longest=0                                           #initializing the variable longest to zero

for i in ${user_names[@]}                           #loop to pass all the user-names
do
	length=${#i}                                #length of respective username passed
	
	if [ $length -ge $longest ]                 #when value of length >= value of longest
	then
		longest_name=$i                     #to store the respective name of the user
		longest=$length                     #Updating the value of longest when the condition is true
	else
		if [ $length -le $shortest ]        #when value of length <= value of shortest
		then	      
			shortest_name=$i            #to store the respective name of the 
			shortest=$length            #updating the value of shortest when the condition is true
		fi
	fi
done 

echo -e "The Longest Name is   :  $longest_name"    #displaying the longest user name
echo -e "The Shortest Name is  :  $shortest_name"   #displaying the shortest user name

