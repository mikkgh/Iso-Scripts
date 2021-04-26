#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
Saludos()
{
    echo "Saludos $1"
}
#Bloque principal
clear
read -p "Escribe tu nombre: " nom1
Saludos $nom1
