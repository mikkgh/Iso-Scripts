#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: definición de funciones
#Parámetros
#Variables
#Funciones
cat dhcpd.leases.txt | grep "^lease" | cut -d" " -f2 > ip.tmp
cat dhcpd.leases.txt | grep "hardware"| cut -d" " -f5 | tr -d ";" > mac.tmp
paste -d+ ip.tmp mac.tmp
