#!/bin/bash
#Diseña un script que realice el siguiente proceso:
#Buscar los ficheros que contengan una serie de caracteres que el usuario introducirá por 
#teclado, mostrando por pantalla todos los ficheros que los contengan. El proceso se ejecutará
#hasta que el usuario introduzca un carácter determinado.

read -p "Teclea una letra (!! para salir): " letra
while [ "$letra" != "!!" ]
do
	if [ "$letra" != "" ];then
		ls *$letra* 2> /dev/null
	fi
	read -p "Introduce algún caracter (!! para salir): " letra
done
echo "Has finalizado el programa"
