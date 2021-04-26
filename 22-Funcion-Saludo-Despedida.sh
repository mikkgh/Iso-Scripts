#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
Saludos ()
{
    clear
    date +%d-%m-%Y-%H:%M
    echo "Buenos Días"
}
Despedida ()
{
    read -p "tu nombre? " nombre
    echo "Adiós $nombre"
}
Saludos
Despedida
echo "Que tengas un buen día $nombre"
