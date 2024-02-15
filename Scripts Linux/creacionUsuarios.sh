#!/bin/bash
#Script de crear usuarios desde una hoja de cálculo
usuarios=$(cat usuarios.csv)
num=0

while read -r fila
do
	nombre=$( echo $fila | cut -d ";" -f 1)
	shell=$( echo $fila | cut -d ";" -f 4)
	home=$( echo $fila | cut -d ";" -f 2)
	coment=$( echo $fila | cut -d ";" -f 5)
	passwd=$( echo $fila | cut -d ";" -f 3)

	comprobar=$(sudo cat /etc/passwd | grep $nombre | cut -d ":" -f 1)
	
	if [ "$comprobar" == "" ];then
	
		echo "Fila: $num $fila "
		echo "Usuario: $nombre"
		echo "Shell: $shell"
		echo "Home: $home"
		echo "Comentario: $coment"
		echo "Contraseña: $passwd"
		echo -e "\n"
	
		sudo useradd $nombre -m -d $home -p $passwd -s $shell -c "$coment"
		echo "Comprobación de que se ha creado el usuario $usuario (fichero /etc/passwd)"
		echo $(sudo cat /etc/passwd | grep $nombre)
		echo -e "\n"
		
	elif [ "$comprobar" == "$nombre" ];then
		echo "Se eliminará el usuario $nombre"
		sudo userdel -r $nombre 2> /dev/null
		
	fi
done < usuarios.csv





