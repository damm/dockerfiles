FROM    ubuntu:latest
MAINTAINER Scott M. Likens <scott@likens.us>
RUN apt-get -qq update
RUN apt-get install -y python-dev python-setuptools libxml2-dev libxslt-dev git-core wget make g++
RUN wget http://nodejs.org/dist/v0.10.12/node-v0.10.12.tar.gz -O /tmp/node.tar.gz
RUN (cd /tmp && tar zxf node.tar.gz && cd node-* && ./configure ; make install)
RUN (mkdir -p /opt)
RUN (cd /opt/;git clone https://github.com/fzaninotto/uptime.git siteuptime)
RUN (cd /opt/siteuptime;npm install -g)
RUN (cd /opt/siteuptime;npm install)
ADD default.yaml /opt/siteuptime/config/default.yaml 
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl
WORKDIR /opt/siteuptime
ENTRYPOINT (cd /opt/siteuptime;node monitor.js)
