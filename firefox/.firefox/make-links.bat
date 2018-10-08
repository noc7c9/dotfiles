@echo off

set config=%~dp0
set config=%config:~0,-1%
set profile=%appdata%\Mozilla\Firefox\Profiles\Main

mklink "%profile%\chrome\userChrome.css" "%config%\userChrome.css"
mklink "%profile%\user.js" "%config%\user.js"
