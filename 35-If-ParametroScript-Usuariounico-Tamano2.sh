#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
#Parámetros
#Variables
usuario=$1
parametros=$#
#Funciones
Encabezado()
{
    clear
    echo "________________________"
    echo "Espacio en disco"
    echo "________________________\n"
}
CompruebaParametro()
{
    if [ $parametros -ne 1 ]
    then
        echo "Necesito un sólo parámetro\n"
        exit 1
    fi
}
CompruebaUsuario()
{
    respuesta=$(getent passwd | grep -w "/home/$usuario")
    echo $respuesta
    if [ -z "$respuesta" ]
    then
        echo "El usuario no existe\n"
        exit 1
    else
       du -h /home/$usuario | tail -n 1 
    fi
}
#bloque principal
Encabezado
CompruebaParametro
CompruebaUsuario
