#!/bin/vbash
# From IOT to LAN
set firewall ipv4 name iot-lan default-action 'drop'
set firewall ipv4 name iot-lan description 'From IOT to LAN'
set firewall ipv4 name iot-lan default-log
set firewall ipv4 name iot-lan rule 999 action 'drop'
set firewall ipv4 name iot-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-lan rule 999 state invalid
set firewall ipv4 name iot-lan rule 999 log

# From IOT to LOCAL
set firewall ipv4 name iot-local default-action 'drop'
set firewall ipv4 name iot-local description 'From IOT to LOCAL'
set firewall ipv4 name iot-local default-log
set firewall ipv4 name iot-local rule 50 action 'accept'
set firewall ipv4 name iot-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name iot-local rule 50 destination port '67,68'
set firewall ipv4 name iot-local rule 50 protocol 'udp'
set firewall ipv4 name iot-local rule 50 source port '67,68'
set firewall ipv4 name iot-local rule 60 action 'accept'
set firewall ipv4 name iot-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name iot-local rule 60 destination port 'ntp'
set firewall ipv4 name iot-local rule 60 protocol 'udp'
set firewall ipv4 name iot-local rule 100 action 'accept'
set firewall ipv4 name iot-local rule 100 description 'Rule: accept_igmp'
set firewall ipv4 name iot-local rule 100 protocol '2'
set firewall ipv4 name iot-local rule 110 action 'accept'
set firewall ipv4 name iot-local rule 110 description 'Rule: accept_mdns'
set firewall ipv4 name iot-local rule 110 destination port 'mdns'
set firewall ipv4 name iot-local rule 110 protocol 'udp'
set firewall ipv4 name iot-local rule 110 source port 'mdns'
set firewall ipv4 name iot-local rule 120 action 'accept'
set firewall ipv4 name iot-local rule 120 description 'Rule: accept_dns'
set firewall ipv4 name iot-local rule 120 destination port 'domain,domain-s'
set firewall ipv4 name iot-local rule 120 protocol 'tcp_udp'
set firewall ipv4 name iot-local rule 200 action 'accept'
set firewall ipv4 name iot-local rule 200 description 'Rule: accept_discovery_from_sonos_players'
set firewall ipv4 name iot-local rule 200 destination group port-group sonos-discovery
set firewall ipv4 name iot-local rule 200 protocol 'udp'
set firewall ipv4 name iot-local rule 200 source group address-group 'sonos_players'
set firewall ipv4 name iot-local rule 999 action 'drop'
set firewall ipv4 name iot-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-local rule 999 state invalid
set firewall ipv4 name iot-local rule 999 log

# From IOT to SERVERS
set firewall ipv4 name iot-servers default-action 'drop'
set firewall ipv4 name iot-servers description 'From IOT to SERVERS'
set firewall ipv4 name iot-servers default-log
set firewall ipv4 name iot-servers rule 400 action 'accept'
set firewall ipv4 name iot-servers rule 400 description 'Rule: accept_k8s_ingress_from_sonos_players'
set firewall ipv4 name iot-servers rule 400 destination group address-group 'k8s_ingress'
set firewall ipv4 name iot-servers rule 400 destination port 'http,https'
set firewall ipv4 name iot-servers rule 400 protocol 'tcp'
set firewall ipv4 name iot-servers rule 400 source group address-group 'sonos_players'
set firewall ipv4 name iot-servers rule 999 action 'drop'
set firewall ipv4 name iot-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-servers rule 999 state invalid
set firewall ipv4 name iot-servers rule 999 log

# From IOT to CONTAINERS
set firewall ipv4 name iot-containers default-action 'accept'
set firewall ipv4 name iot-containers description 'From IOT to CONTAINERS'
set firewall ipv4 name iot-containers rule 40 action 'accept'
set firewall ipv4 name iot-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name iot-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name iot-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name iot-containers rule 999 action 'drop'
set firewall ipv4 name iot-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-containers rule 999 state invalid
set firewall ipv4 name iot-containers rule 999 log

# From IOT to TRUSTED
set firewall ipv4 name iot-trusted default-action 'drop'
set firewall ipv4 name iot-trusted description 'From IOT to TRUSTED'
set firewall ipv4 name iot-trusted default-log
set firewall ipv4 name iot-trusted rule 999 action 'drop'
set firewall ipv4 name iot-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-trusted rule 999 state invalid
set firewall ipv4 name iot-trusted rule 999 log

