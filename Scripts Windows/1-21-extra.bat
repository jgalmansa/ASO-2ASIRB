@echo off

if "%1" == "" (
    echo Sintaxis incorrecta: %0 fichero
    echo Este script creará los directorios que se indiquen dentro de un fichero
    goto :EOF
)

if not exist %1 (
    echo No existe el fichero
    goto :EOF
) else (
    if exist %1\ (
        echo %1 es un directorio
        goto :EOF
    )
)

for /f "delims=: tokens=1" %%a in ( %1 ) do (
    echo %%a
    if not exist "%%a" (
        mkdir "%%a"
        if errorlevel 1 (
            echo No se ha podido crear el directorio %%a
        ) else (
            echo Se ha creado el directorio %%a
        )
    ) else (
        echo El directorio %%a ya existe
    )
)




