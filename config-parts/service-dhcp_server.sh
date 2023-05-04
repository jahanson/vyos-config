#!/bin/vbash

set service dhcp-server hostfile-update
set service dhcp-server host-decl-name

# Guest VLAN
set service dhcp-server shared-network-name GUEST authoritative
set service dhcp-server shared-network-name GUEST ping-check
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 default-router '192.168.2.1'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 lease '86400'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 start '192.168.2.200'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 stop '192.168.2.254'

set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 static-mapping manyie-work-laptop ip-address '192.168.2.11'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 static-mapping manyie-work-laptop mac-address '14:f6:d8:32:46:41'

# IoT VLAN
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT ping-check
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 default-router '10.1.3.1'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 domain-name 'jahanson.tech'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 start '10.1.3.200'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 stop '10.1.3.254'

set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping office-sonos-beam ip-address '10.1.3.71'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping office-sonos-beam mac-address '54:2a:1b:8e:e0:3b'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-2 ip-address '10.1.3.72'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-2 mac-address '48:a6:b8:fa:62:0e'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-3 ip-address '10.1.3.73'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-3 mac-address '48:a6:b8:fa:64:a6'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-4 ip-address '10.1.3.74'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping sonos-4 mac-address '48:a6:b8:48:a8:e5'

set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-vacuum ip-address '10.1.3.18'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-vacuum mac-address '50:14:79:08:db:08'

set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-3dprinter-plug ip-address '10.1.3.33'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-3dprinter-plug mac-address 'a4:e5:7c:ab:f4:cd'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-desk-plug ip-address '10.1.3.31'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-desk-plug mac-address 'a4:e5:7c:ab:f5:ad'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-hue-bridge ip-address '10.1.3.24'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-hue-bridge mac-address '00:17:88:2e:2d:5d'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-speaker-esp ip-address '10.1.3.36'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping attic-office-speaker-esp mac-address 'e8:9f:6d:0a:53:24'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping backyard-shed-esp ip-address '10.1.3.42'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping backyard-shed-esp mac-address 'b4:e6:2d:59:de:0c'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping bedroom-eva-sonos ip-address '10.1.3.65'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping bedroom-eva-sonos mac-address 'b8:e9:37:55:d8:6c'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping bernd-ereader ip-address '10.1.3.51'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping bernd-ereader mac-address '58:b0:d4:6e:53:29'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping garage-tablet ip-address '10.1.3.54'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping garage-tablet mac-address '4c:ef:c0:00:50:aa'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping garden-wlanthermo ip-address '10.1.3.21'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping garden-wlanthermo mac-address '8c:aa:b5:c1:ce:c8'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-tablet ip-address '10.1.3.53'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-tablet mac-address 'f4:f3:09:c9:40:33'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-p1reader-esp ip-address '10.1.3.45'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-p1reader-esp mac-address 'c4:5b:be:49:4c:c8'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-tado-bridge ip-address '10.1.3.23'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-tado-bridge mac-address 'ec:e5:12:1b:39:a6'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-zigbee-adapter ip-address '10.1.3.46'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping hallway-zigbee-adapter mac-address 'cc:db:a7:48:19:b3'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-coffeemaker ip-address '10.1.3.13'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-coffeemaker mac-address '68:a4:0e:35:43:72'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-oven ip-address '10.1.3.12'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-oven mac-address '68:a4:0e:34:fc:6f'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-sonos ip-address '10.1.3.61'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping kitchen-sonos mac-address '48:a6:b8:d3:6c:f4'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-airpurifier ip-address '10.1.3.19'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-airpurifier mac-address '78:11:dc:bc:eb:de'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-receiver ip-address '10.1.3.17'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-receiver mac-address '00:05:cd:82:29:21'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-shield ip-address '10.1.3.16'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-shield mac-address '48:b0:2d:2d:4b:cc'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-sonos ip-address '10.1.3.63'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-sonos mac-address '48:a6:b8:dc:6c:7e'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-tv ip-address '10.1.3.14'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-tv mac-address '74:40:be:0d:54:9a'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-harmony-hub ip-address '10.1.3.15'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-harmony-hub mac-address '00:04:20:fd:2d:e4'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-nintendo-switch ip-address '10.1.3.20'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-nintendo-switch mac-address '98:41:5c:b2:98:2e'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-receiver-sonos ip-address '10.1.3.66'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping livingroom-receiver-sonos mac-address 'b8:e9:37:9b:f5:c6'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping manyie-ereader ip-address '10.1.3.52'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping manyie-ereader mac-address '58:b0:d4:67:f5:74'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping spare-p1eu-1 ip-address '10.1.3.34'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping spare-p1eu-1 mac-address 'a4:e5:7c:ab:c8:db'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping study-printer ip-address '10.1.3.55'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping study-printer mac-address '80:2b:f9:d4:3a:be'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-vacuum ip-address '10.1.3.22'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-vacuum mac-address '7c:49:eb:94:4a:58'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-office-sonos ip-address '10.1.3.62'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-office-sonos mac-address '94:9f:3e:04:88:2a'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-office-desk-plug ip-address '10.1.3.32'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-office-desk-plug mac-address 'a4:e5:7c:ab:ca:33'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-office-speaker-esp ip-address '10.1.3.35'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping upstairs-office-speaker-esp mac-address '4c:75:25:bf:b4:d0'