# From IOT to VIDEO
set firewall ipv4 name iot-video default-action 'drop'
set firewall ipv4 name iot-video description 'From IOT to VIDEO'
set firewall ipv4 name iot-video default-log
set firewall ipv4 name iot-video rule 100 action 'accept'
set firewall ipv4 name iot-video rule 100 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name iot-video rule 100 protocol 'tcp'
set firewall ipv4 name iot-video rule 100 source group address-group 'k8s_nodes'
set firewall ipv4 name iot-video rule 999 action 'drop'
set firewall ipv4 name iot-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-video rule 999 state invalid
set firewall ipv4 name iot-video rule 999 log

# From IOT to WAN
set firewall ipv4 name iot-wan default-action 'accept'
set firewall ipv4 name iot-wan description 'From IOT to WAN'

# From LAN to IoT
set firewall ipv4 name lan-iot default-action 'drop'
set firewall ipv4 name lan-iot description 'From LAN to IOT'
set firewall ipv4 name lan-iot default-log
set firewall ipv4 name lan-iot rule 999 action 'drop'
set firewall ipv4 name lan-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-iot rule 999 state invalid
set firewall ipv4 name lan-iot rule 999 log

# From LAN to LOCAL
set firewall ipv4 name lan-local default-action 'drop'
set firewall ipv4 name lan-local description 'From LAN to LOCAL'
set firewall ipv4 name lan-local default-log
set firewall ipv4 name lan-local rule 40 action 'accept'
set firewall ipv4 name lan-local rule 40 description 'Rule: accept_dns'
set firewall ipv4 name lan-local rule 40 destination port 'domain,domain-s'
set firewall ipv4 name lan-local rule 40 protocol 'tcp_udp'
set firewall ipv4 name lan-local rule 50 action 'accept'
set firewall ipv4 name lan-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name lan-local rule 50 destination port '67,68'
set firewall ipv4 name lan-local rule 50 protocol 'udp'
set firewall ipv4 name lan-local rule 50 source port '67,68'
set firewall ipv4 name lan-local rule 60 action 'accept'
set firewall ipv4 name lan-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name lan-local rule 60 destination port 'ntp'
set firewall ipv4 name lan-local rule 60 protocol 'udp'
set firewall ipv4 name lan-local rule 70 action 'accept'
set firewall ipv4 name lan-local rule 70 description 'Rule: accept_node_speed_exporter'
set firewall ipv4 name lan-local rule 70 destination port '9798,9100'
set firewall ipv4 name lan-local rule 70 protocol 'tcp'
set firewall ipv4 name lan-local rule 80 action 'accept'
set firewall ipv4 name lan-local rule 80 description 'Rule: accept perfmon3'
set firewall ipv4 name lan-local rule 80 destination port '5201'
set firewall ipv4 name lan-local rule 80 protocol 'tcp'
set firewall ipv4 name lan-local rule 999 action 'drop'
set firewall ipv4 name lan-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-local rule 999 state invalid
set firewall ipv4 name lan-local rule 999 log

# From LAN to SERVERS
set firewall ipv4 name lan-servers default-action 'drop'
set firewall ipv4 name lan-servers description 'From LAN to SERVERS'
set firewall ipv4 name lan-servers default-log
set firewall ipv4 name lan-servers rule 999 action 'drop'
set firewall ipv4 name lan-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-servers rule 999 state invalid
set firewall ipv4 name lan-servers rule 999 log

# From LAN to CONTAINERS
set firewall ipv4 name lan-containers default-action 'accept'
set firewall ipv4 name lan-containers description 'From LAN to CONTAINERS'
set firewall ipv4 name lan-containers rule 40 action 'accept'
set firewall ipv4 name lan-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name lan-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name lan-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name lan-containers rule 999 action 'drop'
set firewall ipv4 name lan-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-containers rule 999 state invalid
set firewall ipv4 name lan-containers rule 999 log

# From LAN to TRUSTED
set firewall ipv4 name lan-trusted default-action 'drop'
set firewall ipv4 name lan-trusted description 'From LAN to TRUSTED'
set firewall ipv4 name lan-trusted default-log
set firewall ipv4 name lan-trusted rule 999 action 'drop'
set firewall ipv4 name lan-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-trusted rule 999 state invalid
set firewall ipv4 name lan-trusted rule 999 log

# From LAN to VIDEO
set firewall ipv4 name lan-video default-action 'drop'
set firewall ipv4 name lan-video description 'From LAN to VIDEO'
set firewall ipv4 name lan-video default-log
set firewall ipv4 name lan-video rule 999 action 'drop'
set firewall ipv4 name lan-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-video rule 999 state invalid
set firewall ipv4 name lan-video rule 999 log

