@echo off
setlocal enabledelayedexpansion

REM Obtener el nombre del equipo
for /f "tokens=2 delims==" %%a in ('wmic computersystem get name /value') do (
    set "hostname=%%a"
)

REM Obtener la versión de Windows
for /f "tokens=2 delims==" %%a in ('wmic os get version /value') do (
    set "windows_version=%%a"
)

REM Obtener la arquitectura del sistema
for /f "tokens=2 delims==" %%a in ('wmic os get osarchitecture /value') do (
    set "architecture=%%a"
)

REM Obtener la cantidad de memoria RAM
for /f "tokens=2 delims==" %%a in ('wmic computersystem get totalphysicalmemory /value') do (
    set "ram=%%a"
)
set /a ram_mb=!ram:~0,-3!/1024/1024

REM Mostrar el arte ASCII de Windows 11 y la información del sistema
echo -------------------------------------
echo         Sistema Rápido Fetch
echo -------------------------------------
echo               ..        ..
echo             MMMMMMMMMMMMMMMM
echo          MMMMMMMMMMMMMMMMMMMMMM
echo        MMMMMMMMMMMMMMMMMMMMMMMMMM
echo      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo     MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo   MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo   MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo   MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo   MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo         MMMMMMMMMMMMMMMMMMMMMMMMMM
echo              MMMMMMMMMMMMMMMMMM
echo
echo -------------------------------------
echo Nombre del equipo:  !hostname!
echo Versión de Windows: !windows_version!
echo Arquitectura:       !architecture!
echo Memoria RAM:        !ram_mb! MB
echo -------------------------------------

endlocal
pause
