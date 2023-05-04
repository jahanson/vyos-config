# Gateway
set system static-host-mapping host-name gateway.jahanson.tech inet 10.1.0.1
set system static-host-mapping host-name gateway.jahanson.tech alias vpn.hsn.dev
set system static-host-mapping host-name gateway.jahanson.tech alias ipv4.hsn.dev

# Unifi controller
set system static-host-mapping host-name unifi inet 10.5.0.10

# 1Password Connect
set system static-host-mapping host-name onepassword-connect.hsn.dev inet 10.5.0.5

# NAS
set system static-host-mapping host-name elessar.jahanson.tech inet 10.1.1.11
set system static-host-mapping host-name elessar.jahanson.tech alias nas.jahanson.tech
set system static-host-mapping host-name elessar.jahanson.tech alias minio.hsn.dev
set system static-host-mapping host-name elessar.jahanson.tech alias s3.hsn.dev

# Home Assistant
set system static-host-mapping host-name homeassistant.jahanson.tech inet 10.1.1.13

# Kubernetes hosts
set system static-host-mapping host-name gandalf.jahanson.tech inet 10.1.1.31
set system static-host-mapping host-name glamdring.jahanson.tech inet 10.1.1.32
set system static-host-mapping host-name shadowfax.jahanson.tech inet 10.1.1.33

# Kubernetes cluster VIP
set system static-host-mapping host-name cluster-0.jahanson.tech inet 10.5.0.2

# Other hosts
set system static-host-mapping host-name sting.jahanson.tech inet 10.1.1.12
set system static-host-mapping host-name frodo.jahanson.tech inet 10.1.1.52
set system static-host-mapping host-name frodo.jahanson.tech alias pikvm.jahanson.tech
set system static-host-mapping host-name nextcloud.jahanson.tech inet 10.1.1.51

set system static-host-mapping host-name driveway-camera-doorbell.jahanson.tech inet 10.1.4.12
set system static-host-mapping host-name hallway-zigbee-adapter.jahanson.tech inet 10.1.3.46
set system static-host-mapping host-name garage-tablet.jahanson.tech inet 10.1.3.54
set system static-host-mapping host-name hallway-tablet.jahanson.tech inet 10.1.3.53
set system static-host-mapping host-name livingroom-vacuum.jahanson.tech inet 10.1.3.18
set system static-host-mapping host-name upstairs-vacuum.jahanson.tech inet 10.1.3.22
