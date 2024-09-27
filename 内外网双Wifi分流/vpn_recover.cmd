chcp 65001
@echo off
rem 定义VPN服务器的IP地址变量
set vpnServerIP=207.246.95.178

rem 恢复默认路由配置
route delete %vpnServerIP%
rem route delete 0.0.0.0

echo routing table recovered.
pause
