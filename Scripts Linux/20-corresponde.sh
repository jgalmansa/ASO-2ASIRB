#!/bin/bash
#20-corresponde: Escribe un script que muestre por pantalla c´uantos de sus par´ametros corresponden
#a nombres de ficheros y cu´antos a nombres de directorios. Adem´as deber´a decir la talla media
#de los ficheros que se le han pasado (recuerda que puedes medir el tama˜no en bytes con la
#orden wc -c.).

if [ $# -lt 1 ];then
	echo "Sintaxis incorrecta, faltan parámetros"
else
	tamano=0
	totalTamano=0
	numNo=0
	for i in $*
	do
		if [ -f $i ];then
			let numFicheros=numFicheros+1
			tamano=$(wc -c $i | cut -d " " -f 1)
			let totalTamano=$totalTamano+$tamano
		elif [ -d $i ];then
			let numDirectorio=numDirectorio+1
		else 
			let numNo=numNo+1
		fi
	done

	let mediaTamano=$totalTamano/$numFicheros
	echo "Hay $numFicheros ficheros y su tamaño medio de de $mediaTamano bytes"
	echo "Hay $numDirectorio directorios"
	echo "Hay $numNo parámetros que no correcponden ni con un fichero ni un directorio"
fi
