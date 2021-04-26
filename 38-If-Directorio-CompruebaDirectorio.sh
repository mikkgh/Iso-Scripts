#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
#Parámetros
#Variables
#Funciones
clear
read -p "Introduzca directorio: " directorio
    if [ -d $directorio ]
    then
        echo "El directorio $directorio existe"
    else
        echo "El directorio $directorio no existe"
        echo "Lo vamos a crear"
        mkdir $directorio
    fi
