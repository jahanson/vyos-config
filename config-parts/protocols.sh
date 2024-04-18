#!/bin/vbash

# BGP configuration
## k8s workers
set protocols bgp neighbor 10.1.1.71 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.71 description 'anduril'
set protocols bgp neighbor 10.1.1.71 remote-as '64512'
set protocols bgp neighbor 10.1.1.72 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.72 description 'gandalf'
set protocols bgp neighbor 10.1.1.72 remote-as '64512'
set protocols bgp neighbor 10.1.1.73 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.73 description 'shadowfax'
set protocols bgp neighbor 10.1.1.73 remote-as '64512'
## k8s masters
set protocols bgp neighbor 10.1.1.61 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.61 description 'galadriel'
set protocols bgp neighbor 10.1.1.61 remote-as '64512'
set protocols bgp neighbor 10.1.1.62 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.62 description 'thrain'
set protocols bgp neighbor 10.1.1.62 remote-as '64512'
set protocols bgp neighbor 10.1.1.63 address-family ipv4-unicast
set protocols bgp neighbor 10.1.1.63 description 'cirdan'
set protocols bgp neighbor 10.1.1.63 remote-as '64512'
set protocols bgp parameters router-id '10.1.0.1'
set protocols bgp system-as '64512'
