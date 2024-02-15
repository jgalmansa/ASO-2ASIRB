@echo off

rem Diseña un script en el que pida al usuario introducir un 
rem carácter por teclado y nos indique si ese carácter es una 
rem letra, un número. Se comprobar todos los errores.

set /p carac="Introduzca un numero o una letra: "


if "%carac:~1,1%"==""  (
    for /f %%i in ('echo %carac%:~0,1% ^| findstr "[a-zA-Z]"') do (
        echo %carac% es una letra
        goto :eof
    )
    
    for /f %%i in ('echo %carac% ^| findstr "[0-9]"') do (
        echo %carac% es un numero
        goto :eof
    )
) else (
    echo Introduzca solo un caracter
)