# From LAN to WAN
set firewall ipv4 name lan-wan default-action 'accept'
set firewall ipv4 name lan-wan description 'From LAN to WAN'

# From LOCAL to IOT
set firewall ipv4 name local-iot default-action 'drop'
set firewall ipv4 name local-iot description 'From LOCAL to IOT'
set firewall ipv4 name local-iot default-log
set firewall ipv4 name local-iot rule 100 action 'accept'
set firewall ipv4 name local-iot rule 100 description 'Rule: accept_igmp'
set firewall ipv4 name local-iot rule 100 protocol '2'
set firewall ipv4 name local-iot rule 110 action 'accept'
set firewall ipv4 name local-iot rule 110 description 'Rule: accept_mdns'
set firewall ipv4 name local-iot rule 110 destination port 'mdns'
set firewall ipv4 name local-iot rule 110 protocol 'udp'
set firewall ipv4 name local-iot rule 110 source port 'mdns'
set firewall ipv4 name local-iot rule 999 action 'drop'
set firewall ipv4 name local-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-iot rule 999 state invalid
set firewall ipv4 name local-iot rule 999 log

# From LOCAL to LAN
set firewall ipv4 name local-lan default-action 'drop'
set firewall ipv4 name local-lan description 'From LOCAL to LAN'
set firewall ipv4 name local-lan default-log
set firewall ipv4 name local-lan rule 999 action 'drop'
set firewall ipv4 name local-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-lan rule 999 state invalid
set firewall ipv4 name local-lan rule 999 log

# From LOCAL to SERVERS
set firewall ipv4 name local-servers default-action 'drop'
set firewall ipv4 name local-servers description 'From LOCAL to SERVERS'
set firewall ipv4 name local-servers default-log
set firewall ipv4 name local-servers rule 40 action 'accept'
set firewall ipv4 name local-servers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name local-servers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name local-servers rule 40 protocol 'tcp_udp'
set firewall ipv4 name local-servers rule 70 action 'accept'
set firewall ipv4 name local-servers rule 70 description 'Rule: accept_bgp'
set firewall ipv4 name local-servers rule 70 destination port 'bgp'
set firewall ipv4 name local-servers rule 70 protocol 'tcp'
set firewall ipv4 name local-servers rule 100 action 'accept'
set firewall ipv4 name local-servers rule 100 description 'Rule: accept_k8s_api'
set firewall ipv4 name local-servers rule 100 destination port '6443'
set firewall ipv4 name local-servers rule 100 protocol 'tcp'
set firewall ipv4 name local-servers rule 200 action 'accept'
set firewall ipv4 name local-servers rule 200 description 'Rule: accept_graylog_syslog'
set firewall ipv4 name local-servers rule 200 destination group address-group 'graylog'
set firewall ipv4 name local-servers rule 200 destination port '1514'
set firewall ipv4 name local-servers rule 200 protocol 'udp'
set firewall ipv4 name local-servers rule 999 action 'drop'
set firewall ipv4 name local-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-servers rule 999 state invalid
set firewall ipv4 name local-servers rule 999 log

# From LOCAL to CONTAINERS
set firewall ipv4 name local-containers default-action 'accept'
set firewall ipv4 name local-containers description 'From LOCAL to CONTAINERS'
set firewall ipv4 name local-containers rule 40 action 'accept'
set firewall ipv4 name local-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name local-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name local-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name local-containers rule 999 action 'drop'
set firewall ipv4 name local-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-containers rule 999 state invalid
set firewall ipv4 name local-containers rule 999 log

# From LOCAL to TRUSTED
set firewall ipv4 name local-trusted default-action 'drop'
set firewall ipv4 name local-trusted description 'From LOCAL to TRUSTED'
set firewall ipv4 name local-trusted default-log
set firewall ipv4 name local-trusted rule 100 action 'accept'
set firewall ipv4 name local-trusted rule 100 description 'Rule: accept_igmp'
set firewall ipv4 name local-trusted rule 100 protocol '2'
set firewall ipv4 name local-trusted rule 110 action 'accept'
set firewall ipv4 name local-trusted rule 110 description 'Rule: accept_mdns'
set firewall ipv4 name local-trusted rule 110 destination port 'mdns'
set firewall ipv4 name local-trusted rule 110 protocol 'udp'
set firewall ipv4 name local-trusted rule 110 source port 'mdns'
set firewall ipv4 name local-trusted rule 200 action 'accept'
set firewall ipv4 name local-trusted rule 200 description 'Rule: accept_discovery_from_sonos_players'
set firewall ipv4 name local-trusted rule 200 destination group port-group sonos-discovery
set firewall ipv4 name local-trusted rule 200 protocol 'udp'
set firewall ipv4 name local-trusted rule 200 source group address-group 'sonos_players'
set firewall ipv4 name local-trusted rule 400 action 'accept'
set firewall ipv4 name local-trusted rule 400 description 'Rule: accept_wireguard'
set firewall ipv4 name local-trusted rule 400 source port '51820'
set firewall ipv4 name local-trusted rule 400 protocol 'udp'
set firewall ipv4 name local-trusted rule 999 action 'drop'
set firewall ipv4 name local-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-trusted rule 999 state invalid
set firewall ipv4 name local-trusted rule 999 log

