@echo off
set ORACLE_SID=orcl
set ddate=%date:~0,4%%date:~5,2%%date:~8,2%
exp system/dang file=E:\百度云同步盘\学习资料\Oracle\local_db_bak\dang_%ddate%.dmp log=E:\百度云同步盘\学习资料\Oracle\local_db_bak\exp_dang_%ddate%.log owner=jiaozhu,luoluo,scott rows=y compress=n statistics=none
