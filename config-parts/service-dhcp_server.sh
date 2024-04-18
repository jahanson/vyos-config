#!/bin/vbash

# LAN
set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 default-router '10.1.0.1'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 name-server '10.1.0.1'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 range 0 start '10.1.0.200'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 range 0 stop '10.1.0.254'

set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping usw-pro-24 ip-address '10.1.0.11'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping usw-pro-24 mac-address '24:5a:4c:9b:c0:6e'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping usw-industrial ip-address '10.1.0.12'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping usw-industrial mac-address '68:d7:9a:3c:b0:75'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping usw-flex-mini-joe ip-address '10.1.0.13'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping usw-flex-mini-joe mac-address '74:83:c2:f7:f2:17'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping usw-flex-mini-elisia ip-address '10.1.0.14'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping usw-flex-mini-elisia mac-address '74:83:c2:f7:f2:1d'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping us-16-xg ip-address '10.1.0.15'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping us-16-xg mac-address '74:83:c2:0e:f9:fe'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping us-8-150w ip-address '10.1.0.16'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping us-8-150w mac-address 'b4:fb:e4:8d:a8:da'

set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping uap-nanohd ip-address '10.1.0.21'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping uap-nanohd mac-address '18:e8:29:b4:d9:4f'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping u6-lite ip-address '10.1.0.22'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping u6-lite mac-address '24:5a:4c:13:1d:a8'

# Servers VLAN
set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS ping-check
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 default-router '10.1.1.1'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 domain-name 'jahanson.tech'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 name-server '10.1.1.1'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 range 0 start '10.1.1.200'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 range 0 stop '10.1.1.254'

## Servers VLAN - PXE boot
set service dhcp-server global-parameters 'option system-arch code 93 = unsigned integer 16;'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 subnet-parameters 'allow bootp;'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 subnet-parameters 'allow booting;'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 subnet-parameters 'next-server 10.1.1.1;'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 subnet-parameters 'if exists user-class and option user-class = &quot;iPXE&quot; {'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 subnet-parameters 'filename &quot;metal-amd64&quot;;'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 subnet-parameters 'filename &quot;http://10.5.0.7/boot.ipxe&quot;;'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 subnet-parameters '} else {'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 subnet-parameters 'filename &quot;undionly.kpxe&quot;;'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 subnet-parameters '}'

# Logging

# NAS
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping elessar ip-address '10.1.1.11'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping elessar mac-address '00:11:32:87:f6:1d'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping sting ip-address '10.1.1.12'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping sting mac-address 'a8:a1:59:4a:d1:b3'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping gandalf ip-address '10.1.1.13'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping gandalf mac-address 'b4:96:91:20:2c:58'

set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping shadowfax ip-address '10.1.1.30'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping shadowfax mac-address '04:42:1a:ef:35:75'


# Raspberry Pis
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping frodo ip-address '10.1.1.51'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping frodo mac-address 'dc:a6:32:21:70:33'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping samwise ip-address '10.1.1.52'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping samwise mac-address 'dc:a6:32:36:6d:f3'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping pippin ip-address '10.1.1.54'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping pippin mac-address 'b8:27:eb:1b:a5:33'

# VMs
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping tulkas ip-address '10.1.1.53'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping tulkas mac-address '26:82:2F:16:7A:36'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping nextcloud ip-address '10.1.1.55'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping nextcloud mac-address 'fa:1b:41:bc:d5:cf'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping nixos ip-address '10.1.1.56'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping nixos mac-address 'da:3e:b7:27:d8:77'


# k8s prod masters
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping galadriel ip-address '10.1.1.61'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping galadriel mac-address '34:17:EB:D9:AB:D2'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping thrain ip-address '10.1.1.62'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping thrain mac-address '98:90:96:B0:AD:EA'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping cirdan ip-address '10.1.1.63'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping cirdan mac-address '98:90:96:A2:04:B1'

# k8s prod workers
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping anduril ip-address '10.1.1.71'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping anduril mac-address 'd4:5d:64:91:b2:42'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping gandalf-01 ip-address '10.1.1.72'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping gandalf-01 mac-address '52:54:00:e5:08:8d'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping shadowfax-01 ip-address '10.1.1.73'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping shadowfax-01 mac-address 'ae:4c:70:3f:79:e4'

