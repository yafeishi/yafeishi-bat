@echo off
echo ����IP������£�
ipconfig -all | findstr "IPv4 ��ַ"
ipconfig -all | findstr "Ĭ������" 
ipconfig -all | findstr "DNS ������" | findstr "������"
ping 123.125.114.144
ping baidu.com
pause