#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
clear
echo "Calculadora"
echo "___________________ \n"
read -p "Introduce 2 números separados por espacio: " num1 num2
echo "$(expr $num1 = $num2)"
echo "$(expr $num1 != $num2)"
echo "$(expr $num1 \> $num2)"
echo "$(expr $num1 \>= $num2)"
echo "$(expr $num1 \< $num2)"
echo "$(expr $num1 \<= $num2)"

