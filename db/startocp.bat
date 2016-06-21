@echo off
set ORACLE_SID=ocp
echo startup|sqlplus / as sysdba 
lsnrctl start
pause