#!/bin/bash
#Escribe un script que pida un usuario por teclado y muestre por pantalla los datos de éste.
#Dicho proceso se realizará hasta que el usuario lo desee. Realizar este ejercicio utilizando 
#una función. 

#Creamos la función
usuario () {
	read -p "Introduzca el nombre de un usuario (fin para terminar): " usu
	while [ "$usu" != "fin" ]
	do
		if [ "$usu" != "" ];then
			id $usu
			read -p "Introduzca el nombre de un usuario (fin para terminar): " usu
		fi
	done
}

#Ejecutamos la función
usuario


