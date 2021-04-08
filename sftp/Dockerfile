FROM alpine:latest
LABEL Maintainer="sean bourg <sean.bourg@gmail.com>"

RUN apk add openssh && \
    apk update && \
    adduser -D sftp

EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
