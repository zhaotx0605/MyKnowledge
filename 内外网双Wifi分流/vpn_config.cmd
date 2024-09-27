chcp 65001
@echo off

rem 要转发的vpn服务器的ip地址
set vpnServerIp=207.246.95.178

rem WLAN2的接口索引号
rem 查看方式：netsh interface ipv4 show interfaces
set interfaceIndex=22

rem WLAN2的网关ip地址
set gateway=172.20.10.1

rem 更新路由表，确保VPN流量通过WLAN2
route add %vpnServerIP% mask 255.255.255.255 %gateway% metric 1 if %interfaceIndex%

echo route update Success!
pause