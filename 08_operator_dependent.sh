<<comments
          Date        : 30-04-2020
          Name        : Gagan A
          Description : A script to perform arithmetic operation on digits of a given number depending upon the operator
          Input       : It is entered by the user
          Output      : ./08_operator_dependent.sh 1234+
                        Sum is 10
comments

#! /bin/bash
clear

number=$1                                                     #number with operator entered by user                                               
length=${#number}                                             #length of the string passed 
operator=${number:$((length-1)):$length}                      #to fetch the operator 
result=${number:0:1}                                          #to fetch first digit

if [ $# -eq 0 ]                                               #when the total number of arguments passed is zero
then
	echo Error: Please pass the argument.                 #print the error message
        echo Usage: ./08_operator_dependent.sh 2345+	
 
else                                                          #else

function operation                                            #defining operation function
{
	for digits in `seq 1 $((length-2))`                   #loop to pass remaining digits 
	do
		result=$((result$operator${number:$digits:1})) #to do the respective operation between all the digits
	done
}

case $operator in                                             #comparing operator to perform different operation                                       
	+) operation                                          #when operator = `+`, then calling operation function to perform addition
           echo Sum is $result                                #displaying the result                   
		;;
	-) operation                                          #when operator = `-`, then calling operation function to perform subtraction
           echo Sub is $result                                #displaying the result
		;;
	\*) operation                                         #when operator = `\*`, then calling operation function to perform multiplication
	  echo Mul is $result                                 #displaying the result
		;;
	*)echo Error: Operator missing                        #when operator is invalid
		;;
esac
fi
