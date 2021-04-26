#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
#saluda a todos los nombres introducidos
nombres=$*
clear
for i in $nombres
do
    echo "Bienvenido, $i"
done