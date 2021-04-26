#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
clear
echo "Menú"
echo "a) Espacio en disco"
echo "b) Usuarios conectados"
echo "c) Salir"
echo ""
read -p "introduzca una opción:" opcion
echo ""
case $opcion in
a)
	echo "Espacio en disco"
	df -h
	;;
b)
	echo "usuarios conectados"
	who
	;;
c)
	echo "Salir"
	exit 0
	;;
*)
	echo "Opción incorrecta"
	;;
esac

