#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
clear
for i in $(cat Amigos.txt)
do
	echo "Hola, $i"
	echo "Adiós, $i"
done

