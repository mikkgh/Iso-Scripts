#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
clear
while [ true ]
do
    echo "Hola"
    read -p "introduzca fin para terminar: " respuesta
    if [ "$respuesta" = "fin" ]
    then
    echo "Adiós"
    exit 0
    fi
done
