#!/bin/vbash

set interfaces ethernet eth5 address 'dhcp'
set interfaces ethernet eth5 description 'WAN'
set interfaces ethernet eth5 hw-id '80:61:5f:04:88:5b'

set interfaces ethernet eth4 address '10.1.0.1/24'
set interfaces ethernet eth4 description 'LAN'
set interfaces ethernet eth4 hw-id '80:61:5f:04:88:5a'
set interfaces ethernet eth4 vif 10 address '10.1.1.1/24'
set interfaces ethernet eth4 vif 10 description 'SERVERS'
set interfaces ethernet eth4 vif 20 address '10.1.2.1/24'
set interfaces ethernet eth4 vif 20 description 'TRUSTED'
set interfaces ethernet eth4 vif 30 address '10.1.3.1/24'
set interfaces ethernet eth4 vif 30 description 'IOT'
set interfaces ethernet eth4 vif 40 address '10.1.4.1/24'
set interfaces ethernet eth4 vif 40 description 'VIDEO'

