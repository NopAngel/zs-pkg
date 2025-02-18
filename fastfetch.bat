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
echo          FAST FETCH
echo -------------------------------------
echo               ..        ..
echo  MMMMMMMMMMMMM MMMMMMMMMMMMMM           
echo  MMMMMMMMMMMMM MMMMMMMMMMMMMM        
echo  MMMMMMMMMMMMM MMMMMMMMMMMMMM      
echo  MMMMMMMMMMMMM MMMMMMMMMMMMMM    
echo  MMMMMMMMMMMMM MMMMMMMMMMMMMM   
echo  MMMMMMMMMMMMM MMMMMMMMMMMMMM  

echo  MMMMMMMMMMMMM MMMMMMMMMMMMMM
echo  MMMMMMMMMMMMM MMMMMMMMMMMMMM
echo  MMMMMMMMMMMMM MMMMMMMMMMMMMM
echo  MMMMMMMMMMMMM MMMMMMMMMMMMMM 
echo  MMMMMMMMMMMMM MMMMMMMMMMMMMM 
echo
echo -------------------------------------
echo PC: !hostname!   
echo Windows Version: !windows_version!
echo Architecture:       !architecture!
echo RAM consumption:        !ram_mb! MB
echo -------------------------------------

endlocal
pause
