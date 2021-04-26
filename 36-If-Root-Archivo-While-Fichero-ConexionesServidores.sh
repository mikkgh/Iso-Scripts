#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
#Parámetros
#Variables
FECHA=$(date +%d-%m-%Y-%H:%M)
FECHAC=$(date +%d-%m-%Y)
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
CompruebaArchivo()
{
    if [ -f servidores.txt ]
    then
        echo "El archivo existe, continuamos"
    else
        echo "No existe servidores.txt"
        exit 1
    fi
}
LeeIps()
{
    Encabezado
    while read linea
    do 
        ip1=$(echo "$linea" | cut -d: -f2)
        respuesta=$(ping -w 1 $ip1 | grep -w '0 received')
        if [ -z "$respuesta" ]
        then
            echo "$ip1:Sí hay conexión"
        else
            echo "$ip1:No hay conexión"
        fi        
    done < servidores.txt 
}
#bloque principal
CompruebaRoot
CompruebaArchivo
LeeIps >> InformeServidores-$FECHAC.inf
