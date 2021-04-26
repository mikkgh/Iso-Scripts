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
    echo "________________________\n"
}
CompruebaRoot()
{
    if [ "$(whoami)" != "root" ]
    then
        echo "No eres Root"
        exit 1
    fi
}
UsuariosSeleccionados()
{
    local usuarios
    usuarios=$(getent passwd | awk -F: '$3>=1000 && $3<2000 {print $1}')
    for i in $usuarios
    do
        du -h /home/$i | tail -n 1
    done
}
#bloque principal
Encabezado
CompruebaRoot
UsuariosSeleccionados
