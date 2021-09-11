#!/bin/bash


mkdir private
mkdir private/ssl

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout private/ssl/site.key -out private/ssl/site.crt
openssl dhparam -out private/ssl/dhparam.pem 2048