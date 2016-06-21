@echo off
route delete 0.0.0.0
route add 0.0.0.0 mask 0.0.0.0 172.20.10.1
route add 10.238.0.0 mask 255.255.0.0 10.238.1.94