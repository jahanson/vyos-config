#!/bin/vbash

# NTP server
delete service ntp allow-client
set service ntp allow-client address '127.0.0.0/8'
set service ntp allow-client address '10.0.0.0/8'
set service ntp allow-client address '172.16.0.0/12'
set service ntp allow-client address '192.168.0.0/16'
delete service ntp server
set service ntp server time.cloudflare.com

# SSH server
set service ssh disable-password-authentication
set service ssh port '22'

# TFTP server
set service tftp-server directory '/config/tftpboot'
set service tftp-server listen-address 10.1.1.1