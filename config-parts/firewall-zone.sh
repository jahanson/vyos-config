#!/bin/vbash

# iot
set firewall zone iot default-action 'drop'
set firewall zone iot from lan firewall name 'lan-iot'
set firewall zone iot from local firewall name 'local-iot'
set firewall zone iot from servers firewall name 'servers-iot'
set firewall zone iot from containers firewall name 'containers-iot'
set firewall zone iot from trusted firewall name 'trusted-iot'
set firewall zone iot from video firewall name 'video-iot'
set firewall zone iot from wan firewall name 'wan-iot'
set firewall zone iot interface 'eth2.30'

# lan
set firewall zone lan default-action 'drop'
set firewall zone lan from iot firewall name 'iot-lan'
set firewall zone lan from local firewall name 'local-lan'
set firewall zone lan from servers firewall name 'servers-lan'
set firewall zone lan from containers firewall name 'containers-lan'
set firewall zone lan from trusted firewall name 'trusted-lan'
set firewall zone lan from video firewall name 'video-lan'
set firewall zone lan from wan firewall name 'wan-lan'
set firewall zone lan interface 'eth2'

# local
set firewall zone local default-action 'drop'
set firewall zone local description 'Local router zone'
set firewall zone local from iot firewall name 'iot-local'
set firewall zone local from lan firewall name 'lan-local'
set firewall zone local from servers firewall name 'servers-local'
set firewall zone local from containers firewall name 'containers-local'
set firewall zone local from trusted firewall name 'trusted-local'
set firewall zone local from video firewall name 'video-local'
set firewall zone local from wan firewall name 'wan-local'
set firewall zone local local-zone

# servers
set firewall zone servers default-action 'drop'
set firewall zone servers from iot firewall name 'iot-servers'
set firewall zone servers from lan firewall name 'lan-servers'
set firewall zone servers from local firewall name 'local-servers'
set firewall zone servers from containers firewall name 'containers-servers'
set firewall zone servers from trusted firewall name 'trusted-servers'
set firewall zone servers from video firewall name 'video-servers'
set firewall zone servers from wan firewall name 'wan-servers'
set firewall zone servers interface 'eth2.10'

# containers
set firewall zone containers default-action 'drop'
set firewall zone containers description 'VyOS containers zone'
set firewall zone containers from iot firewall name 'iot-containers'
set firewall zone containers from lan firewall name 'lan-containers'
set firewall zone containers from local firewall name 'local-containers'
set firewall zone containers from servers firewall name 'servers-containers'
set firewall zone containers from trusted firewall name 'trusted-containers'
set firewall zone containers from video firewall name 'video-containers'
set firewall zone containers from wan firewall name 'wan-containers'
set firewall zone containers interface 'pod-containers'

# trusted
set firewall zone trusted default-action 'drop'
set firewall zone trusted from iot firewall name 'iot-trusted'
set firewall zone trusted from lan firewall name 'lan-trusted'
set firewall zone trusted from local firewall name 'local-trusted'
set firewall zone trusted from servers firewall name 'servers-trusted'
set firewall zone trusted from containers firewall name 'containers-trusted'
set firewall zone trusted from video firewall name 'video-trusted'
set firewall zone trusted from wan firewall name 'wan-trusted'
set firewall zone trusted interface 'eth2.20'

# video
set firewall zone video default-action 'drop'
set firewall zone video from iot firewall name 'iot-video'
set firewall zone video from lan firewall name 'lan-video'
set firewall zone video from local firewall name 'local-video'
set firewall zone video from servers firewall name 'servers-video'
set firewall zone video from containers firewall name 'containers-video'
set firewall zone video from trusted firewall name 'trusted-video'
set firewall zone video from wan firewall name 'wan-video'
set firewall zone video interface 'eth2.40'
set firewall zone wan default-action 'drop'

# wan
set firewall zone wan from iot firewall name 'iot-wan'
set firewall zone wan from lan firewall name 'lan-wan'
set firewall zone wan from local firewall name 'local-wan'
set firewall zone wan from servers firewall name 'servers-wan'
set firewall zone wan from containers firewall name 'containers-wan'
set firewall zone wan from trusted firewall name 'trusted-wan'
set firewall zone wan from video firewall name 'video-wan'
set firewall zone wan interface 'eth3'
