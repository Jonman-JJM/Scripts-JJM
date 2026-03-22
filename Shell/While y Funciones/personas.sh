#!/bin/bash
clear
users=`cat /etc/passwd|cut -f1,3 -d":"`

for i in $users
do
	usu=`echo $i|cut -f1 -d":"`
	ident=`echo $i|cut -f2 -d":"`
	if test $ident -ge 1000
	then
		echo "EL usuario $usu"
	fi
done
exit 0
