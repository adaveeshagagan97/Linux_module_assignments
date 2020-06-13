<<comments
Date: 21-04-2020
Name: Gagan A
Description: A script to sort a given number in ascending or descending order
Input: ./12_sorting.sh -a 5 4 6 2 3 8 9 7 1 
Output: Ascending oder of array is 1 2 3 4 5 6 7 8 9
comments

#! /bin/bash
clear
             
array=( $@ )                                                    #passing arguments into an array
num=$#                                                          #Number of arguments

if [ $num -ne 0 ]                                               #when the number of arguments is not zero
then                                                            
function ascending_order                                        #Defining function for ascending order sorting     
{
for i in `seq 1 $((num-1))`                                     #Outerloop 
do
	for j in `seq 1 $((num-2))`                             #innerloop to compare adjacent elements
	do
		if [ ${array[$j]} -gt ${array[$((j+1))]} ]      #if true
		then
			temp=${array[$j]}                       #then swap
			array[$j]=${array[$((j+1))]}
			array[$((j+1))]=$temp
		fi
	done
done
}

function descending_order                                       #defining function for descending order sorting
{
for i in `seq 1 $((num-1))`
do
	for j in `seq 1 $((num-2))`
	do
		if [ ${array[$j]} -lt ${array[$((j+1))]} ]      
		then
			temp=${array[$j]}
			array[$j]=${array[$((j+1))]}
			array[$((j+1))]=$temp
		fi
	done
done
}

case "${array}" in                                                                      #case structure to pass the choice
               	-a) ascending_order                                                     #when ${array}=-a, then calling function ascending_order 
	           echo "Ascending order of the array is ${array[@]:1:$num}"            #display array ignoring the choice in ascended form
	               	;;
	        -d) descending_order                                                    #when ${array}=-d, then calling function descending_order
		   echo "Descending order of the array is ${array[@]:1:$num}"           #display array ignoring the choice in descended form
		        ;;
	         *) echo "Error: Please pass the choice: -a/-d"                         #when choice is neither "-a" nor "-d"
		        ;;
esac
else
	echo "Please pass the argument through command line"                            #when the number of arguments is zero
fi

