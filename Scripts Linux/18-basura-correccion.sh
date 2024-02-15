#!/bin/bash
#Este script requiere al menos un parametro en el que se indique un fichero existente
#ENUNCIADO:
#Escribe un script de nombre basura.sh, que enviar´a/recuperar´a archivos a/de la papelera. Para ello, debe crear primero (si no existe ya) la papelera, que puede ser un directorio oculto .deleted en tu directorio de usuario /users/alumni/?/al0xxxxx. basura.shpodr´a recibir una lista de nombres de fichero, para cada uno de los cuales comprobar´a:
#1. Si el archivo se encuentra en el directorio actual, en cuyo caso lo enviar´a a la papelera.
#2. Si el archivo se encuentra en la papelera, en cuyo caso lo recuperar´a movi´endolo al
#directorio actual.
#3. Si el archivo no existe

#Comprobar el num de parametros
#if [ $# -le 2 ];then --> funcionaría pero no es lo correcto
#if [ $# -lt 1 ];then
if [ $# -eq 0 ];then
	echo "Se reqiere al menos un parámetro"
	echo "$0 fichero1 fichero2"
	exit 1
else
	echo "Los parámetros son: $*"
fi

#Crear papelera
papelera="$HOME/.deleted"
if [ ! -e $papelera ];then
        mkdir $papelera
elif [ ! -d $HOME/.deleted ];then
	echo "El fichero $HOME/.deleted debería ser un directorio"
	exit 2
fi


#Recorrer parámetros, comprobar si existe y comprobar donde se ecuentra
for argumento in $*
do
	if [ -f $argumento ];then
		mv $argumento $HOME/.deleted/$argumento
		echo "Se ha movido a la basura $argumento correctamente"
	elif [ -d $argumento ];then
		echo "$argumento es un directorio, introduzca un  fichero válido"
	elif [ -e $HOME/.deleted/$argumento ];then
		mv $HOME/.deleted/$argumento ./
		echo "Se ha movido $argumento al directorio actual ($HOME/scripts)"
	else
		echo "$argumento no es un fichero"
	fi
done

