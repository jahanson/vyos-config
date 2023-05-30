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
set protocols bgp parameters router-id '10.1.0.1'
set protocols bgp system-as '64512'
