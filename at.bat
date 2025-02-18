@echo off
title Administrador de Tareas Personalizado

:menu
cls
echo -------------------------------------
echo        Administrador de Tareas
echo -------------------------------------
echo.
echo Selecciona una opción:
echo.
echo 1. Ver todas las tareas
echo 2. Salir
echo.

set /p choice=Opción:

if "%choice%"=="1" goto ver_tareas
if "%choice%"=="2" goto fin

:ver_tareas
cls
color 0A
echo ----------------------------
echo Tareas en Ejecución
echo ----------------------------
echo.
tasklist
pause
goto menu

:fin
cls
echo Saliendo del Administrador de Tareas...
timeout /t 2 >nul
exit
