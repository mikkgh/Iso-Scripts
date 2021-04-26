#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
#Parámetros
#variables
opcion=0
#funciones
Menu ()
{
    clear
    echo "Menú"
    echo "1.- Fecha del sistema"
    echo "2.- Calendario"
    echo "3.- Salir"
}
#Bloque principal
while [ $opcion != 3 ]
do
    Menu
    read -p "Introduzca una opción: " opcion
    case $opcion in 
    1)
        date
        ;;
    2)
        cal
        ;;
    3)
        exit 0
        ;;
    *)
        echo "Opción incorrecta"
        ;;
    esac
    read -p "Pulsa una tecla para continuar: " intro
done