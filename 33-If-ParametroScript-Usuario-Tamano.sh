#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
#Parámetros
#Variables
usuario=$1
#Funciones
Encabezado()
{
    clear
    echo "________________________"
    echo "Espacio en disco"
    echo "________________________\n"
}
CompruebaUsuario()
{
    respuesta=$(getent passwd | grep -w "/home/$usuario")
    echo $respuesta
    if [ -z "$respuesta" ]
    then
        echo "El usuario no existe"
        exit 1
    else
       du -h /home/$usuario | tail -n 1 
    fi
}
#bloque principal
Encabezado
CompruebaUsuario
