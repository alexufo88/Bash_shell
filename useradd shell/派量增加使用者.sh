#!/bin/bash
#Alex_lab
#2016-8-5
#派量增加使用者

for line in $(cat /tmp/users.txt)                 #cat the user detail file 
do
	user=$( echo "$line" | cut -d , -f 1 )         #cut the user file name
	pass=$( echo "$line" | cut -d , -f 2 )         #cut the user passwd 

	adduser $user                                  #useradd
	echo "$pass" | passwd --stdin $user &gt; /dev/null          #use pipe let $pass output to passwd  
done



#users.txt sample
#Tim,abc123
#Ken,1234
#John,3210
