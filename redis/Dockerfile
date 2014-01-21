FROM    ubuntu:latest
MAINTAINER <scott@likens.us>
RUN apt-get update
RUN apt-get install wget build-essential -y
WORKDIR /
RUN wget http://download.redis.io/releases/redis-2.8.4.tar.gz
RUN tar zxf redis-2.8.4.tar.gz
WORKDIR /redis-2.8.4
RUN make
RUN make install
RUN mkdir /etc/redis
RUN mkdir -p /data/
ADD redis.conf /etc/redis/redis.conf
EXPOSE 6379
ENTRYPOINT ["/usr/local/bin/redis-server","/etc/redis/redis.conf"]
VOLUME ["/data/"]
