#!/bin/vbash

# BGP configuration
set protocols bgp neighbor 10.1.1.41 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.41 description 'nenya'
set protocols bgp neighbor 10.1.1.41 remote-as '64512'
set protocols bgp neighbor 10.1.1.42 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.42 description 'vilya'
set protocols bgp neighbor 10.1.1.42 remote-as '64512'
set protocols bgp neighbor 10.1.1.43 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.43 description 'narya'
set protocols bgp neighbor 10.1.1.43 remote-as '64512'
set protocols bgp neighbor 10.1.1.44 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.44 description 'nahar'
set protocols bgp neighbor 10.1.1.44 remote-as '64512'
set protocols bgp neighbor 10.1.1.45 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.45 description 'thror'
set protocols bgp neighbor 10.1.1.45 remote-as '64512'
set protocols bgp neighbor 10.1.1.46 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.46 description 'thrain'
set protocols bgp neighbor 10.1.1.46 remote-as '64512'
set protocols bgp neighbor 10.1.1.61 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.61 description 'galadriel'
set protocols bgp neighbor 10.1.1.61 remote-as '64512'
set protocols bgp neighbor 10.1.1.62 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.62 description 'elrond'
set protocols bgp neighbor 10.1.1.62 remote-as '64512'
set protocols bgp neighbor 10.1.1.63 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.63 description 'cirdan'
set protocols bgp neighbor 10.1.1.63 remote-as '64512'
set protocols bgp parameters router-id '10.1.0.1'
set protocols bgp system-as '64512'
