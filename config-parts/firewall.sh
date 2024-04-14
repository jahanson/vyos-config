#!/bin/vbash

# General configuration
set firewall global-options state-policy established action 'accept'
set firewall global-options state-policy related action 'accept'
set firewall global-options all-ping 'enable'

# Address Groups
set firewall group address-group router-addresses address 10.0.0.1
set firewall group address-group router-addresses address 127.0.0.1
set firewall group address-group k8s_nodes address '10.1.1.61-10.1.1.63' # master nodes
set firewall group address-group k8s_nodes address '10.1.1.70-10.1.1.79' # worker nodes
set firewall group address-group home_automation address '10.1.1.51-10.1.1.59' # home automation nodes hass/zwave/mqtt etc
set firewall group address-group k8s_api address '10.5.0.2'
set firewall group address-group k8s_ingress address '10.45.0.1' # external nginx
set firewall group address-group k8s_ingress address '10.45.0.3' # internal nginx
set firewall group address-group graylog address '10.1.1.5'
set firewall group address-group nas address '10.1.1.11-10.1.1.12'
set firewall group address-group unifi_devices address '10.1.0.11'
set firewall group address-group unifi_devices address '10.1.0.12'
set firewall group address-group unifi_devices address '10.1.0.13'
set firewall group address-group unifi_devices address '10.1.0.21'
set firewall group address-group unifi_devices address '10.1.0.22'
set firewall group address-group unifi_devices address '10.1.0.23'
set firewall group address-group unifi_devices address '10.1.0.24'
set firewall group address-group vyos_unifi address '10.5.0.10'
set firewall group network-group k8s_services network '10.45.0.0/16'

# Sonos controllers
set firewall group port-group sonos-controller-api port '1400'
set firewall group port-group sonos-controller-discovery port '1900'

set firewall group address-group sonos_controllers address '10.1.2.21' # jahanson laptop
set firewall group address-group sonos_controllers address '10.1.2.22-10.1.2.23' # Elisia's laptop
set firewall group address-group sonos_controllers address '10.1.2.31-10.1.2.37' # iOS devices

# Sonos players
set firewall group port-group sonos-player-discovery port '1900'

set firewall group address-group sonos_players address '10.1.3.71-10.1.3.75'

# Port groups
set firewall group port-group wireguard port '51820'
