FROM debian:bullseye

COPY script.sh /

RUN chmod +x /script.sh && \
    apt-get update && \
    apt-get install mariadb-server -y && \
    apt-get install mariadb-client -y

CMD ["/script.sh"]
