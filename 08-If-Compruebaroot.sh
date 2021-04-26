#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
clear
echo "comprobación Root"
#funcion del if
if [ $(id -u) -eq 0 ]
then
	echo "eres Root"
	echo "bienvenido"
else
	echo "No eres root"
	echo "Mala suerte"
	exit 0
fi
echo "Adiós"
