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
    local nombre="vacío"
    read -p "tu nombre? " nombre
    echo "Adiós $nombre"
}
Saludos
Despedida
# la variable no es conocida, el echo no imprimirá el nombre
echo "Que tengas un buen día $nombre"
