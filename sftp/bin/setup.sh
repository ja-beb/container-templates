#!/bin/bash
# Set up local folder structure and create the required key files for docker SFTP image.

if [ ! -d sftp ]
then
    mkdir sftp
    mkdir sftp/.ssh

    # Create authorized keys file
    touch sftp/.ssh/authorized_keys
fi

# Create folders
[ ! -d private ] && mkdir private

#  Generate server keys
[ ! -f private/ssh_host-ed25519_key ]  && ssh-keygen -t ed25519 -f private/ssh_host-ed25519_key < /dev/null
[ ! -f private/ssh_host-rsa_key ] && ssh-keygen -t rsa -b 4096 -f private/ssh_host-rsa_key < /dev/null