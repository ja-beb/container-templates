# LAMP Stack
Docker templates for a simple dynamic site using NGINX, PHP-FPM, and MariaDB. 

## Setup
1. To create the base file structure and generate SSL keys use the `bin\setup.sh` script included.
2. Add the following entries to the system's host file(or update the nginx config files for the base addresses you wish to use):
	* 127.0.0.1 site.localhost cdn.localhost
	* ::1 site.localhost cdn.localhost

# Docker & Firewalld
If internal networks are blocked by firewalld update the configuration to change the backend from nftables to iptables. Once complete restart both firewalld and docker. This can be done with the following commands:

```
$ sudo sed -i 's/FirewallBackend=nftables/
$ sudo systemctl restart firewalld docker
```

