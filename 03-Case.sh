#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
clear
echo "_______________________"
echo "\t Menú"
echo "_______________________"
echo "1 fecha actual"
echo "2 calendario"
echo "3 salir"
read -p "Elige una opción: " opcion
case $opcion in
1)
	echo "La fecha actual es:$(date)"
	;;
2)
	echo "El calendario es: \n $(cal)"
	;;
3)
	echo "Adiós"
	exit 0
	;;
*)
	echo "Opción incorrecta, muy mal"
	exit 1
	;;
esac

