#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
clear
#variables
FECHA=$(date +%d-%m-%Y)
echo "$FECHA"
while read linea
do
    echo "Hola $linea"
    if [ "$linea" = "pepe" ]
    then
        echo "Eres mi mejor colega"
    fi
done < Amigos.txt
