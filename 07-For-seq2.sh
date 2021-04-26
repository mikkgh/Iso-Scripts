#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
clear
for i in $(seq 1 50 254)
do

ping -w 1 192.168.1.$i

done
