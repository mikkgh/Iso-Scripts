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
#2 saludos seguidos
Saludos
read -p "Introduce tu nombre: " nombre
#para el programa obligando a pulsar una tecla
read -p "Pulsa intro para continuar " intro
Saludos
