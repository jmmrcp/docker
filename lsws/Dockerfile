FROM alpine:latest

LABEL maintainer "José Martínez <jmmrcp@gmail.com>"

ARG VERSION
ARG VCS_URL
ARG VCS_REF
ARG BUILD_DATE

LABEL org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.vcs-url=$VCS_URL \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.schema-version="1.0" \
  org.label-schema.vendor="Computerwizards" \
  org.label-schema.name="openlitespeed" \
  org.label-schema.description="Docker image with OpenLiteSpeed, and Alpine" \
  org.label-schema.url="htts://computerwizards.es" \
  org.label-schema.docker.schema-version="1.0" \
  org.label-schema.docker.cmd="docker run --rm -dit -v webapp:/var/lib/litespeed/Example/html --name www -p 443:443 -p 7080:7080 -p 8088:8088 lsws:latest"

LABEL "docker_run_flags"="-d --name www \
		-v ~/www:/var/lib/litespeed/Example/html \
		-p 443:443 -p 7080:7080 -p 8088:8088"

RUN apk update && apk upgrade \
  apk add --no-cache litespeed --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

RUN rm -rf /var/cache/apk/*

EXPOSE 443/TCP \
  7080/TCP \
  8088/TCP

VOLUME [ "/etc/litespeed/" ] \
  [ "/var/lib/litespeed/Example/html/" ]

WORKDIR /var/lib/litespeed/

ENTRYPOINT sh /var/lib/litespeed/bin/lswsctrl.open start && /bin/ash