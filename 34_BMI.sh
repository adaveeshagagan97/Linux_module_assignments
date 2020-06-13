<<comments
Date: 12-03-2020
Name: Gagan A
Description: A script to calculate BMI for given height and weight in metres and kg respectively 
Input: Height and weight in m and kg are entered by user respectively
Output: Enter height in m: 1.5
        Enter weight in Kg: 45
        you are normal
comments

#! /bin/bash
clear

read -p "Enter height in m: " height                                               #fetch the value of height in metres from the user
read -p "Enter weight in Kg: " weight                                              #fetch the value of weight in Kg from the user
deno=` echo " $height * $height " | bc `                                           #deno=(height*height), where deno=denominator    
BMI=`echo " scale=2; $weight / $deno " | bc `                                      #BMI=(weight/deno) 

if [ `echo " $BMI < 18.5 " | bc ` -eq 1 ]                                          #if BMI < 18.5 : underweight
then
	echo you are underweight
elif [ `echo " $BMI > 18.4 " | bc ` -eq 1 -a `echo " $BMI < 25 " | bc ` -eq 1 ]    #if 18.5 =< BMI < 24.9 : normal
then
	echo You are normal 
elif [ `echo " $BMI > 24.9 " | bc ` -eq 1 -a `echo " $BMI < 29.9 " | bc ` -eq 1 ]  #if 25 =< BMI < 29.9 : overweight
then 
	echo You are overweight                                                               
else                                                                               #if BMI >= 30 : Obese
	echo You are obese
fi
