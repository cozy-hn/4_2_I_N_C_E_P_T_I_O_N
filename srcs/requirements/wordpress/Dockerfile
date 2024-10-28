FROM debian:bullseye

EXPOSE 9000

COPY script.sh /

RUN apt-get update && \
    apt-get install php7.4-fpm php7.4-mysql curl -y && \
    mkdir -p /var/www/html && \
    chmod +x /script.sh

CMD [ "/script.sh" ]
