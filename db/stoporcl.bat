@echo off
set ORACLE_SID=orcl
echo shutdown immediate|sqlplus / as sysdba 
lsnrctl stop
pause