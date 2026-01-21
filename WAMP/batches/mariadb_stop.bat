@echo off
cd /D %~dp0
echo MariaDB shutdown ...

mariadb\bin\mysql.exe -u root -e SHUTDOWN

if not exist mariadb\data\%computername%.pid GOTO exit
echo Delete %computername%.pid ...
del mariadb\data\%computername%.pid

:exit
