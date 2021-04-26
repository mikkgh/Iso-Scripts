#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
#parámetros
nombre=$1
clear
#el número de parámetros debe ser 1 o error
if [ $# -ne 1 ]
then
    echo "no has introducido parámetro"
    exit 1
else
    echo "Bienvenido, $nombre"
fi