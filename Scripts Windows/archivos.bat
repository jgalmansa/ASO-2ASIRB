rem @echo off
set /p tam=Introduzca tamaño minimo (bytes): 
set /p dir=Indique el directorio: 

if "%dir%" == "" (
    rem echo Debe indicar un directorio
    rem goto :eof
    set dir="c:\"
)
echo %dir%
dir %dir%
rem %~p0 expande %0 solo a una ruta
set nombre="%~p0forfilesArchivos.bat"
rem set nombre="forfilesArchivos.bat"

forfiles /p %dir% /s /c "cmd /c %nombre% @file @fsize %tam%"