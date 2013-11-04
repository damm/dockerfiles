FROM    ubuntu:latest
MAINTAINER <name>
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl
RUN apt-get update
RUN apt-get install mongodb-10gen -y 
RUN mkdir -p /data/db
EXPOSE 27017 28017
ENTRYPOINT taskset -c 1 mongod --auth
VOLUME ["/data"]
