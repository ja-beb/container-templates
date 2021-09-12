#!/bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout etc/ssl/site.key -out etc/ssl/site.crt
openssl dhparam -out etc/ssl/dhparam.pem 2048