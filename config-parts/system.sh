#!/bin/vbash

set system domain-name 'jahanson.tech'
set system host-name 'gateway'

set system ipv6 disable-forwarding

set system login user vyos authentication public-keys personal key 'AAAAC3NzaC1lZDI1NTE5AAAAIBsUe5YF5z8vGcEYtQX7AAiw2rJygGf2l7xxr8nZZa7w'
set system login user vyos authentication public-keys personal type 'ssh-ed25519'

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

# Sent to vector syslog server
set system syslog host 10.45.0.2 facility kern level 'warning'
set system syslog host 10.45.0.2 facility kern protocol 'tcp'
set system syslog host 10.45.0.2 port '6001'

# Custom backup
set system task-scheduler task backup-config crontab-spec '30 0 * * *'
set system task-scheduler task backup-config executable path '/config/scripts/custom-config-backup.sh'

set system time-zone 'America/Chicago'
