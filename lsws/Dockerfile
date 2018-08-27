FROM alpine

ARG VCS_REF
ARG BUILD_DATE

LABEL maintainer "José Martínez <jmmrcp@gmail.com>" \
  org.label-schema.docker.cmd="docker run --rm -it -v webapp:/var/lib/litespeed/Example/html --name www -p 443:443 -p 7080:7080 -p 8088:8088 jmmrcp/lsws:1.4.28"

RUN apk add --no-cache litespeed --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

EXPOSE 443/TCP \
  7080/TCP \
  8088/TCP

VOLUME [ "/etc/litespeed" ] \
  [ "/var/lib/litespeed/Example/html" ]

ADD docker-entrypoint.sh /bin/
ENTRYPOINT ["docker-entrypoint.sh"]