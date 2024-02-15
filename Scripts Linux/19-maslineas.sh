#!/bin/bash
#19-maslineas.sh: debe recicbir dos parámetros (dir y palabra), debe mostrar por pantalla el archivo de ese directorio que contenga más líneas con la palabra que le hemos pasado. Puedes comprobar la ejecución con el directorio heapsort y la palabra heap.

if [ $# -lt 2 ];then
	echo "Sintaxis incorrecta, faltan parámetros"
elif [ $# -ge 3 ];then
	echo "Sintaxis incorrecta, sobran parámetros"
fi

max=0
for i in $(ls $1/*)
do
	if [ -f $i ];then
		contar=$(grep -c $2 $i)
		if [ $contar -ge $max ];then
			max=$contar
			archivomax=$i
		fi
	fi
done
if [ ! -e $archivomax ];then
	echo "No se ha encontrado ningún archivo con la palabra $2"
	exit 1
else
	echo "$archivomax tiene $max veces la palabra $2"
fi

