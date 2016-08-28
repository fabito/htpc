FROM alpine:3.3

MAINTAINER Fábio Franco Uechi <fabio.uechi@gmail.com>

RUN apk add --update \
    bash \
    transmission-daemon \
    && rm -rf /var/cache/apk/*

# [[ "${USERID:-""}" =~ ^[0-9]+$ ]] && usermod -u $USERID -o debian-transmission
# [[ "${GROUPID:-""}" =~ ^[0-9]+$ ]]&& groupmod -g $GROUPID -o debian-transmission

COPY run-transmission.sh .

EXPOSE 9091 51413/tcp 51413/udp

RUN chmod +x /run-transmission.sh
CMD ["/run-transmission.sh"]
