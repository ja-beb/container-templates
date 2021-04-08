# Generate SSH Server Keys 

To set up the SFTP docker instance first create required folders and host keys.

```
$ mkdir private
$ cd private
$ ssh-keygen -t ed25519 -f ssh_host-ed25519_key < /dev/null
$ ssh-keygen -t rsa -b 4096 -f ssh_host-rsa_key < /dev/null
$ mkdir home
$ mkdir home/.ssh
$ touch home/.ssh/authorized_keys
```

# Create ssh authentication key
Add public key (ppk) to home/.ssh/authorized_keys file.
