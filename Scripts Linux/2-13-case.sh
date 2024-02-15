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
	read -p "Opción (6 para terminar y 5 para mostrar las opciones): " num
}

menu

while [ "$num" != "6" ]
do
	case $num in
		1) df;;
		2) read -p "Opción (6 para terminar y 5 para mostrar las opciones): " num
		du -sh "num";;
		3) free -k;;
		4) pstree | more ;;
		5) menu;;
		6) exit;;
		*) echo "$num no es una opción válida";;
	esac
done
