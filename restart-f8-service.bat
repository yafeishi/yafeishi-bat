@echo off
net stop F8HealthService
net stop F8iCloudLogService
net stop F8iCloudService
net stop F8iCloudUpdater

net start F8HealthService
net start F8iCloudLogService
net start F8iCloudService
net start F8iCloudUpdater