@echo off
net start OracleServiceorcl 
lsnrctl start
set ORACLE_SID=orcl
echo startup|sqlplus / as sysdba
lsnrctl status
pause