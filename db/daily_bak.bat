@echo off
set ORACLE_SID=orcl
set ddate=%date:~0,4%%date:~5,2%%date:~8,2%
exp system/dang file=E:\�ٶ���ͬ����\ѧϰ����\Oracle\local_db_bak\dang_%ddate%.dmp log=E:\�ٶ���ͬ����\ѧϰ����\Oracle\local_db_bak\exp_dang_%ddate%.log owner=jiaozhu,luoluo,scott rows=y compress=n statistics=none
