# Setup SFTP Container
1. Create .env file in root directory and define the following variables (Note: if password is not set a random password will be generated instead):
	* CONTAINER_NAME=sftp
	* PORT=2222
	* SFTP_UID
	* SFTP_GUID
	* SFTP_USER=user
	* SFTP_PASSWORD=sftp

	

2. Setup required folder structure and generate ssh keys using the bin/setup.sh script.

3. Invoke `docker-compose build && docker-compose up -d`

4. Add public key you want to use to access the container to home/"${SFTP_USER}"/.ssh/authorized_keys file.
