# docker-templates
Docker templates for base NGINX sites.


## SSL Key config.
The docker environment uses a nginx LAMP stack. This requires a self signed certificate to run localy and can be generated using the following commands.

```
$ openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout site.key -out site.crt
$ openssl dhparam -out dhparam.pem 2048
```