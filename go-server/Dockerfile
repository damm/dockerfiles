FROM ubuntu
MAINTAINER Scott Likens <scott@likens.us>
ADD http://download01.thoughtworks.com/go/13.4.0/ga/go-agent-13.4.0-18334.deb /tmp/go-server.deb
ADD policy-rc.d /usr/sbin/policy-rc.d
ADD dependencies.sh /
RUN /dependencies.sh
ADD go-server /etc/default/go-server
ADD start.sh /start.sh
CMD /start.sh