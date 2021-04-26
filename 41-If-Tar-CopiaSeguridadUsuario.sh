#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
#Parámetros
#Variables
FECHA=$(date +%d-%m-%Y-%H:%M)
#Funciones
CompruebaRoot()
{
    if [ "$(whoami)" != "root" ]
    then
        echo "No eres Root"
        exit 1
    fi
}
ComprobarUsuario()
{
    comusuario=$1
    echo "Comprobar usuario"
    respuesta=$(getent passwd | grep -w $comusuario)
    if [ -z "$respuesta" ]
    then
        echo "El usuario $comusuario no existe"
        exit 1
    fi
}
CopiaUsuario()
{
    copusuario=$1
    echo "Realizar copia de seguridad"
    tar -zcvf /root/datos/$copusuario-$FECHA.tar.gz /home/$copusuario 2>/dev/null 1>.basura.tmp
}
#Bloque principal
clear
CompruebaRoot
read -p "Introduzca usuario: " usuario
ComprobarUsuario $usuario
CopiaUsuario $usuario
sleep 3
#Listado de copias del usuario en cuestión
#Si hay errores lo manda a /dev/null
ls /root/datos/$usuario* 2>/dev/null | nl

#Para restaurar la copia
#tar -zxvf /root/datos/heidi-fecha.tar.gz -C /

