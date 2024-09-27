chcp 65001
@echo off

rem 所有流量使用wlan2
rem VPN服务的ip地址
set vpnServerIp=207.246.95.178
set interfaceIndex=22
set gateway=172.20.10.1

rem 更新路由表，所有流量通过WLAN2
route add %vpnServerIP% mask 255.255.255.255 %gateway% metric 1 if %interfaceIndex%
route add 0.0.0.0 mask 0.0.0.0 %gateway% metric 1 if %interfaceIndex%

echo route update Success!
pause