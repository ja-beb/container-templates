FROM alpine:latest
LABEL Maintainer="sean bourg <sean.bourg@gmail.com>"

RUN apk update && apk add openssh

EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
