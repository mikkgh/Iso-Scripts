#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
#Parámetros
#Variables
#Funciones
Menu()
{
    echo "
    *****************************************
    Copia y restauración de copias de seguridad
    *****************************************
    1.- Realizar copia de seguridad.
    2.- Restaurar copia de seguridad.
    3.- Salir"
}
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
    read -p "Introduzca usuario: " usuario
    ComprobarUsuario $usuario
    resultado=$?
    if [ $resultado -eq 0 ]
    then
        tar -zcvf /root/datos/$usuario-$FECHA.tar.gz /home/$usuario 2>/dev/null 1>.basura.tmp
        ls /root/datos/$usuario* 2>/dev/null | nl
    fi
}
RestaurarCopia()
{
    echo "Restaurar copia de seguridad"
    read -p "Introduzca usuario: " usuario
    ComprobarUsuario $usuario
    resultado=$?
    if [ $resultado -eq 0 ]
    then
        ls -t /root/datos/$usuario* | nl
        read -p "Elige el número de la copia a restaurar: " ncopia
        if [ -z $ncopia ]
        then
            copia=$(ls -t /root/datos/$usuario* | nl | grep -w "1" | cut -f2)
            echo "se va a proceder a restaurar la copia: $copia"
            read -p "Pulse intro para comenzar" intro
            tar -zxvf $copia -C /

        else
            copia=$(ls -t /root/datos/$usuario* | nl | grep -w "$ncopia" | cut -f2)
            echo "se va a proceder a restaurar la copia: $copia"
            read -p "Pulse intro para comenzar" intro
            tar -zxvf $copia -C /
        fi
    else
        echo "No se pudo realizar la copia"
    fi
}
#Bloque principal
clear
CompruebaRoot
Menu
read -p "Introduce una opción: " opcion
while [ "$opcion" != "3" ]
do
    case $opcion in
    1) CopiaUsuario;;
    2) RestaurarCopia;;
    *) echo "Opción incorrecta";;
    esac
    read -p "Pulsa una tecla para continuar" intro
    clear
    Menu
    read -p "Introduce una opción: " opcion
done
echo "Se acabó lo que se daba"
