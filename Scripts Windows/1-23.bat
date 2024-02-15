@echo off


echo 1: Conectar un recurso compartido
echo 2: Ver recursos compartidos disponibles
echo 3: Borrar un recurso compartido
echo 4: Salir

set /p opcion=Introduzca una opcion: 

if "%opcion%" == "" (
    echo Debe introducir una opcion del menu
    goto :inicio
) 

if "%opcion%" == "1" (
        set /p nombre = Introduzca el nombre que le va a asignar a la unidad:
        set /p dir= Indica la ruta del directorio: 
        net use %nombre%: %dir% /PERSISTENT:NO
        echo Se ha creado la unidad de red
        goto :EOF
)

if "%opcion%" == "2" (
    net share
)

if "%opcion%" == "3" (
    set /p borrar= Indica la letra de unidad que desea borrar: 
    net use %borrar%: /delete
    echo Se ha eliminado la unidad de red
)

if "%opcion%" == "4" (
    exit
)


