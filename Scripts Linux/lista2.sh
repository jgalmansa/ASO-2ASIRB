#!/bin/bash
# lista.sh : Lista archivos de extensiones dadas por el usuario
# Termina cuando se escribe la extensi´on "fin"
read -p "Teclea una extensión: " ext
while [ $ext != "fin" ]
do
	lista=$(ls *.$ext 2>/dev/null)
	cant=$(echo $lista | wc -w)
	#echo $lista
	#echo $cant
	if [ $cant -gt 0 ]
	then
		echo "Los ficheros .$ext son:" $lista
	else
		echo "No hay ficheros con la extensión \".$ext\""
	fi
	read -p "Teclea otra extensión: " ext
done
echo "Has finalizado el programa"
