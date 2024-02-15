#!/bin/bash
#21-masgrande.sh Escribe un script que muestre un listado de todos los ficheros del directorio actual
#con un tamaño mayor al que se pasa como argumento

if [ $# -ne 1 ];then
	echo "Sintaxis incorrecta, $0 tamaño_en_bytes" 
	exit 1
fi

find . -type f -size +$1c

