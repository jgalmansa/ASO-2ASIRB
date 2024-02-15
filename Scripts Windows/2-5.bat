@echo off

rem Ejercicio 5
rem Crear un fichero por lotes que copie cualquier número de ficheros 
rem introducidos como parámetros, en el directorio C:\TEXTOS. Si no existe 
rem el directorio TEXTOS se debe crear automáticamente.



if not exist C:\TEXTOS (mkdir C:\TEXTOS)
for %%G in ( %* ) do (
	copy %%G C:\TEXTOS
)



