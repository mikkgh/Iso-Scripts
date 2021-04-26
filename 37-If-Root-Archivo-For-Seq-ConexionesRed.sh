#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
#Parámetros
#Variables
FECHA=$(date +%d-%m-%Y-%H:%M)
FECHAC=$(date +%d-%m-%Y)
RED="192.168.2"
#Funciones
Encabezado()
{
    echo "________________________"
    echo "INFORME DE SERVIDORES"
    echo "Fecha: $FECHA"
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
PideDatos()
{
    echo "________________________"
    echo "Toma de Datos"
    echo "________________________\n"
    
    read -p "Introduce ip inicial: " ipini
    read -p "Introduce ip final: " ipfin
}
CompruebaIp()
{
    Encabezado
    for i in $(seq $ipini 1 $ipfin)
    do
    ip1=$RED.$i
    norecibido=$(ping -w 1 $ip1 | grep -w '0 received')
    if [ -z "$norecibido" ]
    then
        echo "$ip1:Sí hay conexión"
    else
        echo "$ip1:No hay conexión"
    fi
    done
}
#bloque principal
CompruebaRoot
PideDatos
CompruebaIp >> InformePing-$FECHAC.inf
