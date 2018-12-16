@echo off

set vmname=%1
if not defined vmname set vmname=default
docker-machine env --shell cmd %vmname% >> %TEMP%\_docker_setup_env_.bat
type %TEMP%\_docker_setup_env_.bat
call %TEMP%\_docker_setup_env_.bat
del /f %TEMP%\_docker_setup_env_.bat
