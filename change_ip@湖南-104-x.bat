@echo off
title chang_ip_for_xp by yafeishi
rem eth //eth Ϊ�������ƣ��������������в�ѯ����"��������"
set eth="��������"
rem ip //ip Ϊ������ĵ�IP
set ip=192.168.104.243
rem gw //gw Ϊ���ص�ַ
set gw=192.168.104.1
rem netmask //netmasks Ϊ��������
set netmask=255.255.255.0
set dns=222.246.129.80


echo ���ڽ�����IP���ĵ�: %ip%
echo ���ڽ��������ظ��ĵ�: %gw%
echo ���ڽ�����DNS���ĵ�: %dns%
netsh interface ip set address %eth% static %ip% %netmask% %gw% 
netsh interface ip set dns     %eth% static %dns% primary
netsh interface ip add address %eth% 10.154.63.197 255.255.255.0 10.154.63.1
route delete 0.0.0.0
route add 0.0.0.0 mask 0.0.0.0 192.168.104.1
route add 10.154.59.0 mask 255.255.255.0 10.154.63.1
route add 10.154.0.0 mask 255.255.0.0 10.154.63.1
echo......................... 
echo ��鵱ǰ����IP�����
ipconfig -all | findstr "IPv4 ��ַ"
ipconfig -all | findstr "Ĭ������" 
ipconfig -all | findstr "DNS ������" | findstr "������"
echo.........................
echo �ɹ�������IP����Ϊ%ip%��
pause