#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
#parámetros
nombre1=$1
nombre2=$2
clear
#el número de parámetros debe ser 2 o error
if [ $# -eq 2 ]
then
    echo "Bienvenido, $nombre1 y $nombre2"
else  
    echo "no has introducido 2 parámetros"
    exit 1
fi