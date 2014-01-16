FROM galera/golden
MAINTAINER Scott Likens <scott@likens.us>
ADD ./policy-rc.d /usr/sbin/
RUN DEBIAN_FRONTEND=noninteractive apt-get install percona-xtradb-cluster-garbd-3.x -y

ADD ./bin /mysql/bin
RUN mkdir -p /mysql/db
RUN mkdir -p /mysql/logs
RUN mkdir -p /mysql/config

EXPOSE 3306
EXPOSE 4567
VOLUME ["/mysql/db", "/mysql/logs", "/mysql/config"]
CMD ["/mysql/bin/run"]
