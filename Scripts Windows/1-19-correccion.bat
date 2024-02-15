@echo off

if "%2" == "" (
    echo Sintaxis incorrecta: %0 V/B fichero
    echo V: para visualizar el contenido del fichero
    echo B: para eliminar el fichero
    goto :EOF
)

if not exist %2 (
    echo No existe el fichero
    goto :EOF
) else (
    if exist %2\ (
        echo %2 es un directorio
        goto :EOF
    )
)

if "%1" == "V" (
    goto :V
) else if "%1" == "B" (
    goto :B  
) else (
    echo Sintaxis incorrecta: V/B y fichero
    goto   :EOF
)




:V
echo Ha elegido visualizar el contenido del fichero
pause
type %2
goto :EOF

:B
echo Ha elegido eliminar el fichero
pause
rm %2
goto :EOF


