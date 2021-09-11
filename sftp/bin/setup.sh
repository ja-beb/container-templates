#!/bin/bash
# Set up local folder structure and create the required key files for docker SFTP image.

# Create folders
mkdir private
mkdir home
mkdir home/.ssh

# Create authorized keys file
touch home/.ssh/authorized_keys

#  Generate server keys
ssh-keygen -t ed25519 -f private/ssh_host-ed25519_key < /dev/null
ssh-keygen -t rsa -b 4096 -f private/ssh_host-rsa_key < /dev/null