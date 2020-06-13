<<comments
          Date        : 30-04-2020
          Name        : Gagan A
          Description : A script for generating random 8-character passwords including alpha numeric characters
          Input       : No input is required
          Output      : ./20_random_password.sh
                        nH@Rh0Pv
                        08ug&Hfd
                        eo0IUJ#f
                        wx8*75fb
                        q@13&5'A
                        ~!@#$%^&
                        QW%^<?LT
                        ~#:DS"SD
                        -+@KWEWv
                        t5%#Ecww
comments

#! /bin/bash
clear              

for i in `seq 1 10`                                                              #loop to get 10 random 8-character passwords
do
	random_passwd=`cat /dev/urandom | tr -cd [:print:] | head -c 8`          #storing random 8-character passwords
	echo $random_passwd                                                      #displaying random password for each count 
done

