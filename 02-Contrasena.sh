#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
clear
date +Fecha:%d-%m-%y
stty -echo #desactivo echo
read -p "Escribe tu contraseña:" contr
echo #linea siguiente
stty echo #activo echo
echo "tu contraseña es $contr"