# From LOCAL to VIDEO
set firewall ipv4 name local-video default-action 'drop'
set firewall ipv4 name local-video description 'From LOCAL to VIDEO'
set firewall ipv4 name local-video default-log
set firewall ipv4 name local-video rule 999 action 'drop'
set firewall ipv4 name local-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-video rule 999 state invalid
set firewall ipv4 name local-video rule 999 log

# From LOCAL to WAN
set firewall ipv4 name local-wan default-action 'accept'
set firewall ipv4 name local-wan description 'From LOCAL to WAN'


# From SERVERS to IOT
set firewall ipv4 name servers-iot default-action 'drop'
set firewall ipv4 name servers-iot description 'From SERVERS to IOT'
set firewall ipv4 name servers-iot default-log
set firewall ipv4 name servers-iot rule 100 action 'accept'
set firewall ipv4 name servers-iot rule 100 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-iot rule 100 protocol 'tcp'
set firewall ipv4 name servers-iot rule 100 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-iot rule 110 action 'accept'
set firewall ipv4 name servers-iot rule 110 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-iot rule 110 protocol 'icmp'
set firewall ipv4 name servers-iot rule 110 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-iot rule 999 action 'drop'
set firewall ipv4 name servers-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-iot rule 999 state invalid
set firewall ipv4 name servers-iot rule 999 log

# From SERVERS to LAN
set firewall ipv4 name servers-lan default-action 'drop'
set firewall ipv4 name servers-lan description 'From SERVERS to LAN'
set firewall ipv4 name servers-lan default-log
set firewall ipv4 name servers-lan rule 999 action 'drop'
set firewall ipv4 name servers-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-lan rule 999 state invalid
set firewall ipv4 name servers-lan rule 999 log

# From SERVERS to LOCAL
set firewall ipv4 name servers-local default-action 'drop'
set firewall ipv4 name servers-local description 'From SERVERS to LOCAL'
set firewall ipv4 name servers-local default-log
set firewall ipv4 name servers-local rule 50 action 'accept'
set firewall ipv4 name servers-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name servers-local rule 50 destination port '67,68'
set firewall ipv4 name servers-local rule 50 protocol 'udp'
set firewall ipv4 name servers-local rule 50 source port '67,68'
set firewall ipv4 name servers-local rule 60 action 'accept'
set firewall ipv4 name servers-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name servers-local rule 60 destination port 'ntp'
set firewall ipv4 name servers-local rule 60 protocol 'udp'
set firewall ipv4 name servers-local rule 70 action 'accept'
set firewall ipv4 name servers-local rule 70 description 'Rule: accept_bgp'
set firewall ipv4 name servers-local rule 70 destination port 'bgp'
set firewall ipv4 name servers-local rule 70 protocol 'tcp'
set firewall ipv4 name servers-local rule 80 action 'accept'
set firewall ipv4 name servers-local rule 80 description 'Rule: accept_tftp'
set firewall ipv4 name servers-local rule 80 destination port '69'
set firewall ipv4 name servers-local rule 80 protocol 'udp'
set firewall ipv4 name servers-local rule 90 action 'accept'
set firewall ipv4 name servers-local rule 90 description 'Rule: accept_dns'
set firewall ipv4 name servers-local rule 90 destination port 'domain,domain-s'
set firewall ipv4 name servers-local rule 90 protocol 'tcp_udp'
set firewall ipv4 name servers-local rule 100 action 'accept'
set firewall ipv4 name servers-local rule 100 description 'Rule: accept_node_exporter_from_k8s_nodes'
set firewall ipv4 name servers-local rule 100 destination port '9100'
set firewall ipv4 name servers-local rule 100 protocol 'tcp'
set firewall ipv4 name servers-local rule 100 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-local rule 110 action 'accept'
set firewall ipv4 name servers-local rule 110 description 'Rule: accept_speedtest_exporter_from_k8s_nodes'
set firewall ipv4 name servers-local rule 110 destination port '9798'
set firewall ipv4 name servers-local rule 110 protocol 'tcp'
set firewall ipv4 name servers-local rule 110 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-local rule 999 action 'drop'
set firewall ipv4 name servers-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-local rule 999 state invalid
set firewall ipv4 name servers-local rule 999 log

