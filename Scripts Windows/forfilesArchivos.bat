rem @echo off
setlocal enabledelayedexpansion

set file=%1
set fsize=%2
set size=%3

if %fsize% GEQ %size% (
    echo %file% ocupa mas de %size% bytes
    choice /m "¿Desea eliminarlo?"
    if "%errorlevel%" == "1" (
        echo Borrando %file%
    ) else (
        echo No se borrara el fichero
    )
) else (
    echo Nadas
)