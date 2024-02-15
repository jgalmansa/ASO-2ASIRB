@echo off
setlocal enabledelayedexpansion

tasklist /fo csv | sort > procesos.csv

set proceso="nada"
for /f "delims=, tokens=1" %%a in ( procesos.csv ) do (
    if not "!proceso!"=="%%a" (
        set proceso=%%a
        set /a cuenta=0
        echo Proceso vale !proceso!
    ) else (
        set /a cuenta=cuenta+1
        if !cuenta! EQU 5 (
            choice /M "¿Quieres borrar el proceso %%a?"
            if "!errorlevel!" == "1" (
                echo Borrando %%a
            )
        ) else (
            echo !proceso!
        )
    )
)




