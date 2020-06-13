<<comments
Date: 11-03-2020
Name: Gagan A
Description: A script to print system information
Input: A respective option is entered by the user
Output: User required data is required
comments

#! /bin/bash
clear
echo -e " 1. Currently Logged users \n\n 2. Your shell directory \n\n 3. Home directory \n\n 4. OS name and version \n\n 5. Current working directory \n\n 6. Number of users logged \n\n 7. Show all available shells in your system \n\n 8. Hard disk information \n\n 9. CPU information \n\n 10. Memory information \n\n 11. File system information \n\n 12. Currently running process \n\n "
read -p "Enter your option: " option                            #fetching the value of option from user           
echo                                                             #space 
case $option in                                                  #using option value in case structure to fetch the info
	1) echo -e "Currently logged users are:\n"               #when option=1
             	who
		;;
	2) echo -e "Your shell directory is: \n "                #when option=2
		echo $SHELL
		;;
	3) echo -e "Your home directory is:\n "                  #when option=3
		echo $HOME
		;;
	4) echo -e "OS name and version are:\n "                 #when option=4
	        uname -a
		;;
	5) echo -e "Current working directory:\n "               #when option=5
	        pwd
		;;
	6) echo -e "Number of users logged in are:\n "           #when option=6
		 w
		;;
        7) echo -e "All available shells in your system are:\n " #when option=7
		cat /etc/shells
		;;
	8) echo -e "Your hard disk information is:\n "           #when option=8
	        free -h
		;;
	9) echo -e "Your CPU information is:\n "                 #when option=9
	        cat /proc/cpuinfo
		;;
	10) echo -e "Your memory information is:\n "             #when option=10
	        cat /proc/meminfo
		;;
	11) echo -e "Your file system information is:\n "        #when option=11
	        df
		;;
	12) echo -e "Currently running process is:\n "           #when option=12
		echo ps
		;;	
	*) echo -e "Invalid option"                              #when option=invalid entry
	        ;;
esac                                                             #terminating case structure
