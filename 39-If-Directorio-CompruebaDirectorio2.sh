#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
#Parámetros
#Variables
#Funciones
clear
read -p "Introduzca directorio: " directorio
    if [ ! -d $directorio ]
    then
        mkdir $directorio
    fi
