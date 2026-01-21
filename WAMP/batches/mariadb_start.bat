@echo off
cd /D %~dp0
echo Diese Eingabeforderung nicht waehrend des Running beenden
echo Please dont close Window while MySQL is running
echo MariaDB is trying to start
echo Please wait  ...
echo MariaDB is starting with mariadb\data\my.ini (console)

mariadb\bin\mariadbd.exe --console

if errorlevel 1 goto error
goto finish

:error
echo.
echo MariaDB konnte nicht gestartet werden
echo MariaDB could not be started
pause

:finish
exit
