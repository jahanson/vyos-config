#!/bin/vbash

# BGP configuration
set protocols bgp neighbor 10.1.1.31 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.31 description 'gandalf'
set protocols bgp neighbor 10.1.1.31 remote-as '64512'
set protocols bgp neighbor 10.1.1.32 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.32 description 'glamdring'
set protocols bgp neighbor 10.1.1.32 remote-as '64512'
set protocols bgp neighbor 10.1.1.33 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.33 description 'shadowfax'
set protocols bgp neighbor 10.1.1.33 remote-as '64512'
set protocols bgp parameters router-id '10.1.0.1'
set protocols bgp system-as '64512'
