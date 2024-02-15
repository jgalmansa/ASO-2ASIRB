#!/bin/bash
#Crear un script que pueda seleccionar entre las siguientes acciones:
#• Mostrar el espacio ocupado y disponible del disco (df).
#• Indicar el tamaño de ficheros o directorios introducidos por teclado(du).
#• Consultar la distribución de la memoria con totales en kilobytes(free).
#• Mostrar el árbol de procesos(pstree)

clear

menu(){
	echo "Seleccione una opción: "
	echo "1: Mostrar el espacio ocupado y disponible en el disco"
	echo "2: Indicar el tamaño de ficheros o directorios introducidos por teclado"
	echo "3: Consultar la distribución de la memoria con totales en kilobytes"
	echo "4: Mostral el aŕbol de procesos"

	echo -e "\n"
	read -p "Opción (fin para terminar y m para mostrar las opciones): " num
}

menu

while [ "$num" != "fin" ]
do
	if [ "$num" == "1" ];then
		echo "Espacio ocupado y disponible en el disco: "
		df
	elif [ "$num" == "2" ];then
		read -p "Introduzca un directorio o fichero (fin para terminar): " dir
		echo -e "\n"
		while [ "$dir" != "fin" ]
		do
			echo "Tamaño de " $dir
			du $dir
			echo -e "\n"
			read -p "Introduzca un directorio (fin para terminar): " dir
			echo -e "\n"
		done
	elif [ "$num" == "3" ]; then
		echo "Distribución de memoria"
		free --kilo
	elif [ "$num" == "4" ];then
		echo "Árbol de procesos"
		pstree
	elif [ "$num" == "m" ];then
		menu
	else
		echo "Debe introducir una opción válida "
	fi
	echo -e "\n"
	read -p "Opción (fin para terminar y m para mostrar las opciones): " num
	
done
echo "Fin del programa"

