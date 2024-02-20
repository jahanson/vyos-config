#!/bin/vbash

# unused hardware
set interfaces ethernet eth0 hw-id 'a0:42:3f:2f:a9:68'
set interfaces ethernet eth1 hw-id 'a0:42:3f:2f:a9:69'

# WAN
set interfaces ethernet eth3 address 'dhcp'
set interfaces ethernet eth3 description 'WAN'
set interfaces ethernet eth3 hw-id '80:61:5f:04:88:5b'

# LAN
set interfaces ethernet eth2 address '10.1.0.1/24'
set interfaces ethernet eth2 description 'LAN'
set interfaces ethernet eth2 hw-id '80:61:5f:04:88:5a'
set interfaces ethernet eth2 vif 10 address '10.1.1.1/24'
set interfaces ethernet eth2 vif 10 description 'SERVERS'
set interfaces ethernet eth2 vif 20 address '10.1.2.1/24'
set interfaces ethernet eth2 vif 20 description 'TRUSTED'
set interfaces ethernet eth2 vif 30 address '10.1.3.1/24'
set interfaces ethernet eth2 vif 30 description 'IOT'
set interfaces ethernet eth2 vif 40 address '10.1.4.1/24'
set interfaces ethernet eth2 vif 40 description 'VIDEO'

