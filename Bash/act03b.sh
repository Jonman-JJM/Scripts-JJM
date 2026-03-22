#!/bin/bash
clear

echo "dime tu edad: "
read num

if test $num -gt 21
then    
        echo "Puedes beber"
else    
        echo "NO PUEDES BEBER"
fi

exit 0

