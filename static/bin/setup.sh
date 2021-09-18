#!/bin/bash
# Setup enviroment for containers. Creates base folder stucture and creates keys.
#

# Create folder structure
mkdir var
mkdir private

# Create entrypoint folders.
if [ ! -d private/ssl ]
then
    mkdir entrypoint
    mkdir entrypoint/proxy
    mkdir entrypoint/cdn
    mkdir entrypoint/site
    mkdir entrypoint/database
fi


# If ssl foldeer does not exist create folder and keys.
if [ ! -d private/ssl ]
then
    mkdir private/ssl
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout private/ssl/site.key -out private/ssl/site.crt
    openssl dhparam -out private/ssl/dhparam.pem 2048
fi