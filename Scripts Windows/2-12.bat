@echo off
setlocal enabledelayedexpansion

rem %1 es donde se hara la copia
rem %2, %3, etc, lo que se copiara


if "%2" == "" (
    echo "Se necesitan minimo dos parametros"
    goto :EOF
)
if not exist "%1\." (
    echo "No existe"
    goto :EOF
)

set count=0
for %%i in ( %* ) do (
    set /a count+=1
    rem echo !count!
    if !count! gtr 1 (
        xcopy /E /Y "%%i" "%1"
        rem del /F /S /Q "%%i"
    )
)


