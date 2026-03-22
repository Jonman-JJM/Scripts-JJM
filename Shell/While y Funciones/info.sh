#!/bin/bash
clear
users=`cat /etc/passwd|cut -f1,3,4,6 -d":"`

for i in $users
do
        usu=`echo $i|cut -f1 -d":"`
        ident=`echo $i|cut -f2 -d":"`
	group=`echo $i|cut -f3 -d":"`
	home=`echo $i|cut -f4 -d":"`

        if test $ident -ge 1000
        then
		nomgrp=`cat /etc/group|cut -f1,3 -d":"|grep -w $group$|cut -f1 -d":"`
		echo "EL $usu => $nomgrp => $home => $ident"
        fi
done

exit 0
