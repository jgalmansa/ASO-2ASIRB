@echo off
rem Crea un fichero bat que recorra un fichero de texto, que será introducido 
rem como parámetro, pasando cada una de las líneas de dicho fichero a otro fichero 
rem hasta que la línea contenga un carácter determinado. Controlar todos los 
rem posibles errores.

if "%1" == "" (
    echo Indique un fichero
    goto :EOF
) 
if "%2" == "" (
    echo Indique una cadena alfanumerica que quiera buscar en el fichero
    goto :EOF
)
if not exist "%1" (
    echo Indique un fichero exisente
    goto :EOF
)

find "%2" %1




