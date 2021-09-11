FROM alpine:latest
LABEL Maintainer="sean bourg <sean.bourg@gmail.com>"

ARG SFTP_UID=1000 \
    &&  SFTP_GID=1000 \
    &&  SFTP_USERNAME=sftp \
    && SFTP_PASSWORD="" 

ENV SFTP_GID="${SFTP_UID}" \
    SFTP_GID="${SFTP_GID}" \
    SFTP_USERNAME="${SFTP_USERNAME}" \
    SFTP_PASSWORD="${SFTP_PASSWORD}"

RUN apk update \
    && apk upgrade \
    && apk add openssh pwgen \
    &&  SFTP_PASSWORD=$([[ -z "${SFTP_PASSWORD}" ]] && echo $(pwgen  -s1 32) || echo "${SFTP_PASSWORD}") \    
    && addgroup -g ${SFTP_GID} ${SFTP_USERNAME} \
    # Use the following line if you want to have a "no login" option
    # && adduser -h /sftp -s /sbin/nologin -G ${SFTP_USERNAME} -D -u ${SFTP_UID} ${SFTP_USERNAME} \
    && adduser -G ${SFTP_USERNAME} -D -u ${SFTP_UID} ${SFTP_USERNAME} \
    && echo "${SFTP_USERNAME}:$SFTP_PASSWORD" | chpasswd  > /dev/null  2>&1 \
    && echo -e '\e[32m******************************************\e[39m' \
    && echo -e "\e[32mCreated SFTP user...\e[39m" \
    && echo -e "\e[32mUsername: ${SFTP_USERNAME}\e[39m" \
    && echo -e "\e[32mPassword: $SFTP_PASSWORD\e[39m" \
    && echo -e "\e[32mUser ID: (${SFTP_UID}) / Group ID: (${SFTP_GID})\e[39m" \
    && echo -e '\e[32m******************************************\e[39m' \
    && unset SFTP_PASSWORD \
    && mkdir -p /sftp \
    && chown -R root:root /sftp \
    && chmod 755 /sftp 
    
EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
