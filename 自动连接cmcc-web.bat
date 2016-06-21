@echo off
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t reg_dword /d 00000000 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t reg_dword /d 00000000 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t reg_dword /d 00000000 /f
netsh wlan connect name=CMCC-WEB ssid=CMCC-WEB interface=wlan
ping 0.0.0.0  -n 8 > null
taskkill /f /t /im IEXPLORE.exe
ping 0.0.0.0  -n 5 > null
"C:\Program Files (x86)\Internet Explorer\iexplore.exe"

