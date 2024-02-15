@echo off
setlocal enabledelayedexpansion
rem Diseña un script que simule una calculadora

:inicio
cls
echo Es posible realizar las siguientes operaciones:
echo 1. Suma
echo 2. Resta
echo 3. Multiplicacion
echo 4. Division
echo 5. Salir

set /p opcion=Introduzca el tipo de operacion que desea realizar (1, 2, 3, 4 o 5): 


if "%opcion%" == "" (
    echo Debe introducir una opcion del menu
    goto :inicio
)  


if "%opcion%" == "5" (
    exit
) 

set /p num1=Introduza el primer numero: 
set /p num2=Introduza el segundo numero: 

if "%opcion%" == "1" (
    echo Ha elegido %opcion% Sumar
    set /A suma=%num1%+%num2%
    echo Resultado: !suma!
    pause
    goto :inicio
)

if "%opcion%" == "2" (
    echo Ha elegido %opcion%. Restar
    set /A resta=%num1%-%num2%
    echo Resultado: !resta!
    pause
    goto :inicio
)
if "%opcion%" == "3" (
    echo Ha elegido %opcion%. Multiplicar
    set /A mult=%num1%*%num2%
    echo Resultado: !mult!
    pause
    goto :inicio
)
if "%opcion%" == "4" (
    echo Ha elegido %opcion%. Dividir
    set /A div=%num1%/%num2%
    echo Resultado: !div!
    pause
    goto :inicio
)
 


@REM if "%opcion%" == "1" (
@REM     set /p operador=+
@REM ) else if "%opcion%" == "2"(
@REM     set /p operador=-
@REM ) else if "%opcion%" == "3"(
@REM     set /p operador=/
@REM ) else if "%opcion%" == "4"(
@REM     set /p operador=*
@REM )

@REM  echo Ha elegido %opcion%
@REM set /A resultado=%num1% %operador% %num2%
@REM echo Resultado: %resultado%
















