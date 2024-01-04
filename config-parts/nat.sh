#!/bin/vbash

# Forward Plex to Sting
set nat destination rule 110 description 'PLEX'
set nat destination rule 110 destination port '32400'
set nat destination rule 110 inbound-interface name 'eth5'
set nat destination rule 110 protocol 'tcp'
set nat destination rule 110 translation address '10.1.1.12'
set nat destination rule 110 translation port '32400'

# LAN -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 outbound-interface name 'eth5'
set nat source rule 100 translation address 'masquerade'
