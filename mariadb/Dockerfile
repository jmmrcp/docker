FROM alpine

ENV LC_ALL=es_ES.UTF-8

RUN apk add --no-cache mariadb mariadb-client && \
  apk add --no-cache tzdata && \
  rm -rf /var/cache/apk/*

LABEL org.label-schema.docker.cmd="docker run --rm -tdi -v dbdata:/var/lib/mysql --name dbserver -e MYSQL_ROOT_PASSWORD=password -p 3360:3360 jmmrcp/mariadb"

VOLUME ["/var/lib/mysql"]

EXPOSE 3306/TCP

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld_safe"]
