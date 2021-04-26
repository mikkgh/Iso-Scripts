#!/bin/bash
#Autor: Miguel Ángel Lobato
#Versión: 1.0
#Descripción: plantilla
fecha=$(date +%d-%m-%Y-%H:%M)
clear
echo "copias de seguridad heidi pedro"
#funcion del for
for i in heidi pedro
do
echo "copia de: $i"
tar -zcvf /root/$i-$fecha.tar.gz /home/$i 2>/dev/null
done
ls /root




