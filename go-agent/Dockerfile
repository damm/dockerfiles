FROM ubuntu
MAINTAINER Scott M. Likens <scott@likens.us>
ADD http://download01.thoughtworks.com/go/13.4.0/ga/go-agent-13.4.0-18334.deb /tmp/go-agent.deb
ADD dependencies.sh /
RUN /dependencies.sh
ADD go-agent /etc/default/go-agent
ADD start.sh /start.sh
CMD /start.sh