 @echo off
setlocal enabledelayedexpansion

tasklist /fo csv | sort > procesos.csv

set cuenta=0

for /f "delims=, tokens=1" %%a in ( procesos.csv ) do (
    echo %%a >> pass_listos.txt
)

type pass_listos.txt | sort /unique >> procesos_fin.txt













