<<comments
Date: 21-04-2020
Name: Gagan A
Description: A script to create an infinite feedback loop
Example: ./redirection.sh
         Before loop file contents
         Hai hello
         After loop file contents
         Hai hello
         Hai hello
         .
         .         
comments

#! /bin/bash
clear

echo "Before loop file contents"
x=$( cat "redirection.sh" )                                              # content of file
echo "$x"  
sleep 3                                                                  #delay for 3 secs 
echo "After loop file contents"                                          
sleep 2                                                                  #delay for 2 secs
tail -f "redirection.sh" >> "redirection.sh" | tail -f "redirection.sh"  #to create an infinite feedback loop using tail cmd and -f(follow) option
