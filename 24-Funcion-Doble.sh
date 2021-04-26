#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
Doble()
{
    read -p "introduzca un número: " numero
    echo "El doble de $numero es $(expr $numero \* 2)"
}
#Bloque principal
Doble
