<<comments
          Date        : 02-05-2020
          Name        : Gagan A
          Description : A script to read 'n' and generate Fibonacci numbers <=n
          Input       : It is entered by the user
          Output      : ./fibonacci.sh
                        Enter limit for fib series: 10
                        0, 1, 1, 2, 3, 5, 8
comments

#! /bin/bash
clear

num1=0                                         #Initializing first number of the series  to zero
num2=1                                         #Initializing second number of the series to one
num=0                                          #Initializing variable num to zero

read -p "Enter limit for fib series: " limit   #fetching the value of limit to print series upto that value from the user

if [ $limit -gt 0 ]                            #when user enters a positive value to the limit
then
	echo -n "$num1"                        #display the first term of the series
	while [ $num2 -le $limit ]             #run the loop until $num2 <= $limit
	do
		echo -n ", $num2"              #displaying num2 value
		num=$((num1+num2))             #calculating num value
		num1=$num2                     #updating the num1 value
		num2=$num                      #updating the num2 value
	done
else                                           #when user enters a negative value to the limit
	while [ $num2 -ge $limit ]             
	do
		echo -n "$num1 "               #display num1 value
		num=$((num1-num2))             #calculating num value
		num1=$num2                     #updating num1 value
		num2=$num                      #updating num2 value
	done
fi
echo
