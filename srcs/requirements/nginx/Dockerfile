FROM debian:bullseye

EXPOSE 443

RUN apt-get update \
&& apt-get install -y nginx openssl \
&& mkdir -p /etc/nginx/ssl \
&& openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/CN=$DOMAIN"

COPY nginx.conf /etc/nginx/

CMD ["nginx", "-g", "daemon off;"]