@echo off

:: based on the csudo.cmd script that comes with conemu

setlocal enableextensions enabledelayedexpansion

:: conemu binary
set conemu_bin=%ConEmuBaseDir%\ConEmuC.exe

:: use 64-bit version if it exists
if exist "%ConEmuBaseDir%\ConEmuC64.exe" (
    set conemu_bin=%ConEmuBaseDir%\ConEmuC64.exe
)

if not exist "%conemu_bin%" (
    set errmsg=Error: Failed to find ConEmuC.exe or ConEmuC64.exe!
    set errcode=1
    goto error_exit
)

:: parse arguments
:loop

if "%~1"=="" goto loopend

if "%~1"=="-h"        goto usage
if "%~1"=="--help"    goto usage

if "%~1"=="-r" (
    set reverse=1
    goto loopcontinue
)
if "%~1"=="--reverse" (
    set reverse=1
    goto loopcontinue
)

if "%~1"=="-c" (
    set close=1
    goto loopcontinue
)
if "%~1"=="--close" (
    set close=1
    goto loopcontinue
)

set filename=%1

:loopcontinue
shift
goto loop
:loopend

:: make sure filename is valid
if "%filename%"=="" (
    :: no filename passed, so use default name
    set filename=.conemu-task
)

if not exist "%filename%" (
    set errmsg=Error: Unable to open task file
    set errcode=2
    goto error_exit
)

:: count the number of commands
:: necessary for calculating the split percentages
set count=1
for /F "tokens=*" %%c in (%filename%) do (
    set command[!count!]=%%c
    set /A count+=1
)
set /A count-=1

:: calculate split percentages to make sure all panes are the same size
if not "%close%"=="1" set close=0
for /L %%i in (1,1,%count%) do (
    if "%reverse%"=="1" (
        set /A "split_percent[%%i]=100 / (count - %%i + 2 - close)"
    ) else (
        set /A "split_percent[%%i]=100 / (%%i + 1 - close)"
    )
)

:: run the commands
if "%reverse%"=="1" (
    for /L %%i in (1,1,%count%) do (
        "%conemu_bin%" /c !command[%%i]! -new_console:bs!split_percent[%%i]!V
    )
) else (
    for /L %%i in (%count%,-1,1) do (
        "%conemu_bin%" /c !command[%%i]! -new_console:bs!split_percent[%%i]!V
    )
)

:: close this shell?
if "%close%"=="1" (
    exit 0
)

:: end of script
exit /b 0

:usage
echo usage: %0 [OPTIONS] [TASK_FILE]
echo
echo options:
echo    -h, --help      display
echo    -r, --reverse   open splits in reverse order as defined in the file
echo    -c, --close     close this shell after opening tasks
exit /b 0

:error_exit
echo %errmsg%
exit /b %errcode%
