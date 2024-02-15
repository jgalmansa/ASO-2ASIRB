@echo off

if "%2" == "" (
    echo Se necesitan al menos dos parametros, un directorio y yn fichero minimo
    goto :EOF
)

if not exist "%1\" (
    echo Introduzca un directorio valido
    goto :EOF
) 

if not exist "%2" (
    echo Introduzca un fichero valido
    goto :EOF
)

for  %%i in ( %* ) do (
    if not exist "%%i" (
        echo Introduzca un fichero valido
        goto :EOF
    ) else (
        if %%i == %1 (
            set %%i=""
        ) else (
            xcopy %%i %1
        )
    )
)



