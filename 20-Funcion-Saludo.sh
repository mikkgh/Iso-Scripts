#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
Saludos ()
{
    clear
    date +%d-%m-%Y-%H:%M
    echo "Buenos Días"
}
#Inicio
Saludos
read -p "Introduce tu nombre:" nombre
Saludos