# LAN
set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 default-router '10.1.0.1'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 name-server '10.5.0.4'
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
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 range 0 start '10.1.1.200'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 range 0 stop '10.1.1.254'

# Need to add all of the macs for the servers.
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping gandalf ip-address '10.1.1.31'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping gandalf mac-address '80:61:5f:04:88:5a'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping glamdring ip-address '10.1.1.32'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping glamdring mac-address 'd4:5d:64:91:b2:42'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping shadowfax ip-address '10.1.1.33'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping shadowfax mac-address '04:42:1a:ef:35:74'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping lembas ip-address '10.1.1.34'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping lembas mac-address 'c8:1f:66:10:51:d9'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping elessar ip-address '10.1.1.11'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping elessar mac-address '00:11:32:87:f6:1d'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping sting ip-address '10.1.1.12'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping sting mac-address 'a8:a1:59:4a:d1:b3'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping homeassistant ip-address '10.1.1.13'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping homeassistant mac-address '80:e8:2c:db:68:a2'

set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping nextcloud ip-address '10.1.1.51'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping nextcloud mac-address 'c8:1f:66:10:4d:b9'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping frodo ip-address '10.1.1.52'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping frodo mac-address 'dc:a6:32:09:76:4c'

# Trusted VLAN
set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED ping-check
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 default-router '10.1.2.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 domain-name 'jahanson.tech'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 range 0 start '10.1.2.200'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 range 0 stop '10.1.2.254'

set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping jahanson-ipad ip-address '10.1.2.32'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping jahanson-ipad mac-address '8A:0B:3A:F1:9F:91'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping jahanson-iphone ip-address '10.1.2.31'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping jahanson-iphone mac-address 'c2:d2:9a:62:ef:03'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping legiondary ip-address '10.1.2.21'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping legiondary mac-address '54:05:db:b1:95:ff'

set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping eva-ipad ip-address '10.1.2.35'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping eva-ipad mac-address 'aa:ab:96:ce:f8:03'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping kitchen-ipad ip-address '10.1.2.36'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping kitchen-ipad mac-address '34:e2:fd:ac:7c:fa'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-ipad ip-address '10.1.2.34'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-ipad mac-address '94:bf:2d:f0:3f:c3'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-iphone ip-address '10.1.2.33'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-iphone mac-address '8c:98:6b:a9:18:cb'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-macbook ip-address '10.1.2.22'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-macbook mac-address '8c:85:90:18:42:38'

# Video VLAN
set service dhcp-server shared-network-name VIDEO authoritative
set service dhcp-server shared-network-name VIDEO ping-check
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 default-router '10.1.4.1'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 domain-name 'jahanson.tech'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 lease '86400'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 range 0 start '10.1.4.200'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 range 0 stop '10.1.4.254'

set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 static-mapping driveway-camera ip-address '10.1.4.12'
set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 static-mapping driveway-camera mac-address 'ec:71:db:62:aa:e9'
