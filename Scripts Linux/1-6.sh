#!/bin/bash
#Script que sume los números que se pasen como parámetros.

num1=$1
num2=$2

if [ $# -lt 2 ];then
	echo "Error: Sintaxis: $0 Numero1 [Numero2] ..."
else
	suma=0
	for con in $*
	do
		#echo $con
		#suma=$(($suma+$con))
		let suma=suma+con
	done
	echo "Los números que se van a sumar son: $*"
	echo "La suma de los $# numeros es = $suma"
fi
