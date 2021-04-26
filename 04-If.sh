#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
clear
echo "___________________"
echo "Mayoría de edad"
echo "___________________"
#funcion del if
read -p "Introduzca su edad:" edad
if [ $edad -ge 18 ]
then
	echo "Puedes votar"
	echo "Pero vota con cabeza"
else
	echo "No puedes votar"
	echo "Mala suerte"
fi

