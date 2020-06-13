<<comments
Date: 11-03-2020
Name: Gagan A
Description: A script to add two real numbers
Input: User oriented
Output:Example 1 --> Enter two numbers: 10.5 20
                     Sum= 30.5

       Example 2 --> Enter two numbers: 20 30
                     Sum=50
                     Enter two numbers: 30.1 1.5
                     Sum=31.6
comments

#! /bin/bash
clear
read -p "Enter two numbers: " num1 num2       #Fetching two real numbers "num1" and "num2" from the user
sum=`echo " $num1 + $num2 " | bc `            #adding two real numbers and pipelining it with bc for decimal points
echo "Answer is $sum"                              #printing the value of sum
        
