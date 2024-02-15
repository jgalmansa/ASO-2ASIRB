@echo off

rem Diseña un script que realice una búsqueda de archivos según su extensión (música, texto, imagen, video) la cual será indicada 
rem por el usuario, depurando los posibles errores.
rem Usar forfile
rem NOTA: el forfiles no funciona, hay que preguntar

set /p ext=Introduzca la extension que quiera buscar: 
set /p dir=Introduzca el directorio: 

if "%ext%" == "" (
    echo Indique una extenson
    goto :EOF
) 

if "%dir%" == "" (
    echo Indique un directorio
    goto :EOF
)

if not exist "%dir%\" (
    echo Indique un directorio existente
    goto :EOF
) else (
    forfiles /P %dir% /M *.%ext% /C "/cmd /c dir %dir%\*.%ext% @fsize"
    if errorlevel 1 (
        echo No hay ficheros con la extension "%ext%" en el directorio %dir%
    )
)

















