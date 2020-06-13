<<comments
          Date        : 30-04-2020
          Name        : Gagan A
          Description : A script to replace 20% lines in a C file randomly and replace it with the pattern <--DEL-->
          Input       : A fi-replace with .c extension is entered by the user
          Output      : ./33_replace<DEL>.sh main.c
                        Before replacing 

                        #include<stdio.h>
                        int main()
                        {
                            printf("Hello world\n");
                        }
                          
                        After replacing

                        #include<stdio.h>
                        int main()
                        {
                           <---------Deleted--------->
                        }
comments

#! /bin/bash                                                           
clear

if [ $# -eq 1 ]                                          #when total number of arguments passed = 1
then
	if [ -f $1 ]                                     #when the .c file entered by the user exists
	then
		totallines=`cat $1 | wc -l`              #to count the number of lines in a file
	
		if [ $totallines -eq 0 ]                 #when total number of lines in a file = 0
		then
			echo Error: $1 is empty file. So cannot replace the string  #print error message
			exit 
		fi

		if [ $totallines -ge 5 ]                 #when the file has minimum of 5 lines to get 20% lines replaced
		then                                         

			echo -e "Before replacing\n"     
			cat $1                                               #showing the contents of the file before running the script
		
			twentyper=$(((totallines*20)/100))                   #to calculate 20% of lines in a file
			pattern="<----------Deleted---------->"       
			

			random=(` shuf -i 1-$totallines -n $twentyper `)	     #to generate a random number
			for i in ${random[@]}
			do
				if [ "`sed -n "${random}"p $1`" == "$pattern" ]         #when random number line is already replaced with pattern
				then
					random=` shuf -i 1-$totallines -n $i`                      #generate another random number 
					sed -i "${random}s/.*/<----------Deleted---------->/"  $1  #replace line with pattern
				else                                                               #if not already replaced
					sed -i "${random}s/.*/<----------Deleted---------->/"  $1  #then replace with pattern
				fi		
			done
			
			echo -e "After replacing\n"                     
			cat $1                                          #showing the contents of file after runnin the script
		else                                                    #when file has lesser than 5 files
			echo "Error: $1 has less than 5 lines. So can't replace 20% lines" #print error message
		fi	
	else                                                            #when file doesnot exist
		echo Error: No such a file.                             #print error message
	fi
else                                                                    #when the total number of arguments passed = 0
	echo Error: Please pass the file name through command line      #print error message
fi
