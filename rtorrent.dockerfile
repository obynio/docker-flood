FROM alpine:latest
MAINTAINER Yohann Leon <yohann@leon.re>

RUN apk add --update rtorrent && mkdir -p /session /watch /data/downloads
COPY rtorrent.rc /root/.rtorrent.rc

# 49164 is for incoming connections from peers
# 6881 is for DHT
EXPOSE 49164 6881
VOLUME ["/data/downloads"]

CMD  ["rtorrent"]