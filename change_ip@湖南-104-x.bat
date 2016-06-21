@echo off
title chang_ip_for_xp by yafeishi
rem eth //eth 为网卡名称，可在网络连接中查询，如"本地连接"
set eth="本地连接"
rem ip //ip 为你想更改的IP
set ip=192.168.104.243
rem gw //gw 为网关地址
set gw=192.168.104.1
rem netmask //netmasks 为子网掩码
set netmask=255.255.255.0
set dns=222.246.129.80


echo 正在将本机IP更改到: %ip%
echo 正在将本机网关更改到: %gw%
echo 正在将本机DNS更改到: %dns%
netsh interface ip set address %eth% static %ip% %netmask% %gw% 
netsh interface ip set dns     %eth% static %dns% primary
netsh interface ip add address %eth% 10.154.63.197 255.255.255.0 10.154.63.1
route delete 0.0.0.0
route add 0.0.0.0 mask 0.0.0.0 192.168.104.1
route add 10.154.59.0 mask 255.255.255.0 10.154.63.1
route add 10.154.0.0 mask 255.255.0.0 10.154.63.1
echo......................... 
echo 检查当前本机IP情况：
ipconfig -all | findstr "IPv4 地址"
ipconfig -all | findstr "默认网关" 
ipconfig -all | findstr "DNS 服务器" | findstr "服务器"
echo.........................
echo 成功将本机IP更改为%ip%！
pause