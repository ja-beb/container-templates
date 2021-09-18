#!/bin/bash
# Setup enviroment for containers to run. Creates initial file structure and generates SSL keys.

# Create entry point folders:
if [ ! -d entrypoint ]
then
    mkdir entrypoint
    mkdir entrypoint/proxy
    mkdir entrypoint/cdn
    mkdir entrypoint/site
    mkdir entrypoint/database
fi

mkdir private
mkdir var


# Generate keys.
if [ ! -d private/ssl ]
then
    mkdir private/ssl
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout private/ssl/site.key -out private/ssl/site.crt
    openssl dhparam -out private/ssl/dhparam.pem 2048
fi
