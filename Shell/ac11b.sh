#!/bin/bash

# Buscar archivos .txt vacíos en el directorio actual
for f in `ls *txt`
do
    if ! test -s "$f"
    then
        echo "$f"
    fi
done

