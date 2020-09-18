FROM alpine:latest
MAINTAINER Chris Impey "chris@impey.io"

ENV VERSION='latest'

RUN apk update \
    && apk add --update openssl curl g++ make \
    && curl http://download.joedog.org/siege/siege-latest.tar.gz > siege.tar.gz \
    && tar -xf siege.tar.gz \
    && cd siege \
    && ./configure --with-ssl=/usr/bin/openssl\
    && make install

#ENTRYPOINT ["siege"]
#CMD ["--help"]