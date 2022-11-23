# EC202 cloud-config
hostname: avature-service-2.dns.local
manage_etc_hosts: true
runcmd:

- #TBD depending of Linux based Operating System Image

output : { all : '| tee -a /var/log/cloud-init-output.log' }