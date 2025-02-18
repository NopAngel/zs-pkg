@echo off
title Custom Task Manager
color 0A

if "%1"=="" goto usage
if "%2"=="" goto usage

:inicio
cls
echo -------------------------------------
echo        Custom Task Manager
echo -------------------------------------
echo.
echo Use the arrow keys to navigate and Enter to select
echo.

call :menu

exit /b

:menu
echo [1] View all tasks
echo [2] Exit
echo.

set /p choice=Select an option: 

if "%choice%"=="1" goto view_tasks
if "%choice%"=="2" goto end
goto menu

:view_tasks
cls
color 0B
echo ----------------------------
echo Running Tasks
echo ----------------------------
echo.
tasklist
pause
goto inicio

:end
cls
color 0C
echo Exiting Task Manager...
timeout /t 2 >nul
exit

:usage
cls
echo -------------------------------------
echo        Custom Task Manager
echo -------------------------------------
echo.
echo Usage: 
echo %0 [param1] [param2]
echo.
echo Parameters:
echo param1 - Description for param1
echo param2 - Description for param2
echo.
exit /b
