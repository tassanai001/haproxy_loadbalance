FROM haproxy:1.7
MAINTAINER BIG ART
EXPOSE 80

RUN echo "Asia/Bangkok" > /etc/timezone
RUN echo "Asia/Bangkok" > /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata

ENV CONFIGPATH ./config
COPY $CONFIGPATH /usr/local/etc/haproxy/haproxy.cfg