# From SERVERS to CONTAINERS
set firewall ipv4 name servers-containers default-action 'accept'
set firewall ipv4 name servers-containers description 'From SERVERS to CONTAINERS'
set firewall ipv4 name servers-containers default-log
set firewall ipv4 name servers-containers rule 40 action 'accept'
set firewall ipv4 name servers-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name servers-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name servers-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name servers-containers rule 100 action 'accept'
set firewall ipv4 name servers-containers rule 100 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-containers rule 100 protocol 'tcp'
set firewall ipv4 name servers-containers rule 100 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-containers rule 999 action 'drop'
set firewall ipv4 name servers-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-containers rule 999 state invalid
set firewall ipv4 name servers-containers rule 999 log

# From SERVERS to TRUSTED
set firewall ipv4 name servers-trusted default-action 'drop'
set firewall ipv4 name servers-trusted description 'From SERVERS to TRUSTED'
set firewall ipv4 name servers-trusted default-log
set firewall ipv4 name servers-trusted rule 999 action 'drop'
set firewall ipv4 name servers-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-trusted rule 999 state invalid
set firewall ipv4 name servers-trusted rule 999 log

# From SERVERS to VIDEO
set firewall ipv4 name servers-video default-action 'drop'
set firewall ipv4 name servers-video description 'From SERVERS to VIDEO'
set firewall ipv4 name servers-video default-log
set firewall ipv4 name servers-video rule 100 action 'accept'
set firewall ipv4 name servers-video rule 100 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-video rule 100 protocol 'tcp_udp'
set firewall ipv4 name servers-video rule 100 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-video rule 999 action 'drop'
set firewall ipv4 name servers-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-video rule 999 state invalid
set firewall ipv4 name servers-video rule 999 log

# From SERVERS to WAN
set firewall ipv4 name servers-wan default-action 'accept'
set firewall ipv4 name servers-wan description 'From SERVERS to WAN'

# From CONTAINERS to IOT
set firewall ipv4 name containers-iot default-action 'drop'
set firewall ipv4 name containers-iot description 'From CONTAINERS to IOT'
set firewall ipv4 name containers-iot default-log
set firewall ipv4 name containers-iot rule 999 action 'drop'
set firewall ipv4 name containers-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-iot rule 999 state invalid
set firewall ipv4 name containers-iot rule 999 log

# From CONTAINERS to LAN
set firewall ipv4 name containers-lan default-action 'drop'
set firewall ipv4 name containers-lan description 'From CONTAINERS to LAN'
set firewall ipv4 name containers-lan default-log
set firewall ipv4 name containers-lan rule 999 action 'drop'
set firewall ipv4 name containers-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-lan rule 999 state invalid
set firewall ipv4 name containers-lan rule 999 log

# From CONTAINERS to LOCAL
set firewall ipv4 name containers-local default-action 'drop'
set firewall ipv4 name containers-local description 'From CONTAINERS to LOCAL'
set firewall ipv4 name containers-local default-log
set firewall ipv4 name containers-local rule 40 action 'accept'
set firewall ipv4 name containers-local rule 40 description 'Rule: accept_dns'
set firewall ipv4 name containers-local rule 40 destination port 'domain,domain-s'
set firewall ipv4 name containers-local rule 40 protocol 'tcp_udp'
set firewall ipv4 name containers-local rule 50 action 'accept'
set firewall ipv4 name containers-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name containers-local rule 50 destination port '67,68'
set firewall ipv4 name containers-local rule 50 protocol 'udp'
set firewall ipv4 name containers-local rule 50 source port '67,68'
set firewall ipv4 name containers-local rule 60 action 'accept'
set firewall ipv4 name containers-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name containers-local rule 60 destination port 'ntp'
set firewall ipv4 name containers-local rule 60 protocol 'udp'
set firewall ipv4 name containers-local rule 999 action 'drop'
set firewall ipv4 name containers-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-local rule 999 state invalid
set firewall ipv4 name containers-local rule 999 log

