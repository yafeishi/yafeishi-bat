@echo off 
set eth="本地连接"
set netmask=255.255.255.0
set gw=192.168.104.1
set dns=192.168.104.1
set ip=48
set ipend=255
set timeout=500
set baidu=123.125.114.144
set keyong=keyongip-%date:~0,4%-%date:~5,2%-%date:~8,2%-%time:~0,2%-%time:~3,2%.txt
set bukeyong= bukeyongip-%date:~0,4%-%date:~5,2%-%date:~8,2%-%time:~0,2%-%time:~3,2%.txt
echo.
echo --------------------检查104段哪个IP可上外网-------------
echo --------可用IP列表：--------------  > %keyong%
echo --------不可用IP列表：--------------  > %bukeyong%

:loop
netsh interface ip set address %eth% static 192.168.104.%ip% %netmask% %gw%
netsh interface ip set dns     %eth% static %dns% primary
echo --------------正在检查 192.168.104.%ip% --------------------
rem ping -n 2 -w %timeout% %baidu% | find "回复"
for /f "delims=*" %%i in ( 'ping -n 2 -w %%timeout%% %%baidu%% ^| findstr "回复" ')  do set huifu=%%i
echo huifu is :%huifu%
if "%huifu%"=="" ( echo 192.168.104.%ip% >>  %bukeyong%) else ( echo 192.168.104.%ip% >>  %keyong%)  
set /a ip=%ip%+1
if %ip% EQU %ipend% goto :end
goto :loop
echo --------谢谢使用！--------------  >> %keyong%
echo --------谢谢使用！--------------  >> %bukeyong% 
pause