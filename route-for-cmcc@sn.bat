@echo off
route delete 0.0.0.0
route add 0.0.0.0 mask 0.0.0.0 10.69.8.1
route add 10.0.0.0 mask 255.0.0.0 10.131.68.252