# Trusted VLAN
set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED ping-check
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 default-router '10.1.2.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 domain-name 'jahanson.tech'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 name-server '10.1.2.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 range 0 start '10.1.2.200'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 range 0 stop '10.1.2.254'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping elisia-caldigit ip-address '10.1.2.22'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping elisia-caldigit mac-address '64:4b:f0:4a:55:57'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping elisia-wifi ip-address '10.1.2.23'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping elisia-wifi mac-address 'd4:57:63:de:ac:49'

set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping jahanson-iphone ip-address '10.1.2.31'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping jahanson-iphone mac-address '8E:41:F9:95:09:0B'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping jahanson-ipad ip-address '10.1.2.32'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping jahanson-ipad mac-address '6E:26:9E:D7:57:00'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping elisia-iphone ip-address '10.1.2.33'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping elisia-iphone mac-address '8a:83:19:15:b4:32'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping legiondary ip-address '10.1.2.21'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping legiondary mac-address '54:05:db:b1:95:ff'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping gollum ip-address '10.1.2.101'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping gollum mac-address 'fc:aa:14:93:fb:b1'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping printer3d ip-address '10.1.2.88'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping printer3d mac-address '20:f8:5e:19:a2:0b'

# IoT VLAN
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT ping-check
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 default-router '10.1.3.1'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 domain-name 'jahanson.tech'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 name-server '10.1.3.1'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 start '10.1.3.200'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 stop '10.1.3.254'

## Misc
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-oven ip-address '10.1.3.10'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-oven mac-address '88:e7:12:2a:63:ca'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-vacuum ip-address '10.1.3.11'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-vacuum mac-address '50:14:79:08:db:08'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping tubezsb-zwave ip-address '10.1.3.12'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping tubezsb-zwave mac-address 'e0:5a:1b:6e:2c:a3'



## Switchbot plugs
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-1 ip-address '10.1.3.31'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-1 mac-address 'A0:76:4E:21:DE:D0'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-2 ip-address '10.1.3.32'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-2 mac-address '34:85:18:0E:C7:CC'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-3 ip-address '10.1.3.33'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-3 mac-address '68:B6:B3:B3:EF:6C'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-4 ip-address '10.1.3.34'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-4 mac-address 'A0:76:4E:1F:D7:84'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-5 ip-address '10.1.3.35'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-5 mac-address '34:85:18:10:37:60'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-6 ip-address '10.1.3.36'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-6 mac-address 'A0:76:4E:35:81:38'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-7 ip-address '10.1.3.37'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-7 mac-address '68:b6:b3:b2:5a:30'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-8 ip-address '10.1.3.38'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping switchbot-plug-mini-8 mac-address '68:B6:B3:B7:EF:24'

## Sonos
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-1-office ip-address '10.1.3.71'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-1-office mac-address '54:2a:1b:8e:e0:3b'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-2-one-left ip-address '10.1.3.72'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-2-one-left mac-address '48:a6:b8:fa:62:0e'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-3-one-right ip-address '10.1.3.73'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-3-one-right mac-address '48:a6:b8:fa:64:a6'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-4-livingroom ip-address '10.1.3.74'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-4-livingroom mac-address '48:a6:b8:48:a8:e5'

## k8s IoT interfaces

set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping gandalf ip-address '10.1.3.121'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping gandalf mac-address '52:54:00:e5:08:8d'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping shadowfax ip-address '10.1.3.122'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping shadowfax mac-address '0e:46:8d:59:24:ca'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping anduril ip-address '10.1.3.123'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping anduril mac-address '00:d8:61:31:9a:a0'

# Video VLAN
set service dhcp-server shared-network-name VIDEO authoritative
set service dhcp-server shared-network-name VIDEO ping-check
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 default-router '10.1.4.1'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 domain-name 'jahanson.tech'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 lease '86400'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 name-server '10.1.4.1'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 range 0 start '10.1.4.200'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 range 0 stop '10.1.4.254'

set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 static-mapping driveway-camera ip-address '10.1.4.12'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 static-mapping driveway-camera mac-address 'ec:71:db:62:aa:e9'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 static-mapping sidehouse-camera ip-address '10.1.4.13'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 static-mapping sidehouse-camera mac-address 'ec:71:db:5e:46:a7'