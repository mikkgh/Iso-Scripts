#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
Suma()
{
    echo "La suma es: $(expr $1 + $2)"
    #el echo mostrará los parámetros de la función no del script
    echo "$1 y $2"
}
#Bloque principal parámetros función
clear
read -p "Introduce el valor de x:" num1
read -p "Introduce el valor de y:" num2
Suma $num1 $num2
# el echo mostrará los parámetros del script no de la función
echo "$1 y $2"