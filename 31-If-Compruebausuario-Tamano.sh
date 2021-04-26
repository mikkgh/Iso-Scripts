#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
#Parámetros
#Variables
#Funciones
Encabezado()
{
    clear
    echo "________________________"
    echo "Espacio en disco"
    echo "________________________"
}
CompruebaUsuario()
{
    read -p "Escribe nombre de usuario: " usuario
    respuesta=$(getent passwd | grep -w "$usuario")
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

