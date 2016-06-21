@echo off
set ORACLE_SID=ocp
echo shutdown immediate|sqlplus / as sysdba 
pause