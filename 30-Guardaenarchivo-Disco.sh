#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
#Parámetros
#variables
FECHA=$(date +%d-%m-%Y-%H:%M)
ARCHIVO=Informe-Disco-$FECHA.inf
#funciones
Encabezado()
{
    echo "###########################"
    echo "Informe ocupación del disco"
    echo "###########################"
    echo "Fecha: $FECHA"
    df -hT / /home
}
#bloque principal
echo "la info va a $ARCHIVO"
Encabezado > $ARCHIVO