# From CONTAINERS to SERVERS
set firewall ipv4 name containers-servers default-action 'accept'
set firewall ipv4 name containers-servers description 'From CONTAINERS to SERVERS'
set firewall ipv4 name containers-servers rule 999 action 'drop'
set firewall ipv4 name containers-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-servers rule 999 state invalid
set firewall ipv4 name containers-servers rule 999 log

# From CONTAINERS to TRUSTED
set firewall ipv4 name containers-trusted default-action 'drop'
set firewall ipv4 name containers-trusted description 'From CONTAINERS to TRUSTED'
set firewall ipv4 name containers-trusted default-log
set firewall ipv4 name containers-trusted rule 999 action 'drop'
set firewall ipv4 name containers-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-trusted rule 999 state invalid
set firewall ipv4 name containers-trusted rule 999 log

# From CONTAINERS to VIDEO
set firewall ipv4 name containers-video default-action 'drop'
set firewall ipv4 name containers-video description 'From CONTAINERS to VIDEO'
set firewall ipv4 name containers-video default-log
set firewall ipv4 name containers-video rule 999 action 'drop'
set firewall ipv4 name containers-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-video rule 999 state invalid
set firewall ipv4 name containers-video rule 999 log

# From CONTAINERS to WAN
set firewall ipv4 name containers-wan default-action 'accept'
set firewall ipv4 name containers-wan description 'From CONTAINERS to WAN'

# From TRUSTED to IOT
set firewall ipv4 name trusted-iot default-action 'accept'
set firewall ipv4 name trusted-iot description 'From TRUSTED to IOT'
set firewall ipv4 name trusted-iot rule 999 action 'drop'
set firewall ipv4 name trusted-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-iot rule 999 state invalid
set firewall ipv4 name trusted-iot rule 999 log

# From TRUSTED to LAN
set firewall ipv4 name trusted-lan default-action 'accept'
set firewall ipv4 name trusted-lan description 'From TRUSTED to LAN'
set firewall ipv4 name trusted-lan rule 999 action 'drop'
set firewall ipv4 name trusted-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-lan rule 999 state invalid
set firewall ipv4 name trusted-lan rule 999 log

# From TRUSTED to LOCAL
set firewall ipv4 name trusted-local default-action 'drop'
set firewall ipv4 name trusted-local description 'From TRUSTED to LOCAL'
set firewall ipv4 name trusted-local default-log
set firewall ipv4 name trusted-local rule 50 action 'accept'
set firewall ipv4 name trusted-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name trusted-local rule 50 destination port '67,68'
set firewall ipv4 name trusted-local rule 50 protocol 'udp'
set firewall ipv4 name trusted-local rule 50 source port '67,68'
set firewall ipv4 name trusted-local rule 60 action 'accept'
set firewall ipv4 name trusted-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name trusted-local rule 60 destination port 'ntp'
set firewall ipv4 name trusted-local rule 60 protocol 'udp'
set firewall ipv4 name trusted-local rule 100 action 'accept'
set firewall ipv4 name trusted-local rule 100 description 'Rule: accept_igmp'
set firewall ipv4 name trusted-local rule 100 protocol '2'
set firewall ipv4 name trusted-local rule 110 action 'accept'
set firewall ipv4 name trusted-local rule 110 description 'Rule: accept_mdns'
set firewall ipv4 name trusted-local rule 110 destination port 'mdns'
set firewall ipv4 name trusted-local rule 110 protocol 'udp'
set firewall ipv4 name trusted-local rule 110 source port 'mdns'
set firewall ipv4 name trusted-local rule 120 action 'accept'
set firewall ipv4 name trusted-local rule 120 description 'Rule: accept_dns'
set firewall ipv4 name trusted-local rule 120 destination port 'domain,domain-s'
set firewall ipv4 name trusted-local rule 120 protocol 'tcp_udp'
set firewall ipv4 name trusted-local rule 211 action 'accept'
set firewall ipv4 name trusted-local rule 211 description 'Rule: accept_discovery_from_sonos_players'
set firewall ipv4 name trusted-local rule 211 destination group port-group sonos-discovery
set firewall ipv4 name trusted-local rule 211 protocol 'udp'
set firewall ipv4 name trusted-local rule 211 source group address-group 'sonos_players'
set firewall ipv4 name trusted-local rule 400 action 'accept'
set firewall ipv4 name trusted-local rule 400 description 'Rule: accept_ssh'
set firewall ipv4 name trusted-local rule 400 destination port 'ssh'
set firewall ipv4 name trusted-local rule 400 protocol 'tcp'
set firewall ipv4 name trusted-local rule 410 action 'accept'
set firewall ipv4 name trusted-local rule 410 description 'Rule: accept_vyos_api'
set firewall ipv4 name trusted-local rule 410 destination port '8443'
set firewall ipv4 name trusted-local rule 410 protocol 'tcp'
set firewall ipv4 name trusted-local rule 420 action 'accept'
set firewall ipv4 name trusted-local rule 420 description 'Rule: accept_wireguard'
set firewall ipv4 name trusted-local rule 420 destination port '51820'
set firewall ipv4 name trusted-local rule 420 protocol 'udp'
set firewall ipv4 name trusted-local rule 999 action 'drop'
set firewall ipv4 name trusted-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-local rule 999 state invalid
set firewall ipv4 name trusted-local rule 999 log

