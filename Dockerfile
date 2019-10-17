FROM alpine:latest

MAINTAINER Numerica-Latina <webmaster@numerica.cl>

RUN apk --update add bind

EXPOSE 53

COPY files/* /etc/bind/

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
