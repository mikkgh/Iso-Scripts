#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
clear
echo "Calculadora"
echo "___________________ \n"
read -p "Introduce 2 números separados por espacio: " num1 num2
suma=$(expr $num1 + $num2)
resta=$(expr $num1 - $num2)
multiplica=$(expr $num1 \* $num2)
resto=$(expr $num1 % $num2)
echo "\n La suma es $suma"
echo "\n La resta es $resta"
echo "\n la multiplicación es $multiplica"
echo "\n el resto es $resto"