# From TRUSTED to SERVERS
set firewall ipv4 name trusted-servers default-action 'accept'
set firewall ipv4 name trusted-servers description 'From TRUSTED to SERVERS'
set firewall ipv4 name trusted-servers rule 999 action 'drop'
set firewall ipv4 name trusted-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-servers rule 999 state invalid
set firewall ipv4 name trusted-servers rule 999 log

# From TRUSTED to CONTAINERS
set firewall ipv4 name trusted-containers default-action 'accept'
set firewall ipv4 name trusted-containers description 'From TRUSTED to CONTAINERS'
set firewall ipv4 name trusted-containers rule 40 action 'accept'
set firewall ipv4 name trusted-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name trusted-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name trusted-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name trusted-containers rule 999 action 'drop'
set firewall ipv4 name trusted-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-containers rule 999 state invalid
set firewall ipv4 name trusted-containers rule 999 log

# From TRUSTED to VIDEO
set firewall ipv4 name trusted-video default-action 'accept'
set firewall ipv4 name trusted-video description 'From TRUSTED to VIDEO'
set firewall ipv4 name trusted-video rule 999 action 'drop'
set firewall ipv4 name trusted-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-video rule 999 state invalid
set firewall ipv4 name trusted-video rule 999 log

# From TRUSTED to WAN
set firewall ipv4 name trusted-wan default-action 'accept'
set firewall ipv4 name trusted-wan description 'From TRUSTED to WAN'


# From VIDEO to IOT
set firewall ipv4 name video-iot default-action 'drop'
set firewall ipv4 name video-iot description 'From VIDEO to IOT'
set firewall ipv4 name video-iot default-log
set firewall ipv4 name video-iot rule 999 action 'drop'
set firewall ipv4 name video-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name video-iot rule 999 state invalid
set firewall ipv4 name video-iot rule 999 log

# From VIDEO to LAN
set firewall ipv4 name video-lan default-action 'drop'
set firewall ipv4 name video-lan description 'From VIDEO to LAN'
set firewall ipv4 name video-lan default-log
set firewall ipv4 name video-lan rule 999 action 'drop'
set firewall ipv4 name video-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name video-lan rule 999 state invalid
set firewall ipv4 name video-lan rule 999 log

# From VIDEO to LOCAL
set firewall ipv4 name video-local default-action 'drop'
set firewall ipv4 name video-local description 'From VIDEO to LOCAL'
set firewall ipv4 name video-local default-log
set firewall ipv4 name video-local rule 50 action 'accept'
set firewall ipv4 name video-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name video-local rule 50 destination port '67,68'
set firewall ipv4 name video-local rule 50 protocol 'udp'
set firewall ipv4 name video-local rule 50 source port '67,68'
set firewall ipv4 name video-local rule 60 action 'accept'
set firewall ipv4 name video-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name video-local rule 60 destination port 'ntp'
set firewall ipv4 name video-local rule 60 protocol 'udp'
set firewall ipv4 name video-local rule 999 action 'drop'
set firewall ipv4 name video-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name video-local rule 999 state invalid
set firewall ipv4 name video-local rule 999 log

# From VIDEO to SERVERS
set firewall ipv4 name video-servers default-action 'drop'
set firewall ipv4 name video-servers description 'From VIDEO to SERVERS'
set firewall ipv4 name video-servers default-log
set firewall ipv4 name video-servers rule 100 action 'accept'
set firewall ipv4 name video-servers rule 100 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name video-servers rule 100 protocol 'udp'
set firewall ipv4 name video-servers rule 100 destination group address-group 'k8s_nodes'
set firewall ipv4 name video-servers rule 100 source port '6987-6989'
set firewall ipv4 name video-servers rule 999 action 'drop'
set firewall ipv4 name video-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name video-servers rule 999 state invalid
set firewall ipv4 name video-servers rule 999 log

