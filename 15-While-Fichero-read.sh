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
    read -p "Pon tu nombre:" nombre
#la estructura lee el read de un fichero, 
#no hará caso al read de nombre
    echo "Hola $linea"
    echo "Hola amigo $nombre"
    if [ "$linea" = "pepe" ]
    then
        echo "Eres mi mejor colega"
    fi
done < Amigos.txt
