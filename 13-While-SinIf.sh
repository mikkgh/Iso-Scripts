#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
clear
while [ "$respuesta" != "fin" ]
do
    echo "Hola"
    read -p "introduzca fin para terminar: " respuesta
done
echo "Adiós"