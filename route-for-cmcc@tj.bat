@echo off
route delete 0.0.0.0
route add 0.0.0.0 mask 0.0.0.0 192.168.1.1
route add 10.143.0.0 mask 255.255.0.0 10.143.186.1