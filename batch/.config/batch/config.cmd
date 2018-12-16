@echo off

:: set prompt
prompt $E[92m$P$E[90m$_$E[90m$$$E[m$S$E]9;12$E\

:: aliases
doskey /macrofile=%~dp0\aliases

:: default codepage should be utf8 (65001)
chcp 65001 >> nul

:: add local binaries to start of path
set PATH=%~dp0\bin;%PATH%

:: add local node binaries to start of path
set PATH=.\node_modules\.bin;%PATH%

:: inject clink
"C:\Program Files (x86)\clink\0.4.9\clink.bat" inject --ansi --autorun --profile ~\clink
