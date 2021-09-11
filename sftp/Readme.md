# Setup SFTP Container
## Docker build variables and defaults
* CONTAINER_NAME="sftp"
* PORT=2222
* SFTP_USER="sftp"
* SFTP_PASSWORD=""

## Build and Launch Container
1. Setup required folder structure and generate ssh keys using the bin/setup.sh script.

2. Create docker images using the following:
```
$ docker-compose --env-file [environment-file] up -d
```

3. Add user to the running container.

```
$ docker exec -it "${CONTAINER_NAME}" adduser "${USERNAME}"
```

4. Add public key you want to use to access the container to home/"${USERNAME}"/.ssh/authorized_keys file.
