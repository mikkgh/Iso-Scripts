#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
Suma()
{
    echo "La suma es: $(expr $num1 + $num2)"
}
#Bloque principal variables globales
clear
read -p "Introduce el valor de x:" num1
read -p "Introduce el valor de y:" num2
Suma $num1 $num2