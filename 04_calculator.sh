<<comments
          Date        : 04-05-2020
          Name        : Gagan A
          Description : A script for arithmetic calculator using command line arguments.
          Input       : It is entered by the user
          Output      : ./04_arithmetic_calc.sh 25 + 41
                        66
                       ./04_arithematic_calc.sh 10 x 5
                        50
                       ./04_arithmetic_calc.sh 25 / 5
                        5
                       ./04_arithmetic_calc.sh 10.2 - 5.6
                        4.6
                       ./04_arithmetic_calc.sh 
                        Please pass the arguments through command line.
comments


#! /bin/bash
clear

total_args="$#"                                                    #total number of arguments passed
operator="$2"                                                      #fetching the type of operator passed by the user

if [ "$total_args" -eq 3 ]                                         #when the total number of arguments passed = 3
then
	case "$operator" in                                             
		+) echo `echo "$1 "$operator" $3" | bc`            #when operator = `+`, then do addition
			;;
		-) echo `echo "$1 "$operator" $3" | bc`            #when operator = `-`, then do subtraction
			;;
		x) echo `echo "$(($1*$3))" | bc `                  #when operator = `x`, then do multiplication
			;;
		/) echo `echo "$1 "$operator" $3" | bc `           #when operator = `/`, then do division
			;;
		*) echo Invalid operator                           #when operator is invalid, display the error message
			;;
	esac

elif [ "$total_args" -eq 1 ]                                       #when the total number of arguments passed = 1
then                       
	echo Error: Please pass 3 arguments                        #then display the message to pass 3 arguments
	echo Usage:./04_arithmatic_calc 2.3 + 6.7
	exit 
else                                                               #when total number of arguments passed = 0
	echo Error: Please pass the arguments through command line #display the message asking user to pass the arguments
fi


