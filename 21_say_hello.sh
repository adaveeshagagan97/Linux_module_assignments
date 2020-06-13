<<comments
Date: 13-03-2020
Name: Gagan A
Description: A script to print greetings based on time
Input: Fetched based on system time using command date
Output: Good Morning user, Have a nice day!
        This is Friday 13 on March of 2020 [09:28:36]
comments

#! /bin/bash
clear

hour=`date +%H`                                         #command to fetch present system hour
if [ `echo "$hour -ge 5"` -a `echo "$hour -lt 12 "`  ]  #if elif else loops to compare the value of hour and display respective results
then
a=`echo "Good Morning"`
elif [ `echo "$hour -ge 12"` -a `echo "$hour -lt 13 "` ]
then 
	a=`echo "Good noon"`
elif [ `echo "$hour -ge 13 "` -a `echo "$hour -lt 17 "` ]
then
	a=`echo "Good afternoon"`
elif [ `echo "$hour -ge 17 "` -a `echo "$hour -lt 21"` ]
then
	a=`echo "Good evening"`
else
	a=`echo "Good night"`
fi

day=`date | cut -d " " -f 1`                            #fetching present day name and storing it into a variable called day
date=`date +%d`                                         #fetching present date and storing it into a variable called date
month=`date | cut -d " " -f 2`                          #fetching and storing month's details
year=`date +%G`                                         #fetching and storing year's info
minute=`date +%M`                                       #fetching and storing minute's info
second=`date +%S`                                       #fetching and storing second's info

echo -n -e  " $a user, Have a nice day! \n This is $day $date in $month of $year [$hour:$minute:$second]"       #displaying the result
echo                                              