# From VIDEO to CONTAINERS
set firewall ipv4 name video-containers default-action 'accept'
set firewall ipv4 name video-containers description 'From VIDEO to CONTAINERS'
set firewall ipv4 name video-containers rule 40 action 'accept'
set firewall ipv4 name video-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name video-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name video-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name video-containers rule 999 action 'drop'
set firewall ipv4 name video-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name video-containers rule 999 state invalid
set firewall ipv4 name video-containers rule 999 log

# From VIDEO to TRUSTED
set firewall ipv4 name video-trusted default-action 'drop'
set firewall ipv4 name video-trusted description 'From VIDEO to TRUSTED'
set firewall ipv4 name video-trusted default-log
set firewall ipv4 name video-trusted rule 999 action 'drop'
set firewall ipv4 name video-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name video-trusted rule 999 state invalid
set firewall ipv4 name video-trusted rule 999 log

# From VIDEO to WAN
set firewall ipv4 name video-wan default-action 'drop'
set firewall ipv4 name video-wan description 'From VIDEO to WAN'
# From WAN to IOT
set firewall ipv4 name wan-iot default-action 'drop'
set firewall ipv4 name wan-iot description 'From WAN to IOT'
set firewall ipv4 name wan-iot default-log
set firewall ipv4 name wan-iot rule 999 action 'drop'
set firewall ipv4 name wan-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-iot rule 999 state invalid
set firewall ipv4 name wan-iot rule 999 log

# From WAN to LAN
set firewall ipv4 name wan-lan default-action 'drop'
set firewall ipv4 name wan-lan description 'From WAN to LAN'
set firewall ipv4 name wan-lan default-log
set firewall ipv4 name wan-lan rule 999 action 'drop'
set firewall ipv4 name wan-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-lan rule 999 state invalid
set firewall ipv4 name wan-lan rule 999 log

# From WAN to LOCAL
set firewall ipv4 name wan-local default-action 'drop'
set firewall ipv4 name wan-local description 'From WAN to LOCAL'
set firewall ipv4 name wan-local default-log
set firewall ipv4 name wan-local rule 1 action 'drop'
set firewall ipv4 name wan-local rule 1 description 'Rule: drop_invalid'
set firewall ipv4 name wan-local rule 1 state invalid
set firewall ipv4 name wan-local rule 1 log
set firewall ipv4 name wan-local rule 100 action 'accept'
set firewall ipv4 name wan-local rule 100 description 'Rule: accept_wireguard'
set firewall ipv4 name wan-local rule 100 destination port '51820'
set firewall ipv4 name wan-local rule 100 protocol 'udp'

# From WAN to SERVERS
set firewall ipv4 name wan-servers default-action 'drop'
set firewall ipv4 name wan-servers description 'From WAN to SERVERS'
set firewall ipv4 name wan-servers default-log
set firewall ipv4 name wan-servers rule 100 action 'accept'
set firewall ipv4 name wan-servers rule 100 destination port 32400
set firewall ipv4 name wan-servers rule 100 protocol 'tcp'
set firewall ipv4 name wan-servers rule 100 destination address 10.1.1.12
set firewall ipv4 name wan-servers rule 999 action 'drop'
set firewall ipv4 name wan-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-servers rule 999 state invalid
set firewall ipv4 name wan-servers rule 999 log

# From WAN to CONTAINERS
set firewall ipv4 name wan-containers default-action 'drop'
set firewall ipv4 name wan-containers description 'From WAN to CONTAINERS'
set firewall ipv4 name wan-containers default-log
set firewall ipv4 name wan-containers rule 999 action 'drop'
set firewall ipv4 name wan-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-containers rule 999 state invalid
set firewall ipv4 name wan-containers rule 999 log

# From WAN to TRUSTED
set firewall ipv4 name wan-trusted default-action 'drop'
set firewall ipv4 name wan-trusted description 'From WAN to TRUSTED'
set firewall ipv4 name wan-trusted default-log
set firewall ipv4 name wan-trusted rule 999 action 'drop'
set firewall ipv4 name wan-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-trusted rule 999 state invalid
set firewall ipv4 name wan-trusted rule 999 log

# From WAN to VIDEO
set firewall ipv4 name wan-video default-action 'drop'
set firewall ipv4 name wan-video description 'From WAN to VIDEO'
set firewall ipv4 name wan-video default-log
set firewall ipv4 name wan-video rule 999 action 'drop'
set firewall ipv4 name wan-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-video rule 999 state invalid
set firewall ipv4 name wan-video rule 999 log
