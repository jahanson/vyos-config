#!/bin/vbash

set system domain-name 'jahanson.tech'
set system host-name 'treebeard'

set system ipv6 disable-forwarding

set system login user vyos authentication public-keys ios key 'AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBPHFQ3hDjjrKsecn3jmSWYlRXy4IJCrepgU1HaIV5VcmB3mUFmIZ/pCZnPmIG/Gbuqf1PP2FQDmHMX5t0hTYG9A='
set system login user vyos authentication public-keys ios type 'ecdsa-sha2-nistp256'
set system login user vyos authentication public-keys personal key 'AAAAC3NzaC1lZDI1NTE5AAAAIBsUe5YF5z8vGcEYtQX7AAiw2rJygGf2l7xxr8nZZa7w'
set system login user vyos authentication public-keys personal type 'ssh-ed25519'

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

# Custom backup
set system task-scheduler task backup-config crontab-spec '30 0 * * *'
set system task-scheduler task backup-config executable path '/config/scripts/custom-config-backup.sh'

set system time-zone 'America/Chicago'

# Syslog to graylog
set system syslog host 10.1.1.5 facility kern level 'warning'
set system syslog host 10.1.1.5 protocol 'udp'
set system syslog host 10.1.1.5 port '1514'
set system syslog host 10.1.1.5 format 'octet-counted'
