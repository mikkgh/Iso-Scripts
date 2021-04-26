#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
#Parámetros
#Variables
opcion=$1
usuario=$2
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
    respuesta1=$(getent passwd | grep -w "$comusuario")
    respuesta2=$(who | grep -w "$comusuario")
    if [ -n "$respuesta1" ] && [ -z "$respuesta2" ]
    then
        echo "El usuario $comusuario existe y no está conectado"
        sleep 3
        return 0
    else
        echo "El usuario $comusuario no existe o está conectado"
        sleep 3
        return 1
    fi
}
CopiaUsuario()
{
    FECHA=$(date +%d-%m-%Y-%H:%M:%S)
    echo "Realizar copia de seguridad"
    ComprobarUsuario $usuario
    resultado=$?
    if [ $resultado -eq 0 ]
    then
        tar -zcvf /root/datos/$usuario-$FECHA.tar.gz /home/$usuario 2>/dev/null 1>.basura.tmp
        ls -t /root/datos/$usuario* 2>/dev/null | nl
    fi
}
RestaurarCopia()
{
    echo "Restaurar copia de seguridad"
    ComprobarUsuario $usuario
    resultado=$?
    if [ $resultado -eq 0 ]
    then
        ls -t /root/datos/$usuario* | nl
        copia=$(ls -t /root/datos/$usuario* | nl | grep -w "1" | cut -f2)
        echo "se va a proceder a restaurar la copia: $copia"
        tar -zxvf $copia -C /
    else
        echo "No se pudo realizar la copia"
    fi
}
#Bloque principal
clear
CompruebaRoot
case $opcion in
    c) CopiaUsuario;;
    r) RestaurarCopia;;
    *) echo "Opción incorrecta";;
esac
