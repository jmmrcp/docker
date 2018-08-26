FROM alpine

RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl \
  && rm -rf /tmp/* /var/cache/apk/*

EXPOSE 9000/TCP

CMD [ "php-fpm7", "-F" ]