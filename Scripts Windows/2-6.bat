@echo off

rem setlocal enabledelayedexpansion

set origen=%1
set destino=%2

if "%origen%" == "" goto error1
if not exist %origen%\. goto erro2

if "%destino%" == "" (
	if not exist C:\BACKUP\. (
		mkdir C:\BACKUP
	)
	xcopy %origen% C:\BACKUP /-Y /E
) else (
	if not exist %destino% (
		mkdir %destino%
	)
	xcopy %origen% %destino% /-Y /E
)
goto :EOF 

:error1
echo ERROR: Necesitas introducir al menos el origen
exit /b 1
:error2
echo ERROR: El directorio no existe
exit /b 1
