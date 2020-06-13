<<comments
          Date        : 25-03-2020
          Name        : Gagan A
          Description : A script that takes any number of directories as CLA and then lists the contents of it
          Input       : It is entered by the user
          Output      : ./27_output_ls.sh ~ ~/ECEP
                        /home/user:
                        Downloads Documents Desktop Music Pictures 
                        /home/user/ECEP:
                        Linux_systems Advnc_C Linux_Internals Data_Structures MC
comments

#! /bin/bash
clear

if [ $# -eq 0 ]                                                      #if total number of arguments passed is zero
then
	echo *                                                       #print the contents
fi

for args in $@                                                        #for loop to pass all arguments entered
do
	if [ -e $args ]                                               #to check whether a file/directory exists 
	then                                                          #if exists
	cd $args                                                      #to change directory
	full_path=$(realpath $args)                                   #real path of the argument
	echo $full_path:                                              #print real path
	echo *                                                        #print the contents
else                                                                  #if file/directory does not exist
	echo "Cannot access '$args' : No such a file or directory"    #then print error message
fi
done

