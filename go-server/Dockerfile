FROM ubuntu
MAINTAINER Scott Likens <scott@likens.us>
ADD policy-rc.d /usr/sbin/policy-rc.d
RUN apt-get update
RUN apt-get install default-jre unzip git-core wget -y
ADD http://download01.thoughtworks.com/go/13.4.0/ga/go-server-13.4.0-18334.deb /tmp/go-server.deb
RUN dpkg -i /tmp/go-server.deb
ADD go-server /etc/default/go-server
ADD start.sh /start.sh
EXPOSE 8154
EXPOSE 8153
CMD /start.